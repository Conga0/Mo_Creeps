    

    table.insert(g_small_enemies,
    {
        prob           = 0.25,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hisii_hobo.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.35,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hisii_hobo.xml",
        ngpluslevel = 1
    })

    table.insert(g_small_enemies,
    {
		prob   		= 0.06,
		min_count	= 1,
		max_count	= 2,    
		entity 	= "data/entities/animals/rat_birthday.xml",
		spawn_check = function() 
			local year, month, day = GameGetDateAndTimeLocal()
			
			if ( month == 9 ) and (( day >= 21 ) and (day <= 23 )) then
				return true
			else
				return false 
			end
		end,
    })