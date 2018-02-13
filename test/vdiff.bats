#!/usr/bin/env bats

@test "vdiff check" {
   run ../bin/lzt --dir data/zdf vdiff data/vdiff.1.lua
   [ "${status}" -eq 0 ]
   [ "${lines[ 0]}" = '"func2y" -> repo: 2 code: 1' ]
   [ "${lines[ 1]}" = '"unknownfunction" does not exist in the repo' ]
}
