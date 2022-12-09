dofile_once("data/scripts/lib/utilities.lua")


local entity_id = GetUpdatedEntityID()
local root_id = EntityGetRootEntity( entity_id )
local pos_x, pos_y = EntityGetTransform( entity_id )
local player = EntityGetInRadiusWithTag(pos_x, pos_y, 64, "player_unit") --This should probably check for genome differences instead, to allow infighting

if #player >= 1 then
	EntitySetComponentsWithTagEnabled(entity_id, "enabled_by_liquid", true)
else
	EntitySetComponentsWithTagEnabled(entity_id, "enabled_by_liquid", false)
end
