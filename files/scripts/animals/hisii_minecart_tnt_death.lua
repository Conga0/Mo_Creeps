dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local seasonalSetting = ModSettingGet( "mo_creeps.seasonal_events" )

	local eid

	if seasonalSetting == true then
		if ( month == 12 ) and ( day >= 22 ) then
			eid = EntityLoad( "data/entities/animals/miner_santa.xml", pos_x, pos_y )
		else
			eid = EntityLoad( "data/entities/animals/miner_weak.xml", pos_x, pos_y )
		end
	else
		eid = EntityLoad( "data/entities/animals/miner_weak.xml", pos_x, pos_y )
	end
	
	EntityAddComponent( eid, "LuaComponent", 
	{ 
		execute_every_n_frame = "-1",
		script_death = "data/scripts/items/drop_money4x.lua",
		remove_after_executed = "1",
	} )
	--EntityKill( entity_id )
end