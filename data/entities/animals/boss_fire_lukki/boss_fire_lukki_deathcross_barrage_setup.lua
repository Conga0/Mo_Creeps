dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )


local cid = EntityLoad( "data/entities/animals/boss_fire_lukki/projectiles/deathcross_barrage_setup.xml", pos_x, pos_y )
EntityAddChild( entity_id, cid )


