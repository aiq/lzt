package = "lzt"
version = "scm-0"

description = {
   summary = "command-line tool to work with a luazdf repository",
   license = "MIT",
   homepage = "https://github.com/aiq/lzt"
}

source = {
   url = "..."
}

dependencies = {
   "lua >= 5.1",
   "luafilesystem",
   "lustache"
}

build = {
   type = "builtin",
   modules = {},
   install = {
      bin = {
         [ "lzt" ] = "bin/lzt"
      }
   }
}
