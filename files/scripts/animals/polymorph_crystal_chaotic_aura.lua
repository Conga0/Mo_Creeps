dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )
local r = 128

local targets = EntityGetInRadiusWithTag( x, y, r, "mortal" )

for i,v in ipairs( targets ) do
	if ( v ~= entity_id ) then
		local valid = true
		
		if ( c ~= nil ) then
			for a,b in ipairs( c ) do
				local comps = EntityGetComponent( b, "GameEffectComponent", "effect_polymorph_short" )
				
				
				if ( comps ~= nil ) then
					valid = false
					break
				end
			end
		end
		
		if valid then
			local target_x,target_y = EntityGetTransform( v )
			local eid = EntityLoad( "mods/mo_creeps/files/entities/projectiles/orb_poly_crystal_chaotic.xml", target_x, target_y )
		end
	end
end