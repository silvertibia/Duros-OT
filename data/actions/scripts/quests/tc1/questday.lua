function onUse(cid, item, fromPosition, itemEx, toPosition)
local daysvalue = 1 * 24 * 60 * 60
local daily = getPlayerStorageValue(cid, 13541)
if (daily == -1) then
daily = 0
end
if getPlayerStorageValue(cid, 13540) - os.time() <= 0 then
doPlayerAddItem(cid, 16101, 2)
time = os.time() + daysvalue
setPlayerStorageValue(cid, 13540, time)
setPlayerStorageValue(cid, 13541, daily+1)
local daily = getPlayerStorageValue(cid, 13541)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Terminaste TC1 recibe tus 200TC, recuerda que debes esperar 1 dia para volver a hacerla.")

else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Debes esperar 2 dias para volver a hacer la quest. Diponible a las : " .. os.date("%H:%M:%S", getPlayerStorageValue(cid, 13540)) .. ".")
end
return true
end