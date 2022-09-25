dofile_once("data/scripts/lib/utilities.lua")


local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )
cat_list = { "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps_white", "cat_mocreeps_spoopy", "cat_mocreeps_spoopy_skittle", "cat_mocreeps_spoopy_frisky", "cat_mocreeps_spoopy_tiger" }
SetRandomSeed( GameGetFrameNum(), pos_x + entity_id )
local goldenCatSeed = Random( 1, 20)
local rainbowCatSeed = Random( 1, 25)
local esotericCatSeed = Random( 1, 50)
local valid = true
pos_x, pos_y = EntityGetTransform( entity_id )

local rnd = Random( 1, #cat_list )
local target = cat_list[rnd]

if esotericCatSeed == 50 then
	EntityLoad( "data/entities/animals/cat_mocreeps_esoteric.xml", pos_x, pos_y )
	valid = false
end

if ((rainbowCatSeed == 25) and (valid == true)) then
	EntityLoad( "data/entities/animals/cat_mocreeps_sorako.xml", pos_x, pos_y )
	valid = false
end
--OMG GUYS I'M A RAINBOW KITTY! - Sorako

if ((goldenCatSeed == 1) and (valid == true)) then
	EntityLoad( "data/entities/animals/cat_mocreeps_golden.xml", pos_x, pos_y )
	valid = false
elseif ((goldenCatSeed == 2) and (valid == true)) then
	EntityLoad( "data/entities/animals/cat_mocreeps_spoopy_golden.xml", pos_x, pos_y )
	valid = false
end

if valid == true then
	EntityLoad( "data/entities/animals/" .. target .. ".xml", pos_x, pos_y )
end
