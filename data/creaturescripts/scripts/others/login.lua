local events = {
    'ElementalSpheresOverlords',
    'BigfootBurdenVersperoth',
    'Razzagorn',
    'Shatterer',
    'Zamulosh',	
	'The Hunger',
	'The Rage',
	'Eradicator',
	'Eradicator1',
	'Rupture',
	'World Devourer',	
    'Tarbaz',
    'Shulgrax',
    'Ragiaz',
    'Plagirath',
    'Mazoran',
    'Destabilized',
    'BigfootBurdenWiggler',
    'SvargrondArenaKill',
    'NewFrontierShardOfCorruption',
    'NewFrontierTirecz',
    'ServiceOfYalaharDiseasedTrio',
    'ServiceOfYalaharAzerus',
    'ServiceOfYalaharQuaraLeaders',
    'InquisitionBosses',
    'InquisitionUngreez',
    'KillingInTheNameOfKills',
	'KillingInTheNameOfKillss',
	'KillingInTheNameOfKillsss',
    'MastersVoiceServants',
    'SecretServiceBlackKnight',
    'ThievesGuildNomad',
    'WotELizardMagistratus',
    'WotELizardNoble',
    'WotEKeeper',
	'Maxxed',
    'WotEBosses',
    'WotEZalamon',
    'WarzoneThree',
    'PlayerDeath',
    'AdvanceSave',
    'bossesWarzone',
    'AdvanceRookgaard',
    'PythiusTheRotten',
    'DropLoot',
    'Yielothax',
    'BossParticipation',
    'Energized Raging Mage',
    'Raging Mage', 
    'modalMD1',
	'VibrantEgg',
    'DeathCounter',
    'KillCounter',
    'bless1',
	'lowerRoshamuul',
	'SpikeTaskQuestCrystal',
	'SpikeTaskQuestDrillworm',
	'petlogin',
	'idle',
	'petthink',
	'boss',
	'boss1',
	'autoloot',
	'boss2',
	'boss3'
}
 
local function onMovementRemoveProtection(cid, oldPosition, time)
    local player = Player(cid)
    if not player then
        return true
    end
 
    --local playerPosition = player:getPosition()
    --if (playerPosition.x ~= oldPosition.x or playerPosition.y ~= oldPosition.y or playerPosition.z ~= oldPosition.z) or player:getTarget() then
      --  player:setStorageValue(Storage.combatProtectionStorage, 0)
        --return true
    --end
 
    --addEvent(onMovementRemoveProtection, 1000, cid, oldPosition, time - 1) 
end
 
