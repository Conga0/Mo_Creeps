dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()

	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	
	EntityLoad( "data/entities/animals/excavationsite/poring_lukki.xml", pos_x, pos_y )
	EntityLoad( "mods/mo_creeps/files/entities/particle_generators/jellopy_explosion.xml", pos_x, pos_y )
	
	GamePlaySound( "data/audio/Desktop/animals.bank", "animals/statue/appear", pos_x, pos_y )

	EntityKill( entity_id )
end