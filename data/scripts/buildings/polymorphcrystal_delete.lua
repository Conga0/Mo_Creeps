dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )
local r = 256

function collision_trigger()
	local targets = EntityGetInRadiusWithTag( x, y, r, "mocreeps_polymorphcrystal" )

	for i,v in ipairs( targets ) do
		EntityKill( v )
	end

	EntityKill( entity_id )
end