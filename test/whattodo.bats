#!/usr/bin/env bats

@test "whattodo" {
   run ../bin/lzt --dir data/zdf whattodo
   [ "$status" -eq 0 ]
   [ "${lines[0]}" = "todos:" ]
   [ "${lines[1]}" = "func1b -> ex1" ]
   [ "${lines[2]}" = "func1c -> lua ex1 adoc" ]
   [ "${lines[3]}" = "func2ax -> adoc" ]
   [ "${lines[4]}" = "func2baxz -> ex1 adoc" ]
   [ "${lines[5]}" = "func2y -> lua ex1 adoc" ]
   [ "${lines[6]}" = "xyz -> lua ex1 adoc" ]
}
