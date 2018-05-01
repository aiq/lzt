#!/usr/bin/env bats

@test "init with no parameter" {
   run ../bin/lzt --dir data/zdf init
   [ "$status" -eq 1 ]
   [ "$output" = "Error: init requires the parameter 'name'." ]
}

@test "init with just one parameter" {
   run ../bin/lzt --dir data/zdf init func1a
   [ "$status" -eq 1 ]
   [ "$output" = "Error: init requires the parameter 'module'." ]
}

@test "init with used name" {
   run ../bin/lzt --dir data/zdf init func1a mod2
   [ "$status" -eq 1 ]
   [ "$output" = 'Error: "func1a" exists in module "mod1".' ]
}

@test "init with invalid module name" {
   run ../bin/lzt --dir data/zdf init anewfunc unknown
   [ "$status" -eq 1 ]
   [ "$output" = 'Error: "unknown" is not a valid module.' ]
}

@test "init successfully" {
   skip
}
