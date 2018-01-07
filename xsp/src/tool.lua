function touch(x, y)
	local x1 = x + math.random(-20,20)
	local y1 = y + math.random(-20,20)
	touchDown(1,x1,y1)
	mSleep(120)
	touchUp(1,x1,y1)
end

function showPerHUD(t)
	showHUD(id,t,35,"0xffd6c4a1","0x5026151a",0,350,30,400,50) 
end

function ready()
	local x, y = findColor({1732, 1120, 1996, 1481}, 
		"0|0|0xd3ae7b,1|-96|0xffffbb,8|119|0xffffc4,21|160|0x52453d",
		95, 0, 0, 1)
	if x > -1 then
		touch(x, y)
--		showPerHUD("胜利"..victoryCount.."次，失败"..defeatCount.."次")
		return true
	end
	return false
end

function fighting()
	x, y = findColor({982, 703, 1087, 854}, 
		"0|0|0xe0be8b,16|26|0x7c6f59,35|-9|0x272420,36|-20|0x272420",
		95, 0, 0, 0)
	if x > -1 then
		return true
	end
	return false
end

function clickMaster()
	touch(1589,494)
	mSleep(300)
end

function win()
	local x, y = findColor({659, 190, 908, 491}, 
		"0|0|0xcebeaa,1|-39|0x831a11,-106|-38|0xc2ae98,164|7|0x4c381e",
		95, 0, 0, 1)
	if x > -1 then
		touch(x, y)
		return true
	end
	return false
end

function continue()
	x, y = findColor({943, 929, 1101, 1123}, 
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
	x, y = findColor({1422, 918, 1636, 1052}, 
		"0|0|0xf3b25e,-39|5|0x2e2922,61|6|0xf3b25e,90|-37|0x95392e",
		95, 0, 0, 0)
	if x > -1 then
		touch(x, y)
		mSleep(50)
		return true
	end
	return false
end

function failed()
	x, y = findColor({650, 199, 825, 362}, 
		"0|0|0xb8a690,24|20|0x524b5c,-52|17|0x5e5468",
		95, 0, 0, 0)
	if x > -1 then
		touch(x, y)
		return true
	end
	return false
end
