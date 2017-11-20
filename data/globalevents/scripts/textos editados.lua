local config = {
     positions = {

	     {pos = {x = 32382, y = 32245, z = 7}, text = "ZONA VIP", effects = {CONST_ME_MAGIC_BLUE}},
         {pos = {x = 3379, y = 3906, z = 7}, text = "QUEST 1", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3904, z = 7}, text = "QUEST 1", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3905, z = 7}, text = "QUEST 1", effects = {CONST_ME_MAGIC_BLUE}},
         {pos = {x = 32347, y = 32246, z = 7}, text = "Entrena duro", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 32351, y = 32246, z = 7}, text = "Entrena duro", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 32355, y = 32246, z = 7}, text = "Entrena duro", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 7, y = 3, z = 7}, text = "Orc", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 7, y = 4, z = 7}, text = "Orc", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3385, y = 3909, z = 7}, text = "TC 1", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3385, y = 3908, z = 7}, text = "TC 1", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3385, y = 3910, z = 7}, text = "TC 1", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3385, y = 3922, z = 7}, text = "TC 2", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3385, y = 3920, z = 7}, text = "TC 2", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3385, y = 3921, z = 7}, text = "TC 2", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3386, y = 3904, z = 77}, text = "TEMPLO", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 63, y = 70, z = 6}, text = "YALAHAR", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 68, y = 75, z = 6}, text = "Demon Oak", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 73, y = 70, z = 6}, text = "POI", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 32334, y = 32173, z = 9}, text = "TEMPLO", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3910, z = 7}, text = "WARZONE", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3908, z = 7}, text = "WARZONE", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3909, z = 7}, text = "WARZONE", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3914, z = 7}, text = "TC 3", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3912, z = 7}, text = "TC 3", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 3379, y = 3913, z = 7}, text = "TC 3", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 64, y = 75, z = 6}, text = "FERUMBRAS", effects = {CONST_ME_MAGIC_BLUE}},
		 {pos = {x = 72, y = 75, z = 6}, text = "FIREWALKERS", effects = {CONST_ME_MAGIC_BLUE}},

		
     },
     effects = {CONST_ME_POFF, CONST_ME_TELEPORT, CONST_ME_MAGIC_RED}
}
 
function onThink(interval)
     local people = getOnlinePlayers()
     if #people == 0 then
         return true
     end
 
     for _, info in pairs(config.positions) do
         doCreatureSay(getPlayerByName(people[1]), info.text, TALKTYPE_ORANGE_1, false, 0, info.pos)
         if info.effects and #info.effects > 0 then
             doSendMagicEffect(info.pos, info.effects[math.random(#info.effects)])
         elseif config.effects and #config.effects > 0 then
             doSendMagicEffect(info.pos, config.effects[math.random(#config.effects)])
         end
     end
     return true
end
 