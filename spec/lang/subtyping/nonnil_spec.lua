local util = require("spec.util")

describe("subtyping of nil:", function()

   it("nil <!: function!", util.check_type_error([[
      local f: integer! = 3

      f = nil
   ]], {
      { y = 3, msg = "type integer! doesn't include nil" },
   }))
end)
