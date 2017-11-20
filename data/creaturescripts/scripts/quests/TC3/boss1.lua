local bosses = {

	['an observer eye'] = 20110

}
function onKill(player, target)
	local targetMonster = target:getMonster()
	if not targetMonster then
		return true
	end

	local targetName = targetMonster:getName():lower()
	local bossStorage = bosses[targetName]
	if not bossStorage then
		return true
	end

	local newValue = 2

	Game.setStorageValue(bossStorage, newValue)

	if newValue == 2 then
		player:say('tienes 10 minutos para ir por tu premio', TALKTYPE_MONSTER_SAY)
		addEvent(Game.setStorageValue, 10 * 60 * 1000, bossStorage, 0)
	end
	return true
end