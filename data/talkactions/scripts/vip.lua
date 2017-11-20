local STORAGE = 55778
function onSay(player, words, param)
 local cur = math.max(player:getStorageValue(STORAGE) - os.time(), 0)
 if cur == 0 then
  player:sendTextMessage(MESSAGE_INFO_DESCR, "No tienes acceso vip")
  return false
 end
 local days = math.floor(cur / (60 * 60 * 24))
 cur = cur - days * 60 * 60 * 24
 local hours = math.floor(cur / (60 * 60))
 cur = cur - hours * 60 * 60
 local minutes = math.floor(cur / 60)
 player:sendTextMessage(MESSAGE_INFO_DESCR, string.format("You have %d days, %d hours and %d minutes left on VIP.", days, hours, minutes))
 return false
end