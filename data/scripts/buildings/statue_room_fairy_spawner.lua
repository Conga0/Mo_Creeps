dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local eid = EntityLoad( "data/entities/animals/secret/fairy_cheap.xml", pos_x, pos_y )
	local eid = EntityLoad( "data/entities/animals/secret/fairy_cheap.xml", pos_x + 40, pos_y )
	local eid = EntityLoad( "data/entities/animals/secret/fairy_cheap.xml", pos_x - 40, pos_y )
	local eid = EntityLoad( "data/entities/animals/secret/fairy_cheap.xml", pos_x, pos_y + 40 )
	local eid = EntityLoad( "data/entities/animals/secret/fairy_cheap.xml", pos_x, pos_y - 40 )
	
	EntityKill( entity_id )
end