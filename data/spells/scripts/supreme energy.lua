--Created with OSM--
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_HOLYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT,CONST_ME_FIREWORK_BLUE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, -1400, 1.6, -1900)

arr = {
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
{0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0},
{0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0},
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 0},
{0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0},
{0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0},
{0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0},
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell(cid, var)
    return doCombat(cid, combat, var)
end