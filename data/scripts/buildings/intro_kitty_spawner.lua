dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	cat_list = { "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps_white" }
	SetRandomSeed( GameGetFrameNum(), pos_x + entity_id )

	local catcount = 5

	repeat
		
		pos_x, pos_y = EntityGetTransform( entity_id )
		pos_x = pos_x + Random(-80, 80)
		pos_y = pos_y + Random(-20, 4)

        local rnd = Random( 1, #cat_list )
		local target = cat_list[rnd]

		EntityLoad( "data/entities/animals/" .. target .. ".xml", pos_x, pos_y )

		catcount = catcount - 1

	until (catcount < 1)
	
	EntityKill( entity_id )
end