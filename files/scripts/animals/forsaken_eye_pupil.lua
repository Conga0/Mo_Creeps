dofile_once( "data/scripts/lib/utilities.lua" )

local entity_id = GetUpdatedEntityID()
local root_id = EntityGetRootEntity( entity_id )
local x,y = EntityGetTransform( root_id )

local angle = 0
local p = EntityGetClosestWithTag(x,y,"mortal")

GamePrint("target is " .. p)

if ( p ~= nil ) then
	
	local px,py = EntityGetTransform( p )
	
	angle = get_direction( x, y, px, py )
end

angle = math.pi + angle

EntitySetTransform( entity_id, x + math.cos( angle ) * 3, y - math.sin( angle ) * 3 )
