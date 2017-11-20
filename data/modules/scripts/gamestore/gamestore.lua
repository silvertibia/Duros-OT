-- Parser
dofile('data/modules/scripts/gamestore/init.lua')

-- Config
GameStore.Categories = {

	{
		name = "New Products",
		state = GameStore.States.STATE_NEW,
		icons = {"New_Products.png"},
		offers = {
			-- Addon Example : thingId = lookType, addon = ( 1 = addon 1, 2 = addon 2, 3 = both addons)
			{name = "New Outfit", thingId = {male=1021,female=1020}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON, price = 200, icons = {"f909.png", "f908.png"}},
			{name = "New Outfit 2", thingId = {male=1024,female=1023}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT_ADDON, price = 200, icons = {"f931.png", "f929.png"}},
			{name = "Full Pharaoh OutFits", thingId = {male=955,female=956}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 265, icons = {"Product_Outfit_Pharaoh_male_Full.png","Product_Outfit_Pharaoh_female_Full.png"}},
			
			-- Mount Example : thingId = mountId
			{name = "Blazing Unicorn", thingId = 113, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 200, icons = {"o905.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Artic Unicorn", thingId = 114, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 200, icons = {"o906.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Prismatic Unicorn", thingId = 115, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 200, icons = {"o907.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "New Mount", thingId = 116, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 200, icons = {"o937.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "New Mount 2", thingId = 117, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 200, icons = {"o950.png"}, description = "Here you can purchase the Mount for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "New Mount 3", thingId = 118, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 200, icons = {"o951.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
			{name = "Skull Remover", thingId = 11144, type = GameStore.OfferTypes.OFFER_STACKABLE, price = 200, icons = {"11144.png"}, description = "You can Remove Red Skull"},
			{name = "Gnomo Outfit", thingId = {male=493,female=493}, addon = 3, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 265, icons= {"gnomo.png","gnomo.png"}},
			
			--{name = "Elephant", thingId = 107, type = GameStore.OfferTypes.OFFER_TYPE_MOUNT, price = 1, icons = {"o937.png"}, description = "Here you can purchase the Mount  for your character. Riding on a mount is not only cool, but also gives your character a speed boost."},
		}
	},

	{
		name = "Boost",
		state = GameStore.States.STATE_NONE,
		rookgaard = false,
		icons = {"Category_Boosts.png"},
		offers = {
		   
		   {name = "Double EXP", description = "Double XP for two hours", price = 300, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 16107, count = 1, icons = {"xpboosticon.png"}},
			
	}
	},

	{
		name = "Overcharged items",
		state = GameStore.States.STATE_NEW,
		icons = {"New_Products.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Blade of Carving Overcharged", thingId = 27877, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"25192.png"}, description = "Sword Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Blade of Mayhem Overcharged", thingId = 25909, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"25193.png"}, description = "Sword Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Blade of Remedy Overcharged", thingId = 25922, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"25191.png"}, description = "Sword Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Slayer of Carving Overcharged", thingId = 25966, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"25190.png"}, description = "Sword Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Slayer of Mayhem Overcharged", thingId = 25910, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18390.png"}, description = "Sword Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Slayer of Remedy Overcharged", thingId = 25926, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"8918.png"}, description = "Sword Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Axe of Carving Overcharged", thingId = 25970, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Axe Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Axe of Mayhem Overcharged", thingId = 25911, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Axe Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Axe of Remedy Overcharged", thingId = 25930, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Axe Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Chopper of Carving Overcharged", thingId = 25974, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Axe Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Chopper of Mayhem Overcharged", thingId = 25912, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Axe Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Chopper of Remedy Overcharged", thingId = 25934, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Axe Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Hammer of Carving Overcharged", thingId = 25982, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Club Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Hammer of Mayhem Overcharged", thingId = 25914, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Club Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Hammer of Remedy Overcharged", thingId = 25942, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Club Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Mace of Carving Overcharged", thingId = 25978, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Club Fighting +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Mace of Mayhem Overcharged", thingId = 25913, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Club Fighting +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Mace of Remedy Overcharged", thingId = 25938, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Club Fighting +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Rod of Carving Overcharged", thingId = 25998, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Magic Level +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Rod of Mayhem Overcharged", thingId = 25918, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "	Magic Level +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Rod of Remedy Overcharged", thingId = 25958, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Magic Level +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Wand of Carving Overcharged", thingId = 25994, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Magic Level +1, Mana Leech chance +100%, mana leech amount +9%"},
			{name = "Wand of Mayhem Overcharged", thingId = 25917, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "	Magic Level +1, Critical Hit chance +10%, critical extra damage +60%"},
			{name = "Wand of Remedy Overcharged", thingId = 25954, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Magic Level +1, Hit Points Leech chance +100%, hit points leech amount +9%"},
			{name = "Bow of Carving Overcharged", thingId = 25986, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Bow of Mayhem Overcharged", thingId = 25915, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Bow of Remedy Overcharged", thingId = 25946, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Crossbow of Carving Overcharged", thingId = 25990, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Crossbow of Mayhem Overcharged", thingId = 25916, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Become rich!"},
			{name = "Crossbow of Remedy Overcharged", thingId = 25950, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"18409.png"}, description = "Become rich!"},
			
		
		}
	},

	{
		name = "Retro Outfits",
		state = GameStore.States.STATE_NONE,
		icons = {"category_retro.png"},
		rookgaard = false,
		offers = {
			{name = "Retro Citizen Outfit", thingId = {male=974,female=975}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 300, icons = {"Product_Outfit_RetroCitizen_Male_Base.png","Outfit_Retro_Citizen_Female.png"}},
			{name = "Retro Hunter Outfit", thingId = {male=972,female=973}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 300, icons = {"Product_Outfit_RetroHunter_Male_Base.png","Outfit_Retro_Hunter_Female.png"}},
			{name = "Retro Knight Outfit", thingId = {male=970,female=971}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 300, icons = {"Product_Outfit_RetroKnight_Male_Base.png","Outfit_Retro_Knight_Female.png"}},
			{name = "Retro Mage Outfit", thingId = {male=968,female=969}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 300, icons = {"Product_Outfit_RetroMage_Male_Base.png","Outfit_Retro_Mage_Female.png"}},
			{name = "Retro Warrior Outfit", thingId = {male=962,female=963}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 300, icons = {"Product_Outfit_RetroWarrior_Male_Base.png","Outfit_Retro_Warrior_Female.png"}},
			{name = "Retro Summoner Outfit", thingId = {male=964,female=965}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 300, icons = {"Product_Outfit_RetroSummoner_Male_Base.png","Outfit_Retro_Summoner_Female.png"}},
			{name = "Retro Nobleman Outfit", thingId = {male=966,female=967}, type = GameStore.OfferTypes.OFFER_TYPE_OUTFIT, price = 300, icons = {"Product_Outfit_RetroNobleman_Male_Base.png","Product_Outfit_RetroNobleman_Female_Base.png"}}
		}
	},

	{
		name = "Items",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Items.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Yalahari Mask", thingId = 9778, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Yalahari_Mask.png"}, description = "Become rich!"},
			{name = "Golden Helmet", thingId = 2471, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 100, icons = {"Golden_Helmet.png"}, description = "Become rich!"},
			{name = "Prismatic Helmet", thingId = 18403, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Prismatic_Helmet.png"}, description = "Become rich!"},
			{name = "Gill Gugel", thingId = 18398, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Gill_Gugel.png"}, description = "Become rich!"},
			{name = "Elite Draken Helmet", thingId = 12645, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Elite_Draken_Helmet.png"}, description = "Become rich!"},
			{name = "Werewolf Helmet", thingId = 24718, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Werewolf_Helmet.png"}, description = "Become rich!"},
			{name = "Depth Galea", thingId = 15408, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Depth_Galea.png"}, description = "Become rich!"},
			--Armorid--
			{name = "Demon Armor", thingId = 2494, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 30, icons = {"Demon_Armor.png"}, description = "Become rich!"},
			{name = "Fire Born Giant Armor", thingId = 8881, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 65, icons = {"Fireborn_Giant_Armor.png"}, description = "Become rich!"},
			{name = "Royal Draken Mail", thingId = 12642, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 65, icons = {"Royal_Draken_Mail.png"}, description = "Become rich!"},
			{name = "Gill Coat", thingId = 18399, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 60, icons = {"Gill_Coat.png"}, description = "Become rich!"},
			{name = "Depth Lorica", thingId = 15407, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"Depth_Lorica.png"}, description = "Become rich!"},
			{name = "Furios Frock", thingId = 21725, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"Furious_Frock.png"}, description = "Become rich!"},
			{name = "Ornate Chestplate", thingId = 15406, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 100, icons = {"Ornate_Chestplate.png"}, description = "Become rich!"},
			{name = "Earthborn Titan Armor", thingId = 8882, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 100, icons = {"Earthborn_Titan_Armor.png"}, description = "Become rich!"},
			{name = "Wind Born Colossus Armor", thingId = 8883, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 100, icons = {"Windborn_Colossus_Armor.png"}, description = "Become rich!"},
			{name = "Master Acher's Armor", thingId = 8888, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 65, icons = {"Master_Archer's_Armor.png"}, description = "Become rich!"},
			--Legsid--
			{name = "Demon Legs", thingId = 2495, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 70, icons = {"Demon_Legs.png"}, description = "Become rich!"},
			{name = "Grasshopper Legs", thingId = 15490, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Grasshopper_Legs.png"}, description = "Become rich!"},
			{name = "Depth Ocrea", thingId = 15409, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Depth_Ocrea.png"}, description = "Become rich!"},
			{name = "Primatic Legs", thingId = 18405, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Prismatic_Legs.png"}, description = "Become rich!"},
			{name = "Gill Legs", thingId = 18400, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Gill_Legs.png"}, description = "Become rich!"},
			{name = "Ornate Legs", thingId = 15412, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 100, icons = {"Ornate_Legs.png"}, description = "Become rich!"},
			{name = "Dwarven Legs", thingId = 2504, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Dwarven_Legs.png"}, description = "Become rich!"},
			{name = "Icy Culotte", thingId = 21700, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 100, icons = {"Icy_Culottes.png"}, description = "Become rich!"},
			--Bootsid--
			{name = "Boots of Haste", thingId = 2195, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 30, icons = {"Boots_of_Haste.png"}, description = "Become rich!"},
			{name = "Golden Boots", thingId = 2646, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Golden_Boots.png"}, description = "Become rich!"},
			{name = "Duro's Boots", thingId = 2640, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 250, icons = {"Pair_of_Soft_Boots.png"}, description = "Become rich!"},
			--Shieldid--
			{name = "Depth Scutum", thingId = 15411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 30, icons = {"Depth_Scutum.png"}, description = "Become rich!"},
			{name = "Shield of Corruption", thingId = 12644, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 80, icons = {"Shield_of_Corruption.png"}, description = "Become rich!"},
			{name = "Prismatic Shield", thingId = 18410, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Prismatic_Shield.png"}, description = "Become rich!"},
			{name = "Ornate Shield", thingId = 15413, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"Ornate_Shield.png"}, description = "Become rich!"},
			{name = "Spelbook of Vigilance", thingId = 18401, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 30, icons = {"Spellbook_of_Vigilance.png"}, description = "Become rich!"},
			{name = "Spellbook of Ancient Arcana", thingId = 16112, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 70, icons = {"Spellbook_of_Ancient_Arcana.png"}, description = "Become rich!"},
			{name = "Umbral spellbook", thingId = 22423, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 65, icons = {"Umbral_Spellbook.png"}, description = "Become rich!"},
			{name = "Umbral Master Spellbook", thingId = 22424, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"Umbral_Master_Spellbook.png"}, description = "Become rich!"},
			{name = "Great Shield", thingId = 2522, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 180, icons = {"Great_Shield.png"}, description = "Become rich!"},
			{name = "Blessed Shield", thingId = 2523, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 200, icons = {"Blessed_Shield.png"}, description = "Become rich!"},
		}
	},

	{
		name = "Items for Sorcerers",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Sorc.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Thundermind Raiment", thingId = 25192, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25192.png"}, description = "Become rich!"},
			{name = "Frostmind Raiment", thingId = 25193, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25193.png"}, description = "Become rich!"},
			{name = "Earthmind Raiment", thingId = 25191, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25191.png"}, description = "Become rich!"},
			{name = "Firemind Raiment", thingId = 25190, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25190.png"}, description = "Become rich!"},
			{name = "Wand of Defiance", thingId = 18390, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18390.png"}, description = "Become rich!"},
			{name = "Spelbook of Dark Mysteries", thingId = 8918, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"8918.png"}, description = "Become rich!"},
			{name = "Wand of Everblazing", thingId = 18409, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18409.png"}, description = "Become rich!"},
		}
	},

	{
		name = "Items for Knights",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Knight.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Earthmind Raiment", thingId = 25191, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25191.png"}, description = "Become rich!"},
			{name = "Earthheart Platemail", thingId = 25179, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25179.png"}, description = "Become rich!"},
			{name = "Earthheart Hauberk", thingId = 25178, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25178.png"}, description = "Become rich!"},
			{name = "Frostheart Platemail", thingId = 25185, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25185.png"}, description = "Become rich!"},
			{name = "Frostheart Hauberk", thingId = 25184, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25184.png"}, description = "Become rich!"},
			{name = "Frostheart Cuirass", thingId = 25183, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25183.png"}, description = "Become rich!"},
			{name = "Thunderheart Platemail", thingId = 25182, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25182.png"}, description = "Become rich!"},
			{name = "Thunderheart Hauberk", thingId = 25181, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25181.png"}, description = "Become rich!"},
			{name = "Thunderheart Cuirass", thingId = 25180, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25180.png"}, description = "Become rich!"},
			{name = "Fireheart Platemail", thingId = 25176, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25176.png"}, description = "Become rich!"},
			{name = "Fireheart Hauberk", thingId = 25175, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25175.png"}, description = "Become rich!"},
			{name = "Fireheart Cuirass", thingId = 25174, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25174.png"}, description = "Become rich!"},
			{name = "Shiny Blade", thingId = 18465, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 40, icons = {"18465.png"}, description = "Become rich!"},
			{name = "Crystaline Axe ", thingId = 18451, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18451.png"}, description = "Become rich!"},
			{name = "Mycological Mace", thingId = 18452, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18452.png"}, description = "Become rich!"},
			{name = "Umbral Blade", thingId = 22399, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 85, icons = {"22399.png"}, description = "Become rich!"},
			{name = "Umbral Masterblade", thingId = 22400, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"22400.png"}, description = "Become rich!"},
			{name = "umbral Slayer", thingId = 22402, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 85, icons = {"22402.png"}, description = "Become rich!"},
			{name = "Umbral Hammer", thingId = 22414, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 85, icons = {"22414.png"}, description = "Become rich!"},
			{name = "Umbral Master Hammer", thingId = 22415, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"22415.png"}, description = "Become rich!"},
			{name = "Umbral Mace", thingId = 22411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 85, icons = {"22411.png"}, description = "Become rich!"},
			{name = "Umbral master Chopper", thingId = 22409, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"22409.png"}, description = "Become rich!"},
			{name = "Umbral Mater Axe", thingId = 22406, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"22406.png"}, description = "Become rich!"},
			{name = "Umbral Axe", thingId = 22405, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 60, icons = {"22405.png"}, description = "Become rich!"},
			{name = "Umbral Master Slayer", thingId = 22403, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"22403.png"}, description = "Become rich!"},
			{name = "Umbral Chopper", thingId = 22408, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 75, icons = {"22408.png"}, description = "Become rich!"},
		
		}
	},

	{
		name = "Items for Paladins",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Pally.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Firesoul Tabard", thingId = 25186, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25186.png"}, description = "Become rich!"},
			{name = "Frostsoul Tabard", thingId = 25189, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25189.png"}, description = "Become rich!"},
			{name = "Thundersoul Tabard", thingId = 25188, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25188.png"}, description = "Become rich!"},
			{name = "Earthsoul Tabard", thingId = 25187, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25187.png"}, description = "Become rich!"},
			{name = "Crystal Crossbow", thingId = 18453, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18453.png"}, description = "Become rich!"},
			{name = "Mycological Bow", thingId = 18454, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18454.png"}, description = "Become rich!"},
			{name = "Umbral bow", thingId = 22417, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 65, icons = {"22417.png"}, description = "Become rich!"},
			{name = "Umbral Master bow", thingId = 22418, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"22418.png"}, description = "Become rich!"},
			{name = "Umbral Crossbow", thingId = 22420, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 75, icons = {"22420.png"}, description = "Become rich!"},
			{name = "Umbral Master Crossbow", thingId = 22421, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 120, icons = {"22421.png"}, description = "Become rich!"},
		}
	},

	{
		name = "Items for Druids",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Druid.png"},
		offers = {
			-- Item Example : thingId = itemId
			{name = "Thundermind Raiment", thingId = 25192, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25192.png"}, description = "Become rich!"},
			{name = "Frostmind Raiment", thingId = 25193, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25193.png"}, description = "Become rich!"},
			{name = "Earthmind Raiment", thingId = 25191, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25191.png"}, description = "Become rich!"},
			{name = "Firemind Raiment", thingId = 25190, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 90, icons = {"25190.png"}, description = "Become rich!"},
			{name = "Glacial Rod", thingId = 18412, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18412.png"}, description = "Become rich!"},
			{name = "Muck Rod", thingId = 18411, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"18411.png"}, description = "Become rich!"},
			{name = "Spelbook of Dark Mysteries", thingId = 8918, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_ITEM, price = 50, icons = {"8918.png"}, description = "Become rich!"},
		}
	},
	{
		name = "Potions & Kegs",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_Potions.png"},
		offers = {
			{name = "Health Potion", description = "100x Health Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7618, count = 100, icons = {"7618.png"}},
			{name = "Health Potion", description = "250x Health Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7618, count = 250, icons = {"7618.png"}},
			{name = "Strong Health Potion", description = "100x Strong Health Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7588, count = 100, icons = {"7588.png"}},
			{name = "Strong Health Potion", description = "250x Strong Health Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7588, count = 250, icons = {"7588.png"}},
			{name = "Great Health Potion", description = "100x Great Health Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7591, count = 100, icons = {"7591.png"}},
			{name = "Great Health Potion", description = "250x Great Health Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7591, count = 250, icons = {"7591.png"}},
			{name = "Ultimate Health Potion", description = "100x Ultimate Health Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 8473, count = 100, icons = {"8473.png"}},
			{name = "Ultimate Health Potion", description = "250x Ultimate Health Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 8473, count = 250, icons = {"8473.png"}},
			{name = "Supreme Health Potion", description = "100x Supreme Health Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 26031, count = 100, icons = {"26031.png"}},
			{name = "Supreme Health Potion", description = "250x Supreme Health Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 26031, count = 250, icons = {"26031.png"}},
			{name = "Mana Potion", description = "100x Mana Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7620, count = 100, icons = {"7620.png"}},
			{name = "Mana Potion", description = "250x Mana Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7620, count = 250, icons = {"7620.png"}},
			{name = "Strong Mana Potion", description = "100x Strong Mana Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7589, count = 100, icons = {"7589.png"}},
			{name = "Strong Mana Potion", description = "250x Strong Mana Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7589, count = 250, icons = {"7589.png"}},
			{name = "Great Mana Potion", description = "100x Great Mana Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7590, count = 100, icons = {"7590.png"}},
			{name = "Great Mana Potion", description = "250x Great Mana Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 7590, count = 250, icons = {"7590.png"}},
			{name = "Ultimate Mana Potion", description = "100x Ultimate Mana Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 26029, count = 100, icons = {"26029.png"}},
			{name = "Ultimate Mana Potion", description = "250x Ultimate Mana Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 26029, count = 250, icons = {"26029.png"}},
			{name = "Great Spirit Potion", description = "100x Great Spirit Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 8472, count = 100, icons = {"8472.png"}},
			{name = "Great Spirit Potion", description = "250x Great Spirit Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 8472, count = 250, icons = {"8472.png"}},
			{name = "Ultimate Spirit Potion", description = "100x Ultimate Spirit Potion", price = 5, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 26030, count = 100, icons = {"26030.png"}},
			{name = "Ultimate Spirit Potion", description = "250x Ultimate Spirit Potion", price = 10, type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, thingId = 26030, count = 250, icons = {"26030.png"}},
			{name = "health potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28579, count = 500, icons = {"28577.png"}},
			{name = "strong health potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28580, count = 500, icons = {"28578.png"}},
			{name = "great health potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28581, count = 500, icons = {"28579.png"}},
			{name = "ultimate health potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28581, count = 500, icons = {"28580.png"}},
			{name = "supreme health potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28583, count = 500,  icons = {"28581.png"}},
			{name = "mana potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28584, count = 500, icons = {"28582.png"}},
			{name = "strong mana potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28585, count = 500, icons = {"28583.png"}},
			{name = "great mana potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28586, count = 500, icons = {"28584.png"}},
			{name = "ultimate mana potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28587, count = 500, icons = {"28585.png"}},
			{name = "great spirit potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28589, count = 500, icons = {"28587.png"}},
			{name = "ultimate spirit potion keg", type = GameStore.OfferTypes.OFFER_TYPE_STACKABLE, price = 50, thingId = 28590, count = 500, icons = {"28588.png"}},
		}
	},
	
	{
		name = "House Equipment",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_HouseEquipment.png"},
		rookgaard = false,
		offers = {
			{name = "Gilded Imbuing Shrine", description = "Buy an incredible Gilded Imbuing Shrine to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27850, count = 1, price = 200, icons = {"Product_HouseEquipment_GildedImbuingShrine.png"}},
			{name = "Imbuing Shrine", description = "Buy an incredible Imbuing Shrine to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27728, count = 1, price = 150, icons = {"Product_HouseEquipment_ImbuingShrine.png"}},
			{name = "Magnificent Cabinet", description = "Buy an incredible Magnificent Cabinet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26075, count = 1, price = 100, icons = {"Product_HouseEquipment_BaroqueFurniture_Cabinet.png"}},
			{name = "Magnificent chair", description = "Buy an incredible Magnificent chair to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26059, count = 1, price = 60, icons = {"Product_HouseEquipment_BaroqueFurniture_Chair.png"}},
			{name = "Magnificent Trunk", description = "Buy an incredible Magnificent Trunk to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26083, count = 1, price = 70, icons = {"Product_HouseEquipment_BaroqueFurniture_Chest.png"}},
			{name = "Magnificent Table", description = "Buy an incredible Magnificent Table to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26073, count = 1, price = 60, icons = {"Product_HouseEquipment_BaroqueFurniture_Table.png"}},
			{name = "Ferocious Cabinet", description = "Buy an incredible Ferocious Cabinet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26077, count = 1, price = 110, icons = {"Product_HouseEquipment_TortureChamberFurniture_Cabinet.png"}},
			{name = "Ferocious Chair", description = "Buy an incredible Ferocious Chair to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26063, count = 1, price = 50, icons = {"Product_HouseEquipment_TortureChamberFurniture_Chair.png"}},
			{name = "Ferocious Trunk", description = "Buy an incredible Ferocious Trunk to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26079, count = 1, price = 80, icons = {"Product_HouseEquipment_TortureChamberFurniture_Chest.png"}},
			{name = "Ferocious Table", description = "Buy an incredible Ferocious Table to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26067, count = 1, price = 50, icons = {"Product_HouseEquipment_TortureChamberFurniture_Table.png"}},
			{name = "Rustic Cabinet", description = "Buy an incredible Rustic Cabinet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26356, count = 1, price = 100, icons = {"Product_HouseEquipment_RusticFurniture_Cabinet.png"}},
			{name = "Rustic Chair", description = "Buy an incredible Rustic Chair to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26349, count = 1, price = 50, icons = {"Product_HouseEquipment_RusticFurniture_Chair.png"}},
			{name = "Rustic Trunk", description = "Buy an incredible Rustic Trunk to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26358, count = 1, price = 80, icons = {"Product_HouseEquipment_RusticFurniture_Chest.png"}},
			{name = "Rustic Table", description = "Buy an incredible Rustic Table to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26354, count = 1, price = 50, icons = {"Product_HouseEquipment_RusticFurniture_Table.png"}},
			{name = "vengothic cabinet", description = "Buy an incredible Vengothic Cabinet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27901, count = 1, price = 100, icons = {"Product_HouseEquipment_VengothicFurniture_Cupboard.png"}},
			{name = "Vengothic Chair", description = "Buy an incredible Vengothic Chair to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27895, count = 1, price = 50, icons = {"Product_HouseEquipment_VengothicFurniture_Chair.png"}},
			{name = "Vengothic Chest", description = "Buy an incredible Vengothic Chest to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27903, count = 1, price = 80, icons = {"Product_HouseEquipment_VengothicFurniture_Chest.png"}},
			{name = "Vengothic Table", description = "Buy an incredible Vengothic Table to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27899, count = 1, price = 50, icons = {"Product_HouseEquipment_VengothicFurniture_Table.png"}},
			{name = "Bitter-Smack Leaf", description = "Buy an incredible Bitter-Smack Leaf to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27891, count = 1, price = 50, icons = {"Product_HouseEquipment_BitterSmackLeaf.png"}},
			{name = "Blooming Cactus", description = "Buy an incredible Blooming Cactus to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27890, count = 1, price = 50, icons = {"Product_HouseEquipment_BloomingCactus.png"}},
			{name = "Pink Roses", description = "Buy an incredible Pink Roses to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27892, count = 1, price = 50, icons = {"Product_HouseEquipment_PinkRoses.png"}},
			{name = "Red Roses", description = "Buy an incredible Red Roses to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27893, count = 1, price = 50, icons = {"Product_HouseEquipment_RedRoses.png"}},
			{name = "Yellow Roses", description = "Buy an incredible Yellow Roses to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27894, count = 1, price = 50, icons = {"Product_HouseEquipment_YellowRoses.png"}},
			{name = "Yalaharian Carpet", description = "Buy an incredible Yalaharian Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26087, count = 1, price = 35, icons = {"Product_HouseEquipment_Carpet1.png"}},
			{name = "White Fur Carpet", description = "Buy an incredible White Fur Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26088, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet2.png"}},
			{name = "Bamboo Mat", description = "Buy an incredible Bamboo Mat to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26089, count = 1, price = 25, icons = {"Product_HouseEquipment_Carpet3.png"}},
			{name = "Crimson Carpet", description = "Buy an incredible Crimson Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26363, count = 1, price = 35, icons = {"Product_HouseEquipment_Carpet_04.png"}},
			{name = "Azure Carpet", description = "Buy an incredible Azure Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26366, count = 1, price = 35, icons = {"Product_HouseEquipment_Carpet_05.png"}},
			{name = "Emerald Carpet", description = "Buy an incredible Emerald Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26367, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_06.png"}},
			{name = "Light Parquet", description = "Buy an incredible Light Parquet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26368, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_07.png"}},
			{name = "Dark Parquet", description = "Buy an incredible Dark Parquet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26369, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_08.png"}},
			{name = "Flowery Carpet", description = "Buy an incredible Flowery Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27072, count = 1, price = 35, icons = {"Product_HouseEquipment_Carpet_10.png"}},
			{name = "Colourful Carpet", description = "Buy an incredible Colourful Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27081, count = 1, price = 35, icons = {"Product_HouseEquipment_Carpet_11.png"}},
			{name = "Striped Carpet", description = "Buy an incredible Striped Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27074, count = 1, price = 35, icons = {"Product_HouseEquipment_Carpet_12.png"}},
			{name = "Fur Carpet", description = "Buy an incredible Fur Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27075, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_13.png"}},
			{name = "Diamond Carpet", description = "Buy an incredible Diamond Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27076, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_14.png"}},
			{name = "Patterned Carpet", description = "Buy an incredible Patterned Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27077, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_15.png"}},
			{name = "Night Sky Carpet", description = "Buy an Night Sky Carpet Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27078, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_16.png"}},
			{name = "Star Carpet", description = "Buy an incredible Star Carpet to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27079, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_17.png"}},
			{name = "Marble Floor", description = "Buy an incredible Marble Floor to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26370, count = 1, price = 30, icons = {"Product_HouseEquipment_Carpet_09.png"}},
			{name = "Fish Tank", description = "Buy an incredible Fish Tank to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26347, count = 1, price = 180, icons = {"Product_HouseEquipment_Housepet_FishTank.png"}},
			{name = "Dog House", description = "Buy an incredible Dog House to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26353, count = 1, price = 150, icons = {"Product_HouseEquipment_Housepet_DogHouse.png"}},
			{name = "Baby Dragon", description = "Buy an incredible Baby Dragon to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26098, count = 1, price = 250, icons = {"Product_HouseEquipment_Housepet_BabyDragon.png"}},
			{name = "Cat in a Basket", description = "Buy an incredible Cat in a Basket to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26107, count = 1, price = 150, icons = {"Product_HouseEquipment_Housepet_Cat.png"}},
			{name = "Hamster in a Wheel", description = "Buy an incredible Hamster in a Wheel to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26100, count = 1, price = 180, icons = {"Product_HouseEquipment_Housepet_Hamster.png"}},
			{name = "Parrot", description = "Buy an incredible Parrot to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27088, count = 1, price = 180, icons = {"Product_HouseEquipment_Housepet_Parrot.png"}},
			{name = "Chamaleon", description = "Buy an incredible Chamaleon to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27887, count = 1, price = 250, icons = {"Product_HouseEquipment_Chameleon.png"}},
			{name = "Protectress Lamp", description = "Buy an incredible Protectress Lamp to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26094, count = 1, price = 90, icons = {"Product_HouseEquipment_Lamp_Goddess.png"}},
			{name = "Predator Lamp", description = "Buy an incredible Predator Lamp to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26090, count = 1, price = 60, icons = {"Product_HouseEquipment_Lamp_Leopard.png"}},
			{name = "Skull Lamp", description = "Buy an incredible Skull Lamp to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27090, count = 1, price = 90, icons = {"Product_HouseEquipment_Lamp_Skull.png"}},
			{name = "Vengothic Lamp", description = "Buy an incredible Vengothic Lamp to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 27884, count = 1, price = 180, icons = {"Product_HouseEquipment_VengothicLamp.png"}},
			{name = "Ornate Mailbox", description = "Buy an incredible Ornate Mailbox to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26057, count = 1, price = 200, icons = {"Product_HouseEquipment_Mailbox_Standard.png"}},
			{name = "Royal Mailbox", description = "Buy an incredible Royal Mailbox to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26055, count = 1, price = 150, icons = {"Product_HouseEquipment_Mailbox_Golden.png"}},
			{name = "Lordly Tapestry", description = "Buy an incredible Lordly Tapestry to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26104, count = 1, price = 50, icons = {"Product_HouseEquipment_Tapestry_01.png"}},
			{name = "Menacing Tapestry", description = "Buy an incredible Menacing Tapestry to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26105, count = 1, price = 70, icons = {"Product_HouseEquipment_Tapestry_02.png"}},
			{name = "All-Seeing Tapestry", description = "Buy an incredible All-Seeing Tapestry to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26106, count = 1, price = 60, icons = {"Product_HouseEquipment_Tapestry_03.png"}},
			{name = "Golden Dragon Tapestry", description = "Buy an incredible Golden Dragon Tapestry to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26379, count = 1, price = 70, icons = {"Product_HouseEquipment_Tapestry_04.png"}},
			{name = "Sword Tapestry", description = "Buy an incredible Sword Tapestry to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26380, count = 1, price = 60, icons = {"Product_HouseEquipment_Tapestry_05.png"}},
			{name = "Brocade Tapestry", description = "Buy an incredible Brocade Tapestry to decorate your home.", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, thingId = 26381, count = 1, price = 50, icons = {"Product_HouseEquipment_Tapestry_06.png"}},
			{name = "health potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28555, count = 1000, icons = {"28553.png"}},
			{name = "strong health potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28556, count = 1000, icons = {"28554.png"}},
			{name = "great health potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28557, count = 1000, icons = {"28555.png"}},
			{name = "ultimate health potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28558, count = 1000, icons = {"28556.png"}},
			{name = "supreme health potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28559, count = 1000, icons = {"28557.png"}},
			{name = "mana potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28565, count = 1000, icons = {"28563.png"}},
			{name = "strong mana potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28566, count = 1000, icons = {"28564.png"}},
			{name = "great mana potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28567, count = 1000, icons = {"28565.png"}},
			{name = "ultimate mana potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28568, count = 1000, icons = {"28566.png"}},
			{name = "great spirit potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28575, count = 1000, icons = {"28573.png"}},
			{name = "ultimate spirit potion cask", type = GameStore.OfferTypes.OFFER_TYPE_HOUSE, price = 45, thingId = 28576, count = 1000, icons = {"28574.png"}}
		}
	},

	{
		name = "Extra Services",
		state = GameStore.States.STATE_NONE,
		icons = {"Category_ExtraServices.png"},
		offers = {
			-- NameChange example
			{name = "Character Name Change", type = GameStore.OfferTypes.OFFER_TYPE_NAMECHANGE, price = 20, icons = {"Product_CharacterNameChange.png"}},
			-- Sexchange example
			{name = "Character Sex Change", type = GameStore.OfferTypes.OFFER_TYPE_SEXCHANGE, price = 20, icons = {"Product_CharacterSexChange.png"}},
			-- Promotion example
			--{name = "First Promotion", thingId = 1--[[ed/ms/rp/ek]], type = GameStore.OfferTypes.OFFER_TYPE_PROMOTION, price = 100, icons = {"Product_FirstPromotion.png"}}
		}
	},
	{
		name = "Useful Things",
		state = GameStore.States.STATE_NONE,
		rookgaard = false,
		icons = {"Category_Convenience.png"},
		offers = {
			{name = "Prey Bonus Reroll", state = GameStore.States.STATE_NEW, count = 1, type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS, price = 10, icons = {"Product_UsefulThings_PreyBonusReroll.png"}},
			{name = "5x Prey Bonus Reroll", state = GameStore.States.STATE_NEW, count = 5, type = GameStore.OfferTypes.OFFER_TYPE_PREYBONUS, price = 50, icons = {"Product_UsefulThings_PreyBonusReroll.png"}},
			{name = "Permanent Prey Slot", state = GameStore.States.STATE_NEW, type = GameStore.OfferTypes.OFFER_TYPE_PREYSLOT, price = 150, icons = {"Product_UsefulThings_PermanentPreySlot.png"}},
}
	},
	}

-- For Explanation and information
-- view the readme.md file in github or via markdown viewer.

-- Non-Editable
local runningId = 1
for k, category in ipairs(GameStore.Categories) do
	if category.offers then
		for m, offer in ipairs(category.offers) do
			offer.id = runningId
			runningId = runningId + 1

			if not offer.type then
				offer.type = GameStore.OfferTypes.OFFER_TYPE_NONE
			end
		end
	end
end
