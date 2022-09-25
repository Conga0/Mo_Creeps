dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	cat_list = { "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps_white", "cat_mocreeps_spoopy", "cat_mocreeps_spoopy_skittle", "cat_mocreeps_spoopy_frisky", "cat_mocreeps_spoopy_tiger" }
	SetRandomSeed( GameGetFrameNum(), pos_x + entity_id )
	local goldenCatSeed = Random( 1, 50)
	local rainbowCatSeed = Random( 1, 50)
	local esotericCatSeed = Random( 1, 100)

	local catcount = 5

	repeat
		
		pos_x, pos_y = EntityGetTransform( entity_id )
		pos_x = pos_x + Random(-80, 80)
		pos_y = pos_y + Random(-50, -30)

        local rnd = Random( 1, #cat_list )
		local target = cat_list[rnd]

		EntityLoad( "data/entities/animals/" .. target .. ".xml", pos_x, pos_y )

		catcount = catcount - 1

	until (catcount < 1)

	if goldenCatSeed == 1 then
		EntityLoad( "data/entities/animals/cat_mocreeps_golden.xml", pos_x, pos_y )
	elseif goldenCatSeed == 2 then
		EntityLoad( "data/entities/animals/cat_mocreeps_spoopy_golden.xml", pos_x, pos_y )
	end

	if rainbowCatSeed == 50 then
		EntityLoad( "data/entities/animals/cat_mocreeps_sorako.xml", pos_x, pos_y )
	end
	--OMG GUYS I'M A RAINBOW KITTY! - Sorako

	if esotericCatSeed == 100 then
		EntityLoad( "data/entities/animals/cat_mocreeps_esoteric.xml", pos_x, pos_y )
	end
	
	EntityKill( entity_id )
end