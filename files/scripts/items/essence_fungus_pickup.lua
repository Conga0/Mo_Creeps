dofile( "data/scripts/game_helpers.lua" )
dofile_once("data/scripts/lib/utilities.lua")
dofile( "data/scripts/perks/perk_list.lua" )

function item_pickup( entity_item, entity_who_picked, item_name )
	-- fetch perk info ---------------------------------------------------

	local pos_x, pos_y = EntityGetTransform( entity_item )
	
	local essence_name = "ESSENCE_NAME_NOT_DEFINED"
	local essence_desc = "ESSENCE_DESCRIPTION_NOT_DEFINED"
	
	edit_component( entity_item, "ItemComponent", function(comp,vars)
		essence_name = ComponentGetValue( comp, "item_name")
		essence_desc = ComponentGetValue( comp, "ui_description")
	end)

	local id = ""
	edit_component( entity_item, "VariableStorageComponent", function(comp,vars)
		id = ComponentGetValue( comp, "value_string" )
	end)
	
	-- add ui icon etc
	local entity_ui = EntityCreateNew( "" )
	EntityAddComponent( entity_ui, "UIIconComponent", 
	{ 
		name = "$item_mocreep_essence_fungus_name",
		description = "$item_mocreep_essence_fungus_desc",
		icon_sprite_file = "mods/mo_creeps/files/ui_gfx/essences/fungus.png"
	})
	EntityAddTag( entity_ui, "essence_effect" )
	EntityAddChild( entity_who_picked, entity_ui )

	if ( id == "fungus" ) then
		local cid = EntityLoad( "mods/mo_creeps/files/entities/misc/essence/essence_fungus.xml", pos_x, pos_y )
		EntityAddChild( entity_who_picked, cid )
	end
	
	GameAddFlagRun( "mocreeps_essence_fungus" )
	AddFlagPersistent( "mocreeps_essence_fungus" )
	
	local globalskey = "ESSENCE_" .. string.upper(id) .. "_PICKUP_COUNT"
	local pickups = tonumber( GlobalsGetValue( globalskey, "0" ) )
	pickups = pickups + 1
	GlobalsSetValue( globalskey, tostring( pickups ) )

	-- cosmetic fx -------------------------------------------------------

	EntityLoad( "data/entities/particles/image_emitters/perk_effect.xml", pos_x, pos_y )
	GamePrintImportant( GameTextGet( "$log_pickedup_perk", GameTextGetTranslatedOrNot( essence_name ) ), essence_desc )
	
	EntityKill( entity_item )
end