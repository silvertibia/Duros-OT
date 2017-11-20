function onThink(cid, item, fromPosition, toPosition)

for _, name in ipairs(getOnlinePlayers()) do
local player = getPlayerByName(name)
if getPlayerStorageValue(player,55778) > 1 then
setPlayerStorageValue(player,55778,getPlayerStorageValue(player) - 1)
elseif getPlayerStorageValue(player,55778) == 1 then
setPlayerStorageValue(player,55778,0)
end
end
end