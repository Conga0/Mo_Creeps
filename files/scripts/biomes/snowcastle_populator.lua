
    table.insert(g_big_enemies,
    {
        prob           = 0.09,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/freezing_liquid/bubble_liquid.xml"
    })

    table.insert(g_big_enemies,
	{
		prob   		= 0.1,
		min_count	= 1,
		max_count	= 1,    
		entities 	=  {
			{
				min_count	= 1,
				max_count 	= 1,
				entity = "data/entities/animals/hisii_engineer.xml",
			},
			{
				min_count	= 2,
				max_count 	= 2,
				entity = "data/entities/animals/drone_lasership.xml",
			}
		}
	})

    table.insert(g_big_enemies,
    {
        prob           = 0.12,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/tesla_turret.xml"
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
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hisii_engineer.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.08,
        min_count    = 4,
        max_count    = 6,    
        entity     = "data/entities/animals/drone_mini.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.04,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hisii_hobo.xml"
    })



     --New Game +

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 2,  
        entity     = "data/entities/animals/hisii_engineer.xml",
		ngpluslevel = 1
    })

    --Seasonal Events

	table.insert(g_small_enemies,
    {
		prob   		= 0.4,
		min_count	= 2,
		max_count	= 6,    
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