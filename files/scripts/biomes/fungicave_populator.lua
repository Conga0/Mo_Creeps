---Originally Master of Mallards would spawn here, but he no longer does to avoid over-population. Not every master has to spawn where every other master shows up y'know!
---Unless they're here to do a lil trolling



table.insert(g_big_enemies,
{
    prob           = 0.02,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/wizard_copeseethmald.xml"
})

table.insert(g_big_enemies,
{
    prob           = 0.02,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/fungicave/lukki_fungus.xml"
})

table.insert(g_big_enemies,
{
    prob           = 0.12,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/tentacler_big.xml"
})



--Small Enemies

table.insert(g_small_enemies,
{
    prob           = 0.1,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/bubbles/acid/bubble_liquid.xml"
})
    
table.insert(g_small_enemies,
{
    prob           = 0.08,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/wizard_transmutation.xml"
})



--New Game +

table.insert(g_big_enemies,
{
    prob           = 0.08,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/fungicave/lukki_fungus.xml",
    ngpluslevel = 1
})

table.insert(g_small_enemies,
{
    prob           = 0.08,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/vault/tentacler_big.xml",
    ngpluslevel = 1
})