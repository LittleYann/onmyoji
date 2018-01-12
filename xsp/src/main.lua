init("0", 1)
ret,results = showUI("ui.json")
if ret == 0 then lua_exit() end
if results["fun"]=="0" then require("yh") 
elseif results["fun"]=="1" then require("yyzm") 
else lua_exit() end