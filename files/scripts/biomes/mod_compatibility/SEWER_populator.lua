
    table.insert(g_small_enemies,
    {
        prob           = 0.01,
        min_count    = 1,
        max_count    = 2,
        entity     = "data/entities/animals/boss_toxic_worm_minion.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/blindgazer.xml"
    })



    --New Game +

table.insert(g_big_enemies,
{
    prob           = 0.05,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/boss_toxic_worm.xml",
    ngpluslevel = 1
})



---Herobrine

table.insert(g_big_enemies,
{
    prob           = 0.005,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/buildings/herobrine.xml"
})