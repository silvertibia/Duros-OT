function onLogin(cid)
local vip = isVip(cid)
if getVipTime(cid) > 0  and vip == FALSE then
	local townid = 1
	doPlayerSetTown(cid, townid)
	local templePos = getTownTemplePosition(getPlayerTown(cid))
	doTeleportThing(cid, templePos, false)
	setVipTime(cid, 0)
	doTeleportPlayers(cid, templePos)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sua Vip acabou!")
elseif vip == TRUE then
	local duration = getVipDate(cid)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voc� possui "..getVipDays(cid).." dia(s) de vip."..(duration and (" Ela ir� durar at� "..duration..".") or ""))
end
return TRUE
end