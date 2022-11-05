dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()

	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	
	EntityLoad( "mods/mo_creeps/files/entities/items/wands/custom/cat_wand.xml", pos_x, pos_y )
	EntityLoad("data/entities/particles/image_emitters/magical_symbol.xml", pos_x, pos_y)
	EntityLoad( "mods/mo_creeps/files/entities/particle_generators/smoke_cloud_generator_nolua.xml", pos_x, pos_y )
	GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/treble_eye/create", pos_x, pos_y)
	GamePlaySound( "data/audio/Desktop/animals.snd", "animals/rat/death", pos_x, pos_y)

	if ModIsEnabled("raksa") == false then
		AddFlagPersistent( "mocreeps_card_unlocked_cat_secret" )
		AddFlagPersistent( "mocreeps_card_unlocked_cat_secret_spell" )

		if ModIsEnabled("nightmare") or ModIsEnabled("purgatory") then
			AddFlagPersistent( "mocreeps_card_unlocked_cat_secret_goldmode" )
		end
	end

	EntityKill( entity_id )
end

