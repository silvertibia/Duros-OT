local config = {
	-- strong health potion
	[7588] = {health = {min = 250, max = 350}, vocations = {3, 4}, text = 'paladins and knights', level = 50},
	-- strong mana potion
	[7589] = {mana = {min = 115, max = 185}, vocations = {1, 2, 3}, text = 'sorcerers, druids and paladins', level = 50},
	-- great mana potion
	[7590] = {mana = {min = 150, max = 250}, vocations = {1, 2}, text = 'sorcerers and druids', level = 80},
	-- great health potion
	[7591] = {health = {min = 425, max = 575}, vocations = {4}, text = 'knights', level = 80},
	-- health potion
	[7618] = {health = {min = 125, max = 175}},
	-- mana potion
	[7620] = {mana = {min = 175, max = 325}},
	-- great spirit potion
	[8472] = {health = {min = 300, max = 350}, mana = {min = 150, max = 150}, vocations = {3}, text = 'paladins', level = 80},
	-- ultimate health potion
	[8473] = {health = {min = 700, max = 1100}, vocations = {4}, text = 'knights', level = 130},
	
	-- POT NOVOS
	
	-- ultimate mana potion 26029
	[26029] = {mana = {min = 800, max = 1200}, vocations = {1, 2}, text = 'sorcerers and druids', level = 130},
	
	-- Supreme Health Potion 26031
	[26031] = {health = {min = 1500, max = 1900}, vocations = {4}, text = 'knights', level = 200},
	
	-- Ultimate Spirit Potion 26030
	[26030] = {health = {min = 875, max = 1200}, mana = {min = 450, max = 900}, vocations = {3}, text = 'paladins', level = 130},
	
	
	-- antidote potion
	[8474] = {antidote = true},
	-- small health potion
	[8704] = {health = {min = 60, max = 125}}
}

local antidote = Combat()
antidote:setParameter(COMBAT_PARAM_TYPE, COMBAT_HEALING)
antidote:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
antidote:setParameter(COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
antidote:setParameter(COMBAT_PARAM_AGGRESSIVE, false)
antidote:setParameter(COMBAT_PARAM_DISPEL, CONDITION_POISON)

local exhaust = Condition(CONDITION_EXHAUST_HEAL)
exhaust:setParameter(CONDITION_PARAM_TICKS, (configManager.getNumber(configKeys.EX_ACTIONS_DELAY_INTERVAL) - 1000))
-- 1000 - 100 due to exact condition timing. -100 doesn't hurt us, and players don't have reminding ~50ms exhaustion.

function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local potion = config[item.itemid]
	if not potion then
		return true
	end

	if target.itemid ~= 1 or target.type ~= THING_TYPE_PLAYER then
		return false
	end

	if player:getCondition(CONDITION_EXHAUST_HEAL) then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_YOUAREEXHAUSTED))
		return true
	end

	if potion.antidote and not antidote:execute(target, Variant(target.uid)) then
		return false
	end

	if (potion.level and player:getLevel() < potion.level)
			or (type(potion.vocations) == 'table' and not isInArray(potion.vocations, player:getVocation():getBase():getId()))
			and not (player:getGroup():getId() >= 2) then
		player:say(string.format('This potion can only be consumed by %s of level %d or higher.', potion.text, potion.level), TALKTYPE_MONSTER_SAY)
		return true
	end

	if type(potion.health) == 'table' and not doTargetCombatHealth(0, target, COMBAT_HEALING, potion.health.min, potion.health.max, CONST_ME_MAGIC_BLUE) then
		return false
	end

	if type(potion.mana) == 'table' and not doTargetCombatMana(0, target, potion.mana.min, potion.mana.max, CONST_ME_MAGIC_BLUE) then
		return false
	end

	player:addAchievementProgress('Potion Addict', 100000)

	player:addCondition(exhaust)
	doCreatureSayWithRadius(target, 'Aaaah...', TALKTYPE_MONSTER_SAY, 2, 2)
	Item(item.uid):remove(1)
	local topParent = item:getTopParent()

end

