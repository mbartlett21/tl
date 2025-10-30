#!/usr/bin/env lua

local file_to_content = setmetatable({}, {
   __index = function(self, k)
      local f = io.open(k, "rb")
      if not f then
         self[k] = false
         return false
      end
      local content = assert(f:read("*a"))
      assert(f:close())
      self[k] = content
      return content
   end,
})

local tl_files = {
   "precompiler.tl",
   "tl.tl",
}
for item in io.popen('find teal -type f -name "*.tl" | grep -v d.tl'):lines() do
   table.insert(tl_files, item)
end
for item in io.popen('find tlcli -type f -name "*.tl" | grep -v d.tl'):lines() do
   table.insert(tl_files, item)
end

local function find_deptl(v)
   local a = v:gsub("%.", "/")
   if file_to_content[a..".tl"] then
      return a..".tl"
   elseif file_to_content[a..".d.tl"] then
      return a..".d.tl"
   elseif file_to_content[a.."/init.tl"] then
      return a.."/init.tl"
   end
end

local function scan_dependencies(tlfile, cat, skipped, done)
   local content = assert(file_to_content[tlfile])

   -- all the requires in teal.* are this syntax
   for requirement in content:gmatch([[ require%("([^"]+)"%)]]) do
      local deptl = find_deptl(requirement)
      if not done[deptl] then
         done[deptl] = true
         if not skipped[deptl] then table.insert(cat, deptl) end
         scan_dependencies(deptl, cat, skipped, done)
      end
   end
end

local new_section = {}

-- we use the #:## to replace that section of the Makefile
table.insert(new_section, [[
#:######################################
# GENERATED SECTION START
# extras/update_make_deps.lua
########################################
]])

for _, tl_file in ipairs(tl_files) do
   local deps = {}
   local done = {}
   local skipped = { [tl_file] = true }

   scan_dependencies(tl_file, deps, skipped, done)
   table.sort(deps)
   table.insert(deps, "$(PRECOMPILED)")

   local outname_1 = "_temp/"..tl_file:gsub("%.tl$", ".lua.1")
   local outname_2 = "_temp/"..tl_file:gsub("%.tl$", ".lua.2")
   local dirname = ("_temp/"..tl_file):match("(.*)/")

   -- Work out the dependencies of each module.
   table.insert(new_section, "\n"..outname_1..": "..tl_file.." "..table.concat(deps, " "))
   table.insert(new_section, "\n\t@mkdir -p "..dirname..";echo "..tl_file.." >>_temp/list1;echo "..outname_1.." >>_temp/list1.1;touch "..outname_1)
   table.insert(new_section, "\n"..outname_2..": "..tl_file.." "..table.concat(deps, " "))
   table.insert(new_section, "\n\t@mkdir -p "..dirname..";echo "..tl_file.." >>_temp/list2;touch "..outname_2)
   table.insert(new_section, "\n")
end

table.insert(new_section, [[

########################################
# GENERATED SECTION END
######################################:#]])

local newcontent = table.concat(new_section)

local oldmakecontent = file_to_content["Makefile"]
local newmakecontent, n = oldmakecontent:gsub("#:##.-##:#", newcontent)
if n ~= 1 then
   error("Generated section could not be found to replace it")
end

local f = assert(io.open("Makefile", "wb"))
assert(f:write(newmakecontent))
assert(f:close())

print("Makefile has been updated")
