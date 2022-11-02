dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )
local r = 128

local targets = EntityGetInRadiusWithTag( x, y, r, "mortal" )

for i,v in ipairs( targets ) do
	if ( v ~= entity_id ) then
		local c = EntityGetAllChildren( v )
		local valid = true
		
		if ( c ~= nil ) then
			for a,b in ipairs( c ) do
				local comps = EntityGetComponent( b, "GameEffectComponent", "effect_polymorph_short" )
				if ( EntityGetName( b ) == "creep_debuff_polycrystal" ) or ( comps ~= nil ) then
					valid = false
					break
				end
			end
		end

		if ( EntityGetName( v ) == "Chaotic Polymorph Crystal" ) or ( EntityGetName( v ) == "Polymorph Crystal" ) then
			valid = false
		end
		
		if valid then
			local eid = EntityLoad( "mods/mo_creeps/files/scripts/animals/poly_crystal_chaotic_attack/debuff.xml", target_x, target_y )
			EntityAddChild( v, eid )
		end
	end
end

