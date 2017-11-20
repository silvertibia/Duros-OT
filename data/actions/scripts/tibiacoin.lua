function onUse(player, item, fromPosition, target, toPosition, isHotkey)
local points = 10 --aqui você
  db.query("UPDATE `accounts` SET `coins` = `coins` + '" .. points .. "' WHERE `id` = '" .. player:getAccountId() .. "';")
  player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Recibidos tibia"..points.." coins")
  item:remove(1)
  return true
end