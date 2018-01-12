require("tool")

function clickMaster()
	touch(1061,487)
end

function isClick()
	x, y = findColor({867, 586, 1184, 946}, 
		"0|0|0x272420,-7|83|0xe9c991,5|-143|0xd4b99a,61|205|0x901609",
		95, 0, 0, 0)
	if x > -1 then
		return true
	end
	return false
end

function start()
  local n=0 
  while n < 2400 do
    if isClick() then clickMaster() n=0
    else n=n+1 mSleep(100)
    end
  end
  return false
end

--print("阴界之门")
id = createHUD()
showPerHUD("欢迎使用阴阳师辅助")
start()