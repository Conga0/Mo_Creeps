dofile_once("data/scripts/lib/utilities.lua")

local targets = EntityGetWithTag( "player_unit" )

local target = targets[1]

if target ~= nil then
    EntitySetDamageFromMaterial( target, "lava", 0.003)
end