dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local root_id = EntityGetRootEntity( entity_id )

-- kill
comp = EntityGetComponentIncludingDisabled( root_id, "DamageModelComponent" )[1]
if( comp ~= nil ) then
    ComponentSetValue( comp, "kill_now", "1" )
end