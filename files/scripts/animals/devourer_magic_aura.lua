dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )
local r = 105

local targets = EntityGetInRadiusWithTag( x, y, r, "player_unit" )

for i,v in ipairs( targets ) do
	if ( v ~= entity_id ) then
		local c = EntityGetAllChildren( v )
		local valid = true
		
		if valid then
			local eid = EntityLoad( "mods/mo_creeps/files/entities/misc/effect_mana_degradation.xml", x, y )
			EntityAddChild( v, eid )
		end
	end
end