local mocreep_HardmodeCheck = false

if ModIsEnabled("nightmare") or ModIsEnabled("purgatory") then
    mocreep_HardmodeCheck = true
end

---Heaven enemies



    table.insert(g_small_enemies_sky,
    {
        prob           = 0.10,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/poring_holy.xml"
    })

    table.insert(g_small_enemies_sky,
    {
        prob           = 0.12,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/the_end/wraith_returner_mocreep.xml"
    })

    table.insert(g_small_enemies_sky,
    {
        prob           = 0.10,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/the_end/forsaken_eye.xml"
    })

    table.insert(g_small_enemies_sky,
    {
        prob           = 0.08,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/the_end/gazer_greater_cold.xml"
    })

    if mocreep_HardmodeCheck then 
        table.insert(g_big_enemies_sky,
        {
            prob           = 0.04,
            min_count    = 1,
            max_count    = 1,    
            entity     = "data/entities/animals/gold_bosses/angel/angel.xml"
        })
    else
        table.insert(g_big_enemies_sky,
        {
            prob           = 0.04,
            min_count    = 1,
            max_count    = 1,    
            entity     = "data/entities/animals/angel.xml"
        })
    end
    



    table.insert(g_small_enemies_sky,
    {
        prob           = 0.01,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/buildings/polymorph_crystal_chaotic.xml"
    })



    --New Game ++ (2)

    table.insert(g_big_enemies_sky,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/angel/weak_loot/angel.xml",
		ngpluslevel = 2
    })



    --New Game ++++ (4)

    table.insert(g_big_enemies_sky,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/angel/weak_loot/angel.xml",
        ngpluslevel = 4
    })