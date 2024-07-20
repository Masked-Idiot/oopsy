package = "oopsy"
version = "dev-1"
source = {
   url = "https://github.com/masked-idiot/oopsy"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "GPL-3.0 license"
}
build = {
   type = "builtin",
   modules = {
      oopsy = "oopsy.lua",
      main = "main.lua"
   }
}
