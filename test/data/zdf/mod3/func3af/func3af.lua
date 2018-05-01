--ZFUNC-func1a-v1
local function func1a()
   return "a"
end

--ZFUNC-func3af-v1
local function func3af()
   return func1a().."f"
end

return func3af
