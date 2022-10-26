dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" )

	SetRandomSeed( GameGetFrameNum(), pos_x + pos_y + entity_id )

	-- do some kind of an effect? throw some particles into the air?

	if ( Random( 1, 2 ) == 2 ) then
		EntityLoad( "data/entities/items/pickup/heart.xml", pos_x, pos_y )
	end

	if ( Random( 1, 30 ) == 30 ) then
		EntityLoad( "data/entities/items/pickup/heart_fullhp.xml", pos_x, pos_y )
	end

	if ( Random( 1, 20 ) == 20 ) then
		EntityLoad( "mods/mo_creeps/files/entities/items/wands/custom/wand_of_wonders.xml", pos_x, pos_y )
	end

	local opts = { "MOCREEPS_NUKE_RAY", "MOCREEPS_ICEBALL_RAY", "MOCREEPS_DYNAMITE_RAY", "MOCREEPS_CURSED_ORB_RAY", "MOCREEPS_SAWBLADE_BIG_RAY", "MOCREEPS_NUKE_RAY_ENEMY", "MOCREEPS_ICEBALL_RAY_ENEMY", "MOCREEPS_DYNAMITE_RAY_ENEMY", "MOCREEPS_CURSED_ORB_RAY_ENEMY", "MOCREEPS_SAWBLADE_BIG_RAY_ENEMY" }
	local rnd = Random( 1, #opts )

	if flag_status then
		if ( Random( 1, 2 ) == 2 ) then
			for i=1,1 do
				rnd = Random( 1, #opts )
				CreateItemActionEntity( opts[rnd], pos_x - 8 * 4 + (i-1) * 16, pos_y )
				table.remove( opts, rnd )
			end
		end
	else
		for i=1,3 do
			rnd = Random( 1, #opts )
			CreateItemActionEntity( opts[rnd], pos_x - 8 * 4 + (i-1) * 16, pos_y )
			table.remove( opts, rnd )
		end
		EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  pos_x, pos_y )
	end
	
	if ModIsEnabled("raksa") == false then
		AddFlagPersistent( "mocreeps_card_unlocked_divinebeing" )
	end
	
	--StatsLogPlayerKill( entity_id )

	--EntityKill( entity_id )
end