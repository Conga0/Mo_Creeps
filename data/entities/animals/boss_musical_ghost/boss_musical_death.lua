dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" )

	-- do some kind of an effect? throw some particles into the air?


		EntityLoad( "data/entities/items/pickup/heart.xml", pos_x + 8, pos_y )
		perk_spawn( pos_x, pos_y, "MOCREEPS_GHOSTLY_VISION" )

	if (flag_status ~= 1) then
		CreateItemActionEntity( "MOCREEPS_MUSICAL_STRIKE", pos_x - 16, pos_y )
		CreateItemActionEntity( "MOCREEPS_REVERBERATION", pos_x + 16, pos_y )
		EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  pos_x - 8, pos_y )
	end
	
	GameAddFlagRun( "mocreeps_miniboss_musical_boss" )
	AddFlagPersistent( "mocreeps_card_unlocked_musical_boss" )
	
	--StatsLogPlayerKill( entity_id )

	--EntityKill( entity_id )
end
