local teleports = {

	[2720] = {text = 'Felicidades terminaste TC3', bossStorage = 20110, newPos = Position(28896, 29829, 7), storage = 2}, -- from reward
	

}

function onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local teleport = teleports[item.uid]
	if teleport.alwaysSetStorage and player:getStorageValue(Storage.TheInquisition.EnterTeleport) < teleport.storage then
		player:setStorageValue(Storage.TheInquisition.EnterTeleport, teleport.storage)
	end

	if teleport.bossStorage then
		if Game.getStorageValue(teleport.bossStorage) >= 2 then
			if player:getStorageValue(Storage.TheInquisition.EnterTeleport) < teleport.storage then
				player:setStorageValue(Storage.TheInquisition.EnterTeleport, teleport.storage)
				player:setStorageValue(teleport.bossStorage, 0)

			end
		else
			player:teleportTo(Position(28908, 29831, 7))
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:say('No tan rapido!', TALKTYPE_MONSTER_SAY)
			return true
		end

	end
	
	player:teleportTo(teleport.newPos)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:say(teleport.text, TALKTYPE_MONSTER_SAY)
	return true
end