dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )

	EntityLoad( "data/entities/items/pickup/heart.xml", pos_x, pos_y )
	EntityLoad( "data/entities/items/pickup/heart.xml", pos_x + 8, pos_y )
	EntityLoad( "data/entities/items/pickup/heart.xml", pos_x - 8, pos_y )

	--EntityKill( entity_id )
end