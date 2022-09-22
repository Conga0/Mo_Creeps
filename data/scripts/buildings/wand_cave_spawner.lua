dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )

function collision_trigger()

	local year, month, day = GameGetDateAndTimeLocal()
	
	if (day == 1) then
		EntityLoad( "mods/mo_creeps/files/entities/items/wands/custom/wand_of_wonders.xml", pos_x, pos_y )
	else
		EntityLoad( "data/entities/items/wand_unshuffle_03.xml", pos_x, pos_y )
	end

	EntityLoad( "data/entities/items/pickup/powder_stash.xml", pos_x + 16, pos_y )

	EntityLoad( "data/entities/animals/sandcave/poring.xml", pos_x + 8, pos_y )
	EntityLoad( "data/entities/animals/sandcave/poring.xml", pos_x + 36, pos_y )

	EntityKill( entity_id )
end