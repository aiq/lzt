--ZFUNC-func2baxz-v1
local function func2baxz()
   --ZFUNC-func1b-v1
   local function func1b()
      return "b"
   end
   --ZFUNC-func2ax-v1
   local function func2ax()
      --ZFUNC-func1a-v1
      local function func1a()
         return "a"
      end
      return func1a().."x"
   end
   return func1b()..func2ax().."z"
end

return func2z
