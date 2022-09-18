dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )

	local eid = EntityLoad( "data/entities/animals/shotgunner.xml", pos_x, pos_y )
	
	EntityAddComponent( eid, "LuaComponent", 
	{ 
		execute_every_n_frame = "-1",
		script_death = "data/scripts/items/drop_money4x.lua",
		remove_after_executed = "1",
	} )
	--EntityKill( entity_id )
end