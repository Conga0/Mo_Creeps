dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform(entity_id)

local enemy_list = { "gazer_greater", "devourer_magic", "devourer_ghost", "hideous_mass" }


SetRandomSeed( pos_x, pos_y )
local rnd = Random( 1, #enemy_list )
local target = enemy_list[rnd]

EntityLoad("data/entities/animals/" .. target .. ".xml", pos_x, pos_y)

EntityKill(entity_id)
