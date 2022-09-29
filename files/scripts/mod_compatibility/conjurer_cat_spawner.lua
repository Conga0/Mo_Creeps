dofile_once("data/scripts/lib/utilities.lua")
	
local ambrosiaCats = ModSettingGet( "mo_creeps.congacat_cat_immortal" )


if ambrosiaCats == true then

	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	cat_list = { "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps_white", "cat_mocreeps_spoopy", "cat_mocreeps_spoopy_skittle", "cat_mocreeps_spoopy_frisky", "cat_mocreeps_spoopy_tiger" }
	SetRandomSeed( GameGetFrameNum(), pos_x + entity_id )
	local goldenCatSeed = Random( 1, 50)
	local rainbowCatSeed = Random( 1, 50)
	local esotericCatSeed = Random( 1, 100)
	local valid = true
	pos_x, pos_y = EntityGetTransform( entity_id )

	local rnd = Random( 1, #cat_list )
	local target = cat_list[rnd]

	if esotericCatSeed == 100 then
		EntityLoad( "data/entities/animals/cat_immortal/cat_mocreeps_esoteric.xml", pos_x, pos_y )
		valid = false
	end

	if ((rainbowCatSeed == 50) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_immortal/cat_mocreeps_sorako.xml", pos_x, pos_y )
		valid = false
	elseif rainbowCatSeed >= 47 then
		EntityLoad( "data/entities/animals/cat_immortal/cat_mocreeps_wizard.xml", pos_x, pos_y )
		valid = false
	end
	--OMG GUYS I'M A RAINBOW KITTY! - Sorako

	if ((goldenCatSeed == 1) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_immortal/cat_mocreeps_golden.xml", pos_x, pos_y )
		valid = false
	elseif ((goldenCatSeed == 2) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_immortal/cat_mocreeps_spoopy_golden.xml", pos_x, pos_y )
		valid = false
	elseif ((goldenCatSeed >= 40) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_immortal/cat_mocreeps_skateboard.xml", pos_x, pos_y )
		valid = false
	end

	if valid == true then
		EntityLoad( "data/entities/animals/cat_immortal/" .. target .. ".xml", pos_x, pos_y )
	end

else

	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	cat_list = { "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps_white", "cat_mocreeps_spoopy", "cat_mocreeps_spoopy_skittle", "cat_mocreeps_spoopy_frisky", "cat_mocreeps_spoopy_tiger" }
	SetRandomSeed( GameGetFrameNum(), pos_x + entity_id )
	local goldenCatSeed = Random( 1, 50)
	local rainbowCatSeed = Random( 1, 50)
	local esotericCatSeed = Random( 1, 100)
	local valid = true
	pos_x, pos_y = EntityGetTransform( entity_id )

	local rnd = Random( 1, #cat_list )
	local target = cat_list[rnd]

	if esotericCatSeed == 100 then
		EntityLoad( "data/entities/animals/cat_mocreeps_esoteric.xml", pos_x, pos_y )
		valid = false
	end

	if ((rainbowCatSeed == 50) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_mocreeps_sorako.xml", pos_x, pos_y )
		valid = false
	elseif rainbowCatSeed >= 47 then
		EntityLoad( "data/entities/animals/cat_mocreeps_wizard.xml", pos_x, pos_y )
		valid = false
	end
	--OMG GUYS I'M A RAINBOW KITTY! - Sorako

	if ((goldenCatSeed == 1) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_mocreeps_golden.xml", pos_x, pos_y )
		valid = false
	elseif ((goldenCatSeed == 2) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_mocreeps_spoopy_golden.xml", pos_x, pos_y )
		valid = false
	elseif ((goldenCatSeed >= 40) and (valid == true)) then
		EntityLoad( "data/entities/animals/cat_mocreeps_skateboard.xml", pos_x, pos_y )
		valid = false
	end

	if valid == true then
		EntityLoad( "data/entities/animals/" .. target .. ".xml", pos_x, pos_y )
	end
end