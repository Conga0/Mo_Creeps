dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local eid = EntityLoad( "data/entities/animals/devourer_magic.xml", pos_x, pos_y )
	
	EntityAddComponent( eid, "CellEaterComponent", 
	{ 
		radius="21",
		eat_probability="100",
	} )
	
	EntityKill( entity_id )
end