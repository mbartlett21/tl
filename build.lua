#!/usr/bin/env lua
local argparse = require'argparse'
local ltn12 = require'ltn12'

local parser = argparse("lua build.lua", "tl builder")

parser:option("--flags", "Additional flags for 'tl gen'")
      :argname("<flags>")
      :count("*")
      :default({})

local args = parser:parse()

local cpl_flags = table.concat(args.flags, ' ')

print(('flags: \'%s\''):format(cpl_flags))

local is_windows = (os.getenv('OS') or ''):find('[Ww]indows')

if is_windows then
   os.execute('chcp 65001 > NUL')
end

-- local copy_cmd = is_windows and 'copy ' or 'cp '

local function copy(fr, to)
   ltn12.pump.all(ltn12.source.file(io.open(fr, 'rb')), ltn12.sink.file(io.open(to, 'wb')))
   -- os.execute(copy_cmd .. fr .. ' ' .. to)
end

copy('tl.lua', 'tl.lua.bak')

local function do_gen(flags, bak_file, stage_name, stage_loc)
   if flags ~= '' then
      stage_name = ('%-12s (with flags)'):format(stage_name)
   end
   if stage_loc then
      stage_name = ('%-12s (with tl from %s)'):format(stage_name, stage_loc)
   end
   print('building ' .. stage_name)
   if os.execute('lua ./tl gen -q --check ' .. flags .. ' tl.tl') then
      print('    done ' .. stage_name)
      copy('tl.lua', bak_file)
   else
      -- restore back and tell which stage it failed at.
      copy('tl.lua', bak_file) -- may or may not be generated, but we back it up
      copy('tl.lua.bak', 'tl.lua')
      error(stage_name .. ' failed')
   end
end

-- no flags for initial run since it might not support them
do_gen(       '', './tl.lua.1', 'first stage',  './tl.lua')
do_gen(cpl_flags, './tl.lua.2', 'second stage', './tl.lua.1')
do_gen(cpl_flags, './tl.lua.3', 'third stage',  './tl.lua.2')
-- for generated stuff we need to do it three times to get the full compile

print('diffing:')
assert(os.execute('git diff --no-index tl.lua.2 tl.lua.3'))

print('testing:')
assert(os.execute('busted --suppress-pending'))
