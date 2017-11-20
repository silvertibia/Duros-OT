local effects = {

{position = Position(32373, 32231, 7), text = 'WAR ANTIENTROSA!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32360, 32239, 7), text = 'EVENTS ROOM!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32377, 32239, 7), text = 'MONSTERS!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32374, 32239, 7), text = 'TRAINING ISLAND!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(68, 65, 6), text = 'DEMON QUEST!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(72, 65, 6), text = 'INQUISITION!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(64, 65, 6), text = 'ANIHILATOR!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(39, 42, 6), text = 'TEMPLO!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(33559, 31280, 11), text = 'TIME OF BOSSES!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(33646, 31261, 11), text = 'TIME OF BOSSES!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(33436, 31247, 11), text = 'TIME OF BOSSES!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(33479, 31315, 7), text = 'TIME OF BOSSES!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32380, 32239, 7), text = 'QUEST!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32378, 32239, 7), text = 'TP BOSSES!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32348, 32218, 7), text = 'TEMPLO!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32584, 31401, 8), text = 'Click here for final mission!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32375, 32246, 7), text = 'Venore!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32373, 32246, 7), text = 'Barco!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32377, 32246, 7), text = 'Darashia!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32379, 32246, 7), text = 'Roshamuul!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32382, 32239, 7), text = 'Museo!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32310, 32204, 6), text = 'Thais!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32917, 32076, 7), text = 'Thais!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(32920, 32070, 7), text = 'Thais!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(33215, 32460, 8), text = 'Thais!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(33555, 32385, 6), text = 'Thais!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(3379, 3918, 7), text = 'Tc 4!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(3379, 3916, 7), text = 'Tc 4!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(3379, 3917, 7), text = 'Tc 4!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(3379, 3920, 7), text = 'Tc 5!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(3379, 3921, 7), text = 'Tc 5!!', effect = CONST_ME_GROUNDSHAKER},
{position = Position(3379, 3924, 7), text = 'Heart of destruction', effect = CONST_ME_GROUNDSHAKER},


}

function onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7, 7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end