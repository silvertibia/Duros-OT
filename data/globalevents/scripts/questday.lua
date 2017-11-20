
   local STORAGE = 13540

   function onTime()
   local players = Game.getPlayers()
   for index, player in pairs(players) do
      player:setStorageValue(STORAGE, -1)
   end
   db.query("UPDATE `player_storage` SET `value` = -1 WHERE `key` = ".. STORAGE ..";")
   broadcastMessage('Las quest TC fueron reiniciadas', MESSAGE_STATUS_WARNING)
   return true
   end