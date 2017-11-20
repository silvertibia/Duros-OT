-------- SPELL CREATED BY @teev.  ---------

-- =============== COMBAT VARS ===============
-- Areas/Combat for 0ms
local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_HOLYDAMAGE)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{2}}))
function getDmg_Brush(cid, level, maglevel)
 return (250)*-2,(500)*-1,2
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_SMALLHOLY}local combat0_Brush = createCombatObject()
setCombatParam(combat0_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
setCombatParam(combat0_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush,createCombatArea({{0, 2, 0},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
 return (150)*-2,(450)*-2
end
setCombatCallback(combat0_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat0_Brush = {CONST_ANI_ENERGYBALL,0,1,0,2,0,3,0,4,1,1,1,2,1,3,1,4,-1,4,-1,3,-1,2,-1,1}local combat0_Brush_2 = createCombatObject()
setCombatParam(combat0_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat0_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush_2,createCombatArea({{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
 return (150)*-2,(450)*-2 
end
setCombatCallback(combat0_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat0_Brush_2 = {CONST_ANI_ENERGY,-1,0,-2,1,-2,0,-2,-1,-3,2,-3,0,-3,-2,-4,3,-4,0,-4,-3,-5,4,-5,0,-5,-4,1,0,3,2,3,0,3,-2,2,1,4,0,4,3,4,-3,2,0,2,-1,5,4,5,-4,5,0}local combat0_Brush_3 = createCombatObject()
setCombatParam(combat0_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat0_Brush_3, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat0_Brush_3,createCombatArea({{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{0, 2, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
 return (150)*-2,(450)*-2 
end
setCombatCallback(combat0_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat0_Brush_3 = {CONST_ANI_EXPLOSION,0,-1,1,-1,-1,-1,-1,-2,-1,-3,-1,-4,0,-4,0,-3,0,-2,1,-2,1,-3,1,-4}

-- Areas/Combat for 1000ms
local combat10_Brush_2 = createCombatObject()
setCombatParam(combat10_Brush_2, COMBAT_PARAM_EFFECT, CONST_ME_PURPLEENERGY)
setCombatParam(combat10_Brush_2, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat10_Brush_2,createCombatArea({{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}}))
function getDmg_Brush_2(cid, level, maglevel)
 return (150)*-2,(450)*-2 
end
setCombatCallback(combat10_Brush_2, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_2")
local dfcombat10_Brush_2 = {CONST_ANI_ENERGY,5,4,5,0,5,-4,4,3,4,0,4,-3,3,2,3,0,3,-2,2,1,2,0,2,-1,1,0,-1,0,-2,1,-2,0,-2,-1,-3,2,-3,0,-3,-2,-4,3,-4,0,-4,-3,-5,4,-5,0,-5,-4}local combat10_Brush = createCombatObject()
setCombatParam(combat10_Brush, COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
setCombatParam(combat10_Brush, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat10_Brush,createCombatArea({{0, 2, 0},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1}}))
function getDmg_Brush(cid, level, maglevel)
 return (150)*-2,(450)*-2 
end
setCombatCallback(combat10_Brush, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush")
local dfcombat10_Brush = {CONST_ANI_ENERGYBALL,1,4,1,3,1,2,1,1,0,4,0,3,0,2,0,1,-1,4,-1,3,-1,2,-1,1}local combat10_Brush_3 = createCombatObject()
setCombatParam(combat10_Brush_3, COMBAT_PARAM_EFFECT, CONST_ME_YELLOWENERGY)
setCombatParam(combat10_Brush_3, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatArea(combat10_Brush_3,createCombatArea({{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{1, 1, 1},
{0, 2, 0}}))
function getDmg_Brush_3(cid, level, maglevel)
 return (150)*-2,(450)*-2 
end
setCombatCallback(combat10_Brush_3, CALLBACK_PARAM_LEVELMAGICVALUE, "getDmg_Brush_3")
local dfcombat10_Brush_3 = {CONST_ANI_EXPLOSION,1,-1,1,-2,1,-3,1,-4,0,-1,0,-2,0,-3,0,-4,-1,-1,-1,-2,-1,-3,-1,-4}

-- =============== CORE FUNCTIONS ===============
local function RunPart(c,cid,var,dirList,dirEmitPos) -- Part
 if (isCreature(cid)) then
 doCombat(cid, c, var)
 if (dirList ~= nil) then -- Emit distance effects
 local i = 2;
 while (i < #dirList) do
 doSendDistanceShoot(dirEmitPos,{x=dirEmitPos.x-dirList[i],y=dirEmitPos.y-dirList[i+1],z=dirEmitPos.z},dirList[1])
 i = i + 2
 end 
end
 end
end

function onCastSpell(cid, var)
 local startPos = getCreaturePosition(cid)
 RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
 RunPart(combat0_Brush,cid,var,dfcombat0_Brush,startPos)
 RunPart(combat0_Brush_2,cid,var,dfcombat0_Brush_2,startPos)
 RunPart(combat0_Brush_3,cid,var,dfcombat0_Brush_3,startPos)
 addEvent(RunPart,1000,combat10_Brush_2,cid,var,dfcombat10_Brush_2,startPos)
 addEvent(RunPart,1000,combat10_Brush,cid,var,dfcombat10_Brush,startPos)
 addEvent(RunPart,1000,combat10_Brush_3,cid,var,dfcombat10_Brush_3,startPos)
 return true
end