require("tool")
local bb = require("badboy")

local yhtimes=tonumber(results["yhtimes"])
local victoryCount = 0
local defeatCount = 0
function fight()
	local n=0 local i=0
	while n < 360 do	
		if i<=1 and win() then i=2 n=0 
					victoryCount=victoryCount+1 showPerHUD("胜利"..victoryCount.."次，失败"..defeatCount.."次")
		elseif i<=1 and failed() then i=2 n=0 
					defeatCount=defeatCount+1 showPerHUD("胜利"..victoryCount.."次，失败"..defeatCount.."次")
		elseif i <=2 and ready() then i=0 n=0
		elseif i<=3 and fighting() then i=0 n=0 clickMaster()		
		elseif i<=4 and continue() then i=0 n=0
		elseif i<=4 and clickSoloStart() then i=0 n=0
		elseif i<=4 and clickTeamStart() then i=0 n=0 
		elseif i<=5 and yhtimes == victoryCount + defeatCount then return false
		else n=n+1 mSleep(500)
		end
	end
	return false
end

function ready()
	local x, y = findColor({1743, 1134, 2020, 1482}, 
		"0|0|0xc5a16f,-1|84|0xeac687,114|19|0xdca66a,124|127|0x871207,-79|127|0x444441,23|148|0x554f49",
		95, 0, 0, 0)
	if x > -1 then
		touch(x, y)
		return true
	end
	return false
end

function fighting()
	local x, y = findColor({982, 703, 1087, 854},
		"0|0|0xe0be8b,16|26|0x7c6f59,35|-9|0x272420,36|-20|0x272420",
		95, 0, 0, 0)
	if x > -1 then
		return true
	end
	return false
end

function clickMaster()
	touch(1589,494)
	mSleep(500)
end

function win()
	local x, y = findColor({574, 137, 997, 488}, 
		"0|0|0xcfbfab,-35|12|0x991b12,42|14|0x931b0f,142|-11|0x51100b,36|-114|0xd23e2e,13|-72|0x75160f,-117|-48|0x681d14",
		95, 0, 0, 0)
	if x > -1 then
		touch(x, y)
		return true
	end
	return false
end

function failed()
	local x, y = findColor({650, 199, 825, 362},
		"0|0|0xb8a690,24|20|0x524b5c,-52|17|0x5e5468",
		95, 0, 0, 0)
	if x > -1 then
		touch(x, y)
		return true
	end
	return false
end

function continue()
	local x, y = findColor({943, 929, 1101, 1123},
		"0|0|0x2d1814,-51|-69|0x5ec7ec,72|-13|0xba401c",
		95, 0, 0, 1)
	if x > -1 then
		touch(x, y)
		return true
	end
	return false
end

function clickTeamStart()
	local x, y = findColor({1518, 1096, 1833, 1218},
		"0|0|0xf3b25e,-88|-3|0xf0b05d,-137|-4|0xb05e32,146|-2|0xc3bab1",
		95, 0, 0, 1)
	if x > -1 then
		touch(x, y)
		mSleep(50)
		return true
	end
	return false
end

function clickSoloStart()
	local x, y = findColor({1422, 918, 1636, 1052},
		"0|0|0xf3b25e,-39|5|0x2e2922,61|6|0xf3b25e,90|-37|0x95392e",
		95, 0, 0, 0)
	if x > -1 then
		touch(x, y)
		mSleep(50)
		return true
	end
	return false
end

id = createHUD()
showPerHUD("欢迎使用阴阳师辅助")
fight()


