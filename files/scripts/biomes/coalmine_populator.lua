
    table.insert(g_big_enemies,
    {
        prob           = 0.001,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/coal_mines/wizard_firemage_greater.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/longleg_pillar.xml"
    })



    ---Small Enemies

    table.insert(g_small_enemies,
    {
        prob           = 0.15,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/coal_mines/poring.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.08,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/goo_slug.xml"
    })

    table.insert(g_small_enemies,
    {
		prob   		= 0.4,
		min_count	= 1,
		max_count	= 2,    
		entity 	= "data/animals/rat_birthday.xml",
		spawn_check = function() 
			local year, month, day = GameGetDateAndTimeLocal()
			
			if ( month == 9 ) and (( day >= 21 ) and (day <= 23 )) then
				return true
			else
				return false 
			end
		end,
    })

    table.insert(g_lamp,
    {
        prob           = 0.2,
        min_count    = 6,
        max_count    = 12,    
        entity     = "data/entities/animals/fairy_cheap.xml"
    })

    table.insert(g_lamp,
    {
        prob           = 1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "mods/mo_creeps/files/entities/props/seasonal_jackolantern.xml",
		spawn_check = function() 
			local year, month, day = GameGetDateAndTimeLocal()
			
			if ( month == 10 ) and (( day >= 3 ) and (day <= 31 )) then
				return true
			else
				return false 
			end
		end,
    })



    --New Game +

table.insert(g_small_enemies,
{
    prob           = 0.2,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/poring_holy.xml",
    ngpluslevel = 1
})

table.insert(g_small_enemies,
{
    prob           = 0.2,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/poring_magic.xml",
    ngpluslevel = 1
})



    --New Game ++

table.insert(g_small_enemies,
{
    prob           = 0.1,
    min_count    = 1,
    max_count    = 1,    
    entity     = "data/entities/animals/fungicave/lukki_fungus.xml",
    ngpluslevel = 2
})