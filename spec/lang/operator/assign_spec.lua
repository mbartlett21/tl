local util = require("spec.util")

describe("assign", function()
   it("can be used on simple variables", util.gen([[
      local a: number = 5.0
      a += 5
   ]], [[
      local a = 5.0
      a = a + 5
   ]]))
   it("can be used on simple variables", util.gen([[
      local a: string = "test"
      a ..= 5
   ]], [[
      local a = "test"
      a = a .. 5
   ]]))
   it("can be used on simple variables", util.gen([[
      local a: number = 5.0
      a -= 5
   ]], [[
      local a = 5.0
      a = a - 5
   ]]))
   it("can be used on simple variables", util.gen([[
      local a: number = 5.0
      a *= 5
   ]], [[
      local a = 5.0
      a = a * 5
   ]]))
   it("can be used on simple variables", util.gen([[
      local a: number = 5.0
      a /= 5
   ]], [[
      local a = 5.0
      a = a / 5
   ]]))
   it("can be used on simple variables", util.gen([[
      local a: number = 5.0
      a //= 5
   ]], [[
      local a = 5.0
      a = a // 5
   ]]))
   it("can be used on simple variables", util.gen([[
      local a: number = 5.0
      a ^= 5
   ]], [[
      local a = 5.0
      a = a ^ 5
   ]]))
   it("can be used on simple variables", util.gen([[
      local a: number = 5.0
      a %= 5
   ]], [[
      local a = 5.0
      a = a % 5
   ]]))

   it("works with indexing", util.gen([[
      local map: {string:string} = { test = "test" }
      map.test ..= "t"
      map["test"] ..= "t"

      local mapn: {number:number} = { [5.3] = 7 }
      mapn[5.3] += 4

      local arr: {number} = { 3, 5.7 }
      arr[1] -= 4
      arr[2] %= 3.0
   ]], [[
      local map = { test = "test" }
      map.test = map.test .. "t"
      map["test"] = map["test"] .. "t"

      local mapn = { [5.3] = 7 }
      mapn[5.3] = mapn[5.3] + 4

      local arr = { 3, 5.7 }
      arr[1] = arr[1] - 4
      arr[2] = arr[2] % 3.0
   ]]))

   it("works with indexing", util.gen([[
      local map: {string:string} = { test = "test" }
      map.test ..= "t"
   ]], [[
      local map = { test = "test" }
      map.test = map.test .. "t"
   ]]))

   pending("works with complex indices", util.gen([[
      local map: {string:number} = { test = 3.2 }
      local a = "te"
      map[a .. "st"] /= 5
   ]], [[
      local map = { test = 3.2 }
      local a = "te"
      do local _tl_idx = a .. "st" map[_tl_idx] = map[_tl_idx] / 5 end
   ]]))

   pending("works with complex expressions and indices", util.gen([[
      local map: {string:{string:number}} = { map = { test = 3.2 } }
      local a = "te"
      map.map[a .. "st"] /= 5
   ]], [[
      local map = { map = { test = 3.2 } }
      local a = "te"
      do local _tl_tbl = map.map local _tl_idx = a .. "st" _tl_tbl[_tl_idx] = _tl_tbl[_tl_idx] / 5 end
   ]]))

   pending("works with complex expressions", util.gen([[
      local map: {string:{string:number}} = { map = { test = 3.2 } }
      map.map.test /= 5
   ]], [[
      local map = { map = { test = 3.2 } }
      do local _tl_tbl = map.map _tl_tbl.test = _tl_tbl.test / 5 end
   ]]))
end)
