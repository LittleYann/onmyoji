function touch(x, y)
  local x1 = x + math.random(-20,20)
  local y1 = y + math.random(-20,20)
  touchDown(1,x1,y1)
  mSleep(120+math.random(-10,10))
  touchUp(1,x1,y1)
end

function showPerHUD(t)
  showHUD(id,t,35,"0xffd6c4a1","0x5026151a",0,350,30,400,50) 
end

function sendEmail(msg)
	bb.loadluasocket()
	local smtp = bb.smtp
	from = '<>'
	rcpt = {
		'<>',
	}
	mesgt = {
		headers = {
			to = '', 
			cc = '', 
			subject = "阴阳师辅助"
		},
		body = msg
	}
	r, e = smtp.send{
		server = "smtp.mxhichina.com", 
		user = "",
		password = "",  
		from = from,
		rcpt = rcpt,
		source = smtp.message(mesgt)
	}
end