function onLogin(player)
	local loginStr = 'Welcome to ' .. configManager.getString(configKeys.SERVER_NAME) .. '!'
	if player:getLastLoginSaved() <= 0 then
		loginStr = loginStr .. ' Please choose your outfit.'		
		player:setBankBalance(0)

		if player:getSex() == 1 then
			player:setOutfit({lookType = 128, lookHead = 78, lookBody = 106, lookLegs = 58, lookFeet = 76})		
		else
			player:setOutfit({lookType = 136, lookHead = 78, lookBody = 106, lookLegs = 58, lookFeet = 76})	
		end

		player:sendTutorial(1)
	else
		if loginStr ~= "" then
			player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
		end

		loginStr = string.format('Your last visit was on %s.', os.date('%a %b %d %X %Y', player:getLastLoginSaved()))
	end
 
    player:sendTextMessage(MESSAGE_STATUS_DEFAULT, loginStr)
   
    local playerId = player:getId()
    
    player:loadSpecialStorage()

    --[[-- Maintenance mode
    if (player:getGroup():getId() < 2) then
        return false
    else
        
    end--]]

    if (player:getGroup():getId() >= 4) then
        player:setGhostMode(true)
    end

    -- Stamina
    nextUseStaminaTime[playerId] = 1

    -- EXP Stamina
    nextUseXpStamina[playerId] = 1

    -- Prey Stamina
    nextUseStaminaPrey[playerId+1] = {Time = 1}
    nextUseStaminaPrey[playerId+2] = {Time = 1}
    nextUseStaminaPrey[playerId+3] = {Time = 1}

    -- Prey Data
    if (player:getVocation():getId() ~= 0) then
        local columnUnlocked = getUnlockedColumn(player)
        if (not columnUnlocked) then
            columnUnlocked = 0
        end

        for i = 0, columnUnlocked do
            sendPreyData(player, i)
        end
    end

    if (player:getAccountType() == ACCOUNT_TYPE_TUTOR) then
        local msg = [[:: Regras Tutor ::
            1*>3 Advert�ncias voc� perde o cargo.
            2*>Sem conversas paralelas com jogadores no Help, se o player come�ar a ofender, voc� simplesmente o mute.
            3*>Seja educado com os player no Help e principalmente no Privado, tenta ajudar o m�ximo poss�vel.
            4*>Sempre logue no seu hor�rio, caso n�o tiver uma justificativa voc� ser� removido da staff.
            5*>Help � somente permitido realizar d�vidas relacionadas ao tibia.
            6*>N�o � Permitido divulgar time pra upar ou para ajudar em quest.
            7*>N�o � permitido venda de itens no Help.
            8*>Caso o player encontre um bug, pe�a para ir ao site mandar um ticket e explicar em detalhes.
            9*>Mantenha sempre o Chat dos Tutores aberto. (obrigat�rio).
            10*>Voc� terminou de cumprir seu hor�rio, viu que n�o tem nenhum tutor Online, voc� comunica com algum CM in-game ou ts e fica no help at� algu�m logar, se der.
            11*>Mantenha sempre um �timo portugu�s no Help, queremos tutores que d�em suporte, n�o que fiquem falando um ritual sat�nico.
            12*>Se ver um tutor fazendo algo que infrinja as regras, tire uma print e envie aos superiores."
            -- Comandos --
            Mutar Player: /mute nick,90. (90 segundos)
            Desmutar Player: /unmute nick.
            -- Comandos --]]
        player:popupFYI(msg)
    end
   
 	-- OPEN CHANNERLS (ABRIR CHANNELS)
	if table.contains({"Rookgaard", "Dawnport"}, player:getTown():getName())then
		--player:openChannel(7) -- help channel
		player:openChannel(3) -- world chat
		player:openChannel(6) -- advertsing rook main
	else
		--player:openChannel(7) -- help channel
		player:openChannel(3) -- world chat
		player:openChannel(5) -- advertsing main
	end

      --
    -- Rewards
    local rewards = #player:getRewardList()
    if(rewards > 0) then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You have %d %s in your reward chest.", rewards, rewards > 1 and "rewards" or "reward"))
    end
 
    -- Update player id
    local stats = player:inBossFight()
    if stats then
        stats.playerId = player:getId()
    end
 
    -- fury gates
    local messageType = nil
    if (player:getClient().os == 3 or
    	player:getClient().os == 5) then
    	messageType = MESSAGE_EVENT_ADVANCE
    end

    if Game.getStorageValue(9710) == 1 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Venore Today.')
    elseif Game.getStorageValue(9711) == 2 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Abdendriel Today.')
    elseif Game.getStorageValue(9712) == 3 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Thais Today.')
    elseif Game.getStorageValue(9713) == 4 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Carlin Today.')
    elseif Game.getStorageValue(9714) == 5 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Edron Today.')
    elseif Game.getStorageValue(9716) == 6 then
        player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_BLUE, 'Fury Gate is on Kazordoon Today.')
    end

	player:sendTextMessage(messageType or MESSAGE_STATUS_CONSOLE_ORANGE, '[BUGS?] Reportar en http://www.facebook.com/DurosOT')
   
    -- Events
    for i = 1, #events do
        player:registerEvent(events[i])
		player:registerEvent("AutoLoot")
		
    end
    local looktypes = {
    128, 136, 129, 137, 130, 138, 131, 139, 132, 140, 133, 141, 134, 142,
    143, 147, 144, 148, 145, 149, 146, 150, 151, 155, 152, 156, 153, 157,
    154, 158, 251, 252, 268, 269, 273, 270, 278, 279, 289, 288, 325, 324,
    335, 336, 366, 367, 328, 329, 430, 431, 432, 433, 463, 464, 465, 466,
    471, 472, 512, 513, 514, 516, 541, 542, 574, 575, 577, 578, 610, 618,
	619, 620, 632, 633, 634, 635, 636, 637, 664, 665, 666, 667, 683, 684,
	694, 695, 696, 697, 698, 699, 724, 725, 732, 733, 745, 746, 749, 750,
	759, 760, 845, 846, 852, 853, 874, 873, 885, 884, 900, 899, 909, 908,
	929, 931, 958, 957
    }
    for i = 1, #looktypes do
       player:addOutfitAddon(looktypes[i], 3)
    end
	for i = 1, 112 do
      player:addMount(i)
   end
	
 
    if player:getStorageValue(Storage.combatProtectionStorage) <= os.time() then
        player:setStorageValue(Storage.combatProtectionStorage, os.time() + 10)
        onMovementRemoveProtection(playerId, player:getPosition(), 10)
    end

	-- Exp stats
	local staminaMinutes = player:getStamina()
	local Boost = player:getExpBoostStamina()
	if staminaMinutes > 2400 and player:isPremium() and Boost > 0 then
		player:setBaseXpGain(200) -- 200 = 1.0x, 200 = 2.0x, ... premium account		
	elseif staminaMinutes > 2400 and player:isPremium() and Boost <= 0 then
		player:setBaseXpGain(150) -- 150 = 1.0x, 150 = 1.5x, ... premium account	
	elseif staminaMinutes <= 2400 and staminaMinutes > 840 and player:isPremium() and Boost > 0 then
		player:setBaseXpGain(150) -- 150 = 1.5x		premium account
	elseif staminaMinutes > 840 and Boost > 0 then
		player:setBaseXpGain(150) -- 150 = 1.5x		free account
	elseif staminaMinutes <= 840 and Boost > 0 then
		player:setBaseXpGain(100) -- 50 = 0.5x	all players	
	elseif staminaMinutes <= 840 then
		player:setBaseXpGain(50) -- 50 = 0.5x	all players	
	end
    player:loadVipData()
    player:updateVipTime()
    return true
end
