dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )

EntityLoad( "mods/mo_creeps/files/entities/special/holy_beam_attack.xml", pos_x, pos_y )
