local rewards = {
    {12544, 1},
    {16107, 1},
    {2160, 20},
    
}

function onThink(interval, lastExecution)
    local players = Game.getPlayers()
    
    if #players > 0 and #rewards > 0 then
        local uid, n = math.random(1, #players), math.random(1, #rewards)
        local ganhador = players[uid]
        local reward, count = rewards[n][1], rewards[n][2]
        
        if ganhador and reward and count then
            ganhador:addItem(reward, count)
            Game.broadcastMessage('El player '.. ganhador:getName()..' recibio '.. count .. ' '..ItemType(reward):getName()..' gracias a la loteria.', MESSAGE_STATUS_WARNING)
        end
    end
    
    return true
end