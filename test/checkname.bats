#!/usr/bin/env bats

@test "checkname funca" {
   run ../bin/lzt --dir data/zdf checkname func1a
   [ "$status" -eq 1 ]
   [ "$output" = 'Error: "func1a" exists in module "mod1".' ]
}

@test "checkname xyz" {
   run ../bin/lzt --dir data/zdf checkname anewfunc
   [ "$status" -eq 0 ]
   [ "$output" = 'No function with the name "anewfunc".' ]
}

@test "checkname req error" {
   run ../bin/lzt --dir data/zdf checkname
   [ "$status" -eq 1 ]
   [ "$output" = "Error: checkname requires one parameter 'name'." ]
}
