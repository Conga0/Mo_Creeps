
    table.insert(g_big_enemies,
    {
        prob           = 0.09,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/freezing_liquid/bubble_liquid.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/sentry.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/tank_flame_mocreep.xml"
    })




    --Small enemies


    table.insert(g_small_enemies,
    {
        prob           = 0.09,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/freezing_liquid/bubble_liquid.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.07,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/sentry.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/animals/vault/hisii_engineer.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/animals/hisii_rocketshotgun.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.12,
        min_count    = 4,
        max_count    = 6,    
        entity     = "data/entities/animals/vault/drone_mini.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.12,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/blindgazer.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hisii_hobo.xml"
    })

	table.insert(g_small_enemies,
    {
		prob   		= 0.2,
		min_count	= 2,
		max_count	= 6,    
		entity 	= "data/entities/animals/rat_birthday.xml.xml",
		spawn_check = function() 
			local year, month, day = GameGetDateAndTimeLocal()
			
			if ( month == 9 ) and (( day >= 21 ) and (day <= 23 )) then
				return true
			else
				return false 
			end
		end,
    })



    --New Game +
    
    table.insert(g_small_enemies,
    {
        prob           = 0.08,
        min_count    = 3,
        max_count    = 4,    
        entity     = "data/entities/animals/vault/hisii_engineer.xml",
        ngpluslevel = 1
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.08,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/crypt/tentacler_big.xml",
        ngpluslevel = 1
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.12,
        min_count    = 6,
        max_count    = 8,    
        entity     = "data/entities/animals/power_plant/drone_mini.xml",
        ngpluslevel = 1
    })