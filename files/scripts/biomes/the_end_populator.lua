   ---Hell enemies 
   
   table.insert(g_big_enemies,
    {
        prob           = 0.03,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/angel.xml"
    })


    table.insert(g_small_enemies,
    {
        prob           = 0.02,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/the_end/sentry.xml"
    })

  
    table.insert(g_small_enemies,
    {
        prob           = 0.12,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/the_end/wizard_firemage_greater.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/poring_devil.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.07,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/the_end/gazer_greater.xml"
    })



---Heaven enemies



    table.insert(g_small_enemies_sky,
    {
        prob           = 0.18,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/poring_holy.xml"
    })

    table.insert(g_small_enemies_sky,
    {
        prob           = 0.07,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/the_end/skygazer_greater.xml"
    })

    table.insert(g_small_enemies_sky,
    {
        prob           = 0.08,
        min_count    = 4,
        max_count    = 6,    
        entity     = "data/entities/animals/the_end/fairy_big_discord.xml"
    })

    table.insert(g_big_enemies_sky,
    {
        prob           = 0.03,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/angel.xml"
    })



    table.insert(g_small_enemies_sky,
    {
        prob           = 0.012,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/buildings/polymorph_crystal_chaotic.xml"
    })

    table.insert(g_small_enemies_sky,
    {
        prob           = 0.07,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/buildings/polymorph_crystal.xml"
    })



    --New Game ++ (2)

    table.insert(g_big_enemies,
    {
        prob           = 0.03,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/angel/weak_loot/angel.xml",
		ngpluslevel = 2
    })



    --New Game ++++ (4)

    table.insert(g_big_enemies_sky,
    {
        prob           = 0.04,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/angel/weak_loot/angel.xml",
        ngpluslevel = 4
    })