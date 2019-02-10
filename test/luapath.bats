#!/usr/bin/env bats

@test "luapath" {
	run ../bin/lzt --dir data/zdf luapath
	[ "$status" -eq 0 ]
   [ "${lines[0]}" = 'LUAZDF_MOD1="data/zdf/mod1/?/?.lua"' ]
   [ "${lines[1]}" = 'LUAZDF_MOD2="data/zdf/mod2/?/?.lua"' ]
   [ "${lines[2]}" = 'LUAZDF_MOD3="data/zdf/mod3/?/?.lua"' ]
   [ "${lines[3]}" = 'export LUA_PATH="$LUAZDF_MOD1;$LUAZDF_MOD2;$LUAZDF_MOD3;;"' ]
}

@test "luapath xyz error" {
   run ../bin/lzt --dir data/zdf luapath xyz
   [ "$status" -eq 1 ]
   [ "$output" = "Error: luapath does not support additional parameter" ]
}
