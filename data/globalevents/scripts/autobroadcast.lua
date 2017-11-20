-- 

function onThink(interval, lastExecution)
	local messages = {
	
	
	
	"[COMMANDS]  !autoloot - !bless - !checkvip - !buypremmy - !aol - !buyhouse - !todos - !sellhouse - !serverinfo - !online - !uptime - !exp - !outfit .",
	"[BUGS]: Reportar bugs con god o en http://www.facebook.com/durosot."
	}

    Game.broadcastMessage(messages[math.random(#messages)], MESSAGE_EVENT_ADVANCE) 
    return true
end

