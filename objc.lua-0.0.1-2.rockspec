-- This file was automatically generated for the LuaDist project.

package = "objc.lua"
version = "0.0.1-2"
-- LuaDist source
source = {
  tag = "0.0.1-2",
  url = "git://github.com/LuaDist-testing/objc.lua.git"
}
-- Original source
-- source = {
--    url = "git+https://github.com/lukaskollmer/objc.lua.git"
-- }
description = {
   summary = "Lua ⇆ Objective-C bridge (experimental)",
   homepage = "https://github.com/lukaskollmer/objc.lua",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      objc = "objc/init.lua",
      ["objc.ffi-defs"] = "objc/ffi-defs.lua",
      ["objc.utils"] = "objc/utils.lua"
   }
}