dofile_once("data/scripts/lib/utilities.lua")


local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )
cat_list = { "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps", "cat_mocreeps_black", "cat_mocreeps_white", "cat_mocreeps_spoopy", "cat_mocreeps_spoopy_skittle", "cat_mocreeps_spoopy_frisky", "cat_mocreeps_spoopy_tiger" }
SetRandomSeed( GameGetFrameNum(), pos_x + entity_id )
local goldenCatSeed = Random( 1, 50)
local valid = true
pos_x, pos_y = EntityGetTransform( entity_id )

local rnd = Random( 1, #cat_list )
local target = cat_list[rnd]

if goldenCatSeed == 1 then
	EntityLoad( "data/entities/animals/cat_mocreeps_golden.xml", pos_x, pos_y )
	valid = false
elseif goldenCatSeed == 2 then
	EntityLoad( "data/entities/animals/cat_mocreeps_spoopy_golden.xml", pos_x, pos_y )
	valid = false
end

if valid == true then
	EntityLoad( "data/entities/animals/" .. target .. ".xml", pos_x, pos_y )
end