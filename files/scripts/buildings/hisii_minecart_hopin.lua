dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x,y = EntityGetTransform( entity_id )
local r = 24

local targets = EntityGetInRadius( x, y, r )

for i,v in ipairs( targets ) do
	if ( v ~= entity_id ) and ( EntityGetName( v ) == "minecart_hisii_hopin" ) then
		--GamePrint("HISII MINECART LUA CHECK")
		local target_x,target_y = EntityGetTransform( v )
		local eid = EntityLoad( "data/entities/animals/hisii_minecart.xml", target_x, target_y - 2 )
		EntityKill ( v )
		EntityKill ( entity_id )
	end
end