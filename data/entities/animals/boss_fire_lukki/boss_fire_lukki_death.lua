dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_boss_fire_lukki" )

	---THIS IS STILL UNFINISHED, REMOVE THIS COMMENT IF DONE

	-- do some kind of an effect? throw some particles into the air?

		EntityLoad( "data/entities/items/pickup/heart_better.xml", pos_x, pos_y )
		EntityLoad( "data/entities/items/wand_unshuffle_08.xml", pos_x - 8, pos_y + 12 )
		EntityLoad( "data/entities/items/wand_unshuffle_10.xml", pos_x + 8, pos_y + 12 )
		--ConvertMaterialEverywhere( CellFactory_GetType( "fire" ), CellFactory_GetType( "smoke" ) ) --Shifts all fire out of the world permanently.
		--ConvertMaterialEverywhere( CellFactory_GetType( "liquid_fire" ), CellFactory_GetType( "smoke" ) ) --Shifts all "fire" out of the world permanently.

        if flag_status then
            --CreateItemActionEntity( "MOCREEPS_BUNGAL_SHIFT", pos_x - 16, pos_y )
            --CreateItemActionEntity( "MOCREEPS_MASS_MATERIA_CONVERSION", pos_x + 16, pos_y )
            EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  pos_x + 8, pos_y )
        else
            --CreateItemActionEntity( "MOCREEPS_BUNGAL_SHIFT", pos_x - 16, pos_y )
            --CreateItemActionEntity( "MOCREEPS_MASS_MATERIA_CONVERSION", pos_x + 16, pos_y )
            EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  pos_x + 8, pos_y )
			EntityLoad( "mods/mo_creeps/files/entities/props/statue_fire_lukki.xml", 4288, 2331 )
        end

		
		EntityLoad( "mods/mo_creeps/files/entities/buildings/portal_fire_lukki_input.xml",  pos_x, pos_y - 8 )
	
	if ModIsEnabled("raksa") == false then
		GameAddFlagRun( "mocreeps_miniboss_boss_fire_lukki" )
		AddFlagPersistent( "mocreeps_card_unlocked_fire_lukki" )
		AddFlagPersistent( "mocreeps_card_unlocked_fire_lukki_spell" )
	end
	
	--StatsLogPlayerKill( entity_id )

	--EntityKill( entity_id )
end