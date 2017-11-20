function onUse(cid, item, fromPosition, itemEx, toPosition)
local daysvalue = 2 * 24 * 60 * 60
local daily = getPlayerStorageValue(cid, 13548)
if (daily == -2) then
daily = 0
end
if getPlayerStorageValue(cid, 13547) - os.time() <= 0 then
doPlayerAddItem(cid, 16106, 1)
time = os.time() + daysvalue
setPlayerStorageValue(cid, 13547, time)
setPlayerStorageValue(cid, 13548, daily+2)
local daily = getPlayerStorageValue(cid, 13548)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Terminaste TC4 recibe tu MEDUSA VIP, recuerda que debes esperar " .. daily .. " dias para volver a obtener.")

else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Debes esperar 2 dias desde la ultima vez para volver a obtener MEDUSA VIP. Diponible a las : " .. os.date("%H:%M:%S", getPlayerStorageValue(cid, 13547)) .. ".")
end
return true
end
