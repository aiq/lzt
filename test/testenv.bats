#!/usr/bin/env bats

@test "testenv for all" {
   run ../bin/lzt --dir data/zdf/ testenv
   [ "$status" -eq 0 ]
   [ "${lines[0]}" = 'lua "data/zdf/mod1/func1a/func1a.ex1.lua" > func1a.ex1.tap' ]
   [ "${lines[1]}" = 'lua "data/zdf/mod1/func1b/func1b.ex1.lua" > func1b.ex1.tap' ]
   [ "${lines[2]}" = 'lua "data/zdf/mod1/func1c/func1c.ex1.lua" > func1c.ex1.tap' ]
   [ "${lines[3]}" = 'lua "data/zdf/mod1/func1dax/func1dax.ex1.lua" > func1dax.ex1.tap' ]
   [ "${lines[4]}" = 'lua "data/zdf/mod1/func1dax/func1dax.ex2.lua" > func1dax.ex2.tap' ]
   [ "${lines[5]}" = 'lua "data/zdf/mod2/func2ax/func2ax.ex1.lua" > func2ax.ex1.tap' ]
   [ "${lines[6]}" = 'lua "data/zdf/mod2/func2baxz/func2baxz.ex1.lua" > func2baxz.ex1.tap' ]
   [ "${lines[7]}" = 'lua "data/zdf/mod2/func2y/func2y.ex1.lua" > func2y.ex1.tap' ]
}

@test "testenv --with" {
   run ../bin/lzt --dir data/zdf/ testenv --with func2y func1a func2baxz
   [ "$status" -eq 0 ]
   [ "${lines[0]}" = 'lua "data/zdf/mod1/func1a/func1a.ex1.lua" > func1a.ex1.tap' ]
   [ "${lines[1]}" = 'lua "data/zdf/mod2/func2baxz/func2baxz.ex1.lua" > func2baxz.ex1.tap' ]
   [ "${lines[2]}" = 'lua "data/zdf/mod2/func2y/func2y.ex1.lua" > func2y.ex1.tap' ]
}

@test "testenv --appear" {
   run ../bin/lzt --dir data/zdf/ testenv --appear func1a
   [ "$status" -eq 0 ]
   [ "${lines[0]}" = 'lua "data/zdf/mod1/func1a/func1a.ex1.lua" > func1a.ex1.tap' ]
   [ "${lines[1]}" = 'lua "data/zdf/mod1/func1dax/func1dax.ex1.lua" > func1dax.ex1.tap' ]
   [ "${lines[2]}" = 'lua "data/zdf/mod1/func1dax/func1dax.ex2.lua" > func1dax.ex2.tap' ]
   [ "${lines[3]}" = 'lua "data/zdf/mod2/func2ax/func2ax.ex1.lua" > func2ax.ex1.tap' ]
   [ "${lines[4]}" = 'lua "data/zdf/mod2/func2baxz/func2baxz.ex1.lua" > func2baxz.ex1.tap' ]
}
