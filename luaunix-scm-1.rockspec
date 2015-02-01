package = "luaunix"
version = "scm-1"
source = {
   url = "git://github.com/mbalmer/luaunix"
}
description = {
   summary = "Unix bindings for Lua",
   homepage = "http://github.com/mbalmer/luaunix",
   license = "3-clause BSD",
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
external_dependencies = {
   BSD = {
      header = "bsd/bsd.h",
      library = "bsd"
   }
}
build = {
   type = "builtin",
   modules = {
      unix = {
         sources = {"select.c", "luaunix.c"},
         libraries = {"bsd"},
         incdirs = {"$(BSD_INCDIR)"},
         libdirs = {"$(BSD_LIBDIR)"}
      }
   }
}
