function onUse(cid, item, fromPosition, itemEx, toPosition)
local daysvalue = 1 * 60
local daily = getPlayerStorageValue(cid, 13546)
if (daily == -1) then
daily = 0
end
if getPlayerStorageValue(cid, 13545) - os.time() <= 0 then
doPlayerAddItem(cid, 16101, 2)
time = os.time() + daysvalue
setPlayerStorageValue(cid, 13545, time)
setPlayerStorageValue(cid, 13546, daily+1)
local daily = getPlayerStorageValue(cid, 13546)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Terminaste TC4 recibe 200tc, recuerda que debes esperar " .. daily .. " horas para volver a hacerla.")

else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Debes esperar 24hrs para volver a hacer la quest. Diponible a las : " .. os.date("%H:%M:%S", getPlayerStorageValue(cid, 13545)) .. ".")
end
return true
end