function onSay(cid,words,param)
local vipstorage = 55778
        if param ~= nil then
            setPlayerStorageValue(getPlayerByName(param), vipstorage, -1)
            doPlayerSendTextMessage(cid, 19, "Removiste una VIP")
            doPlayerSendTextMessage(getPlayerByName(param), 19, "Se te acabo el tiempo VIP.")
        end                                        
        return TRUE
end