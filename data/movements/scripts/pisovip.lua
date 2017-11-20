
 
function onStepIn(cid, item, position, fromPosition)
    local player = Player(cid)
    if not player then
        return true
    end
    
        if player:isVip() then
            player:getPosition():sendMagicEffect(CONST_ME_STUN)
        else
            player:teleportTo(fromPosition)
            player:sendCancelMessage('You do not have any vip days.')
            fromPosition:sendMagicEffect(CONST_ME_POFF)
        end
    
    return true
end