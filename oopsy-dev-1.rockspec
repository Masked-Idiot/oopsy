package = "oopsy"
version = "dev-1"
source = {
   url = "https://github.com/masked-idiot/oopsy"
}
description = {
   homepage = "https://github.com/masked-idiot/oopsy",
   license = "GPL-3.0 license"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      oopsy = "oopsy.lua",
      main = "main.lua"
   }
}
