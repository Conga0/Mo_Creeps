
dofile("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID() 
local player = EntityGetRootEntity( entity_id ) 

if player == nil then player = EntityGetWithTag("player_unit")[1] end

--Removes swapper effect to player
local comp_lua = EntityGetComponentIncludingDisabled( player, "LuaComponent" )
if ( comp_lua ~= nil ) then
	for i,v in ipairs( comp_lua ) do
		local name = ComponentGetValue2( v, "script_damage_received" )
		
		if ( name == "mods/mo_creeps/files/scripts/status_effects/plagiarize_swapper.lua" ) then
			EntityRemoveComponent(player, v)
		end
	end
end
