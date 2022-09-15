
    table.insert(g_big_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/wizard_duck.xml"
    })
    
    table.insert(g_big_enemies,
    {
        prob           = 0.005,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/wizard_firemage_greater.xml"
    })
    
    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/poring_magic.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/wizard_manaeater.xml"
    })



    ---SmallEnemies

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/poring_magic.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.03,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/devourer_magic.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.04,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/devourer_ghost.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.25,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hideous_mass.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.06,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/musical_being.xml"
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