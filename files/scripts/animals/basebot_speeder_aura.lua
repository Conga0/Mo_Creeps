dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )
local r = 128

local targets = EntityGetInRadiusWithTag( x, y, r, "enemy" )

for i,v in ipairs( targets ) do
	if ( v ~= entity_id ) then
		local c = EntityGetAllChildren( v )
		
		local eid = EntityLoad( "mods/mo_creeps/files/entities/misc/effect_basebot_haste.xml", x, y )
		EntityAddChild( v, eid )
	end
end