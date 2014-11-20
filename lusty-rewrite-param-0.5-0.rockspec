package = "lusty-rewrite-param"
version = "0.5-0"
source = {
  url = "https://github.com/Olivine-Labs/lusty-rewrite-param/archive/v0.5.tar.gz",
  dir = "lusty-rewrite-param-0.5"
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
  "lusty >= 0.2-0",
  "busted >= 1.7-1"
}
build = {
  type = "builtin",
  modules = {
    ["lusty-rewrite-param.rewrite.header"]      = "lusty-rewrite-param/rewrite/header.lua",
    ["lusty-rewrite-param.rewrite.method"]      = "lusty-rewrite-param/rewrite/method.lua",
    ["lusty-rewrite-param.rewrite.body"]        = "lusty-rewrite-param/rewrite/body.lua",
  }
}
