dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )

	SetRandomSeed( GameGetFrameNum(), pos_x + pos_y )

	-- do some kind of an effect? throw some particles into the air?

	if ( Random( 1, 500 ) == 500 ) then
		EntityLoad( "mods/mo_creeps/files/entities/items/wands/custom/wand_of_wonders.xml", pos_x, pos_y )
	end
end