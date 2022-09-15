
local mocreep_enrage_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_rage_aura" )

table.insert(perk_list,
{
    id = "MOCREEPS_GHOSTLY_VISION",
    ui_name = "$perk_mocreeps_ghostly_vision",
    ui_description = "$perk_mocreeps_ghostly_vision_description",
    ui_icon = "mods/mo_creeps/files/ui_gfx/perk_icons/ghostly_vision_perk_ui.png",
    perk_icon = "mods/mo_creeps/files/items_gfx/ghostly_vision_perk.png",
    not_in_default_perk_pool = true,
    stackable = STACKABLE_NO,
    usable_by_enemies = false,
    func = function( entity_perk_item, entity_who_picked, item_name )
        local x,y = EntityGetTransform( entity_who_picked )
        local child_id = EntityLoad( "mods/mo_creeps/files/entities/misc/perks/ghostly_vision_perk.xml", x, y )
        EntityAddTag( child_id, "perk_entity" )
        EntityAddChild( entity_who_picked, child_id )
    end,
})


if mocreep_enrage_unlocked then
    table.insert(perk_list,
    {
        id = "MOCREEPS_RAGE_AURA",
        ui_name = "$perk_mocreeps_rage_aura",
        ui_description = "$perk_mocreeps_rage_aura_description",
        ui_icon = "mods/mo_creeps/files/ui_gfx/perk_icons/rage_aura_perk_ui.png",
        perk_icon = "mods/mo_creeps/files/items_gfx/rage_aura_perk.png",
        not_in_default_perk_pool = false,
        stackable = STACKABLE_NO,
        usable_by_enemies = true,
        func = function( entity_perk_item, entity_who_picked, item_name )
            local x,y = EntityGetTransform( entity_who_picked )
            local child_id = EntityLoad( "mods/mo_creeps/files/entities/misc/perks/rage_aura_perk.xml", x, y )
            EntityAddTag( child_id, "perk_entity" )
            EntityAddChild( entity_who_picked, child_id )
        end,
    })
else
    table.insert(perk_list,
    {
        id = "MOCREEPS_RAGE_AURA",
        ui_name = "$perk_mocreeps_rage_aura",
        ui_description = "$perk_mocreeps_rage_aura_description",
        ui_icon = "mods/mo_creeps/files/ui_gfx/perk_icons/rage_aura_perk_ui.png",
        perk_icon = "mods/mo_creeps/files/items_gfx/rage_aura_perk.png",
        not_in_default_perk_pool = true,
        stackable = STACKABLE_NO,
        usable_by_enemies = false,
        func = function( entity_perk_item, entity_who_picked, item_name )
            local x,y = EntityGetTransform( entity_who_picked )
            local child_id = EntityLoad( "mods/mo_creeps/files/entities/misc/perks/rage_aura_perk.xml", x, y )
            EntityAddTag( child_id, "perk_entity" )
            EntityAddChild( entity_who_picked, child_id )
        end,
    })
end