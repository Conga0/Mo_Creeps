dofile_once("data/scripts/lib/utilities.lua")

local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

if( GlobalsGetValue("MISC_PANDORA_CHEST_RAIN") ~= "1" ) then

	local chests_pandora = EntityGetWithTag( "chest_pandora" )
	if ( #chests_pandora > 0 ) then
		local collected = false
		local players = EntityGetWithTag( "player_unit" )
		
		if ( #players > 0 ) then
			local player_id = players[1]
			local px, py = EntityGetTransform( player_id )
			
			for i,chest_id in ipairs(chests_pandora) do
				local cx, cy = EntityGetTransform( chest_id )
				
				local distance = math.abs( x - cx ) + math.abs( y - cy )
			
				if ( distance < 48 ) then
					local eid = EntityLoad("mods/mo_creeps/files/entities/misc/chest_rain_pandora.xml", px, py)
					EntityAddChild( player_id, eid )
					EntityLoad("data/entities/particles/image_emitters/altar_tablet_curse_symbol.xml", cx, cy)
					collected = true
					EntityKill( chest_id )
				end
			end
		end
		
		if collected then
			GlobalsSetValue("MISC_PANDORA_CHEST_RAIN", "1" )
			GamePrintImportant( "$log_altar_magic", "" )

			-- Spawn Statue ------------------------------------------------------
	
			if (ModIsEnabled("nightmare") or ModIsEnabled("purgatory")) and HasFlagPersistent( "mocreep_misc_pandora_chest_rain_goldmode" ) == false then
				EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_pandora_rain.xml", 4351, 2150 )
				AddFlagPersistent( "mocreep_misc_pandora_chest_rain_goldmode" )
			elseif HasFlagPersistent( "mocreep_misc_pandora_chest_rain" ) == false then
				EntityLoad( "mods/mo_creeps/files/entities/props/statue_pandora_rain.xml", 4351, 2150 )
				AddFlagPersistent( "mocreep_misc_pandora_chest_rain" )
			end
		end
	end
end