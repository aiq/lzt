#!/usr/bin/env bats

@test "whattodo" {
   run ../bin/lzt --dir data/zdf whattodo
   [ "$status" -eq 0 ]
   [ "${lines[0]}" = "func1b -> ex1" ]
   [ "${lines[1]}" = "func1c -> lua ex1 adoc" ]
   [ "${lines[2]}" = "func2ax -> adoc" ]
   [ "${lines[3]}" = "func2baxz -> ex1 adoc" ]
   [ "${lines[4]}" = "func2y -> lua ex1 adoc" ]
}
