require("tool")

function fight()
	local n=0 local i=0
--	local victoryCount = 0
--  local defeatCount = 0
	while n < 600 do
		if i <=1 and ready() then i=0 n=0
		elseif i<=2 and fighting() then i=0 n=0 clickMaster()
		elseif i<=3 and win() then i=0 n=0 --victoryCount=victoryCount+1 hideHUD(id)
		elseif i<=3 and failed() then i=0 n=0 --defeatCount=defeatCount+1 hideHUD(id)
		elseif i<=4 and continue() then i=0 n=0
		elseif i<=5 and clickSoloStart() then i=0 n=0
		elseif i<=5 and clickTeamStart() then i=0 n=0
		else n=n+1 mSleep(300)
		end
	end
	return false
end

id = createHUD()
showPerHUD("欢迎使用阴阳师辅助")
fight()

