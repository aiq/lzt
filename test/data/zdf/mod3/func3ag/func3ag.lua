local g = "g"

--ZFUNC-func1a-v1
local function func1a()
   return "a"
end

--ZFUNC-func3ag-v1
local function func3ag()
   return func1a()..g
end

return func3ag
