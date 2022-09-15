dofile_once("data/scripts/lib/utilities.lua")
dofile_once("data/scripts/perks/perk.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )
local r = 256

function collision_trigger()
	local targets = EntityGetInRadiusWithTag( x, y, r, "mocreeps_polymorphcrystal" )

	for i,v in ipairs( targets ) do
		EntityKill( v )
	end
	
	-- reward
	EntityLoad("data/entities/particles/image_emitters/magical_symbol.xml", x, y)
	EntityLoad("mods/mo_creeps/files/entities/particle_generators/smoke_cloud_generator.xml", x, y)
	EntityLoad("mods/mo_creeps/files/entities/props/statue_master_of_trolling.xml", 4288, 2169)
	GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
	AddFlagPersistent( "mocreeps_card_unlocked_rage_aura" )

	--cleanup
	EntityKill( entity_id )
end