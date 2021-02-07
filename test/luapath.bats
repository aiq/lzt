#!/usr/bin/env bats

@test "luapath xyz error" {
   run ../bin/lzt --dir data/zdf luapath xyz
   [ "$status" -eq 1 ]
   [ "$output" = "Error: luapath does not support additional parameter" ]
}
