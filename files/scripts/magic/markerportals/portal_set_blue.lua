dofile("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
			
local x, y = EntityGetTransform( entity_id )
GlobalsSetValue( "mocreep_markerportal_blue_x", tostring(x) )
GlobalsSetValue( "mocreep_markerportal_blue_y", tostring(y) )
GamePrint("You feel the passages of spacetime shift.")
