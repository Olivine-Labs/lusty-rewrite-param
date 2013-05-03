package = "lusty-rewrite-param"
version = "0.1-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-rewrite-param/v0.1.tar.gz",
  dir = "lusty-rewrite-param"
}
description = {
  summary = "HTTP param rewrites for lusty.",
  detailed = [[
  ]],
  homepage = "http://olivinelabs.com/lusty/",
  license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
  "lua >= 5.1",
  "lusty >= 0.1-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-rewrite-param.rewrite.method"]      = "src/rewrite/method.lua",
    ["lusty-rewrite-param.rewrite.body"]        = "src/rewrite/body.lua",
    ["lusty-rewrite-param.rewrite.content-type"]= "src/rewrite/content-type.lua"
  }
}
