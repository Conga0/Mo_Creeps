


    table.insert(g_big_enemies,
    {
        prob           = 0.08,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/sentry.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/tesla_turret.xml"
    })


    --Small enemies

    table.insert(g_small_enemies,
    {
        prob           = 0.09,
        min_count    = 4,
        max_count    = 6,    
        entity     = "data/entities/animals/power_plant/drone_mini.xml"
    })

    table.insert(g_small_enemies,
    {
		prob   		= 0.02,
		min_count	= 1,
		max_count	= 4,
		entity 	= "mods/mo_creeps/entities/animals/rat_birthday.xml",
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
        prob           = 0.1,
        min_count    = 8,
        max_count    = 10,    
        entity     = "data/entities/animals/power_plant/drone_mini.xml",
        ngpluslevel = 1
    })