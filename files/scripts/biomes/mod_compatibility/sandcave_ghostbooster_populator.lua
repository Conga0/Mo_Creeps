
   

    table.insert(g_big_enemies,
    {
        prob           = 0.5,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/musical_being.xml"
    })


    --Small enemies
   
   table.insert(g_small_enemies,
    {
        prob           = 0.15,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/sandcave/poring.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/devourer_magic.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.5,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/musical_being.xml"
    })



    --New Game +

table.insert(g_small_enemies,
{
    prob           = 0.8,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/wizard_firemage_greater.xml",
    ngpluslevel = 1
})