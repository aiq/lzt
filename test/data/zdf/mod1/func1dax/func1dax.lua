--ZFUNC-func1dax-v1
local function func1dax()
   --ZFUNC-func2ax-v1
   local function func2ax()
      --ZFUNC-func1a-v1
      local function func1a()
         return "a"
      end
      return func1a().."x"
   end
   return "d"..func2ax()
end

return func1dax
