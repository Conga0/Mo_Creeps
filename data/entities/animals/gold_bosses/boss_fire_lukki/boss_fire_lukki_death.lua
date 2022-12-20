dofile_once("data/scripts/lib/utilities.lua")

function death( damage_type_bit_field, damage_message, entity_thats_responsible, drop_items )
	-- kill self
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_fire_lukki_goldmode" )

	-- do some kind of an effect? throw some particles into the air?

		EntityLoad( "data/entities/items/pickup/heart_better.xml", pos_x, pos_y )
		EntityLoad( "data/entities/items/wand_unshuffle_10.xml", pos_x - 12, pos_y + 12 )
		EntityLoad( "data/entities/items/wand_unshuffle_10.xml", pos_x + 12, pos_y + 12 )
		--ConvertMaterialEverywhere( CellFactory_GetType( "fire" ), CellFactory_GetType( "smoke" ) ) --Shifts all fire out of the world permanently.
		--ConvertMaterialEverywhere( CellFactory_GetType( "liquid_fire" ), CellFactory_GetType( "smoke" ) ) --Shifts all "fire" out of the world permanently.

        if flag_status then
            EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  pos_x + 16, pos_y )
        else
            EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  pos_x + 16, pos_y )
			EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_fire_lukki.xml", 4831, 1049 )
        end

		
		EntityLoad( "mods/mo_creeps/files/entities/buildings/portal_fire_lukki_input.xml",  pos_x, pos_y - 32 )
	
	if ModIsEnabled("raksa") == false then
		GameAddFlagRun( "mocreeps_miniboss_boss_fire_lukki" )
		AddFlagPersistent( "mocreeps_card_unlocked_fire_lukki" )
		AddFlagPersistent( "mocreeps_card_unlocked_fire_lukki_spell" )
		AddFlagPersistent( "mocreeps_card_unlocked_fire_lukki_goldmode" )
	end
	
	--StatsLogPlayerKill( entity_id )

	--EntityKill( entity_id )
end