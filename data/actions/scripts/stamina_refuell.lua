function onUse(cid, item, fromPosition, itemEx, toPosition)
   
   local stamina_full = 42 * 60 -- config. 42 = horas
   local player = Player(cid)
   
   if player:getStamina() >= stamina_full then
      player:sendCancelMessage("Your stamina is already full.")
   elseif player:getPremiumDays() < 1 then
      player:sendCancelMessage("You must have a premium account.")
   else
      player:setStamina(stamina_full)
      player:sendTextMessage(MESSAGE_INFO_DESCR, "Your stamina has been refilled.")
      Item(item.uid):remove(1) -- player:removeItem(item.uid)   ???   
   end
   
   return true
end