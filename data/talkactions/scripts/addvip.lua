function onSay(cid,words,param)
local vipstorage = 55778
        if param ~= nil then
            setPlayerStorageValue(getPlayerByName(param), vipstorage, 1)
            doPlayerSendTextMessage(cid, 19, "Diste una VIP")
            doPlayerSendTextMessage(getPlayerByName(param), 19, "Te acaban de dar una VIP de 30 dias.")
        end                                        
        return TRUE
end