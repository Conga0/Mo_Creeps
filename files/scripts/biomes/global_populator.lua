    --- Rare Bubbles
    

    table.insert(g_big_enemies,
    {
        prob           = 0.011,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/ambrosia/bubble_liquid.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.0011,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/alchemicprecursor/bubble_liquid.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.0011,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/healthium/bubble_liquid.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.00055,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/voidliquid/bubble_liquid.xml"
    })



    -- Chaotic Polymorphing Crystal

    table.insert(g_big_enemies,
    {
        prob           = 0.011,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/buildings/polymorph_crystal_chaotic.xml"
    })

    -- Wand Editting Crystal

    table.insert(g_small_enemies,
    {
        prob           = 0.01,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/buildings/wandedit_crystal.xml"
    })


    -- New Game +
    
    table.insert(g_big_enemies,
    {
        prob           = 0.015,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/buildings/polymorph_crystal_chaotic.xml",
        ngpluslevel = 1
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.03,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/buildings/polymorph_crystal.xml",
        ngpluslevel = 1
    })






    

    -- Seasonal Events

    local year, month, day = GameGetDateAndTimeLocal()
    local seasonalSetting = ModSettingGet( "mo_creeps.seasonal_events" )

    if seasonalSetting == true then

        if ( month == 9 ) and (( day >= 21 ) and (day <= 23 )) then
            -- More Creeps & Weirdos Birthday
            table.insert(g_small_enemies,
            {
                prob           = 0.3,
                min_count    = 4,
                max_count    = 7,
                entity     = "mods/mo_creeps/files/entities/special/rgb_fairy_spawner.xml"
            })
        end
    end
