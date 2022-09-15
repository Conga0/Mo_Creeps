
    table.insert(g_big_enemies,
    {
        prob           = 0.01,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/coal_mines/wizard_firemage_greater.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/tesla_turret.xml"
    })



    --Small Enemies

    table.insert(g_small_enemies,
    {
        prob           = 1.0,
        min_count    = 2,
        max_count    = 3,    
        entity     = "data/entities/animals/desert/poring.xml"
    })


    table.insert(g_small_enemies,
    {
		prob   		= 0.7,
		min_count	= 1,
		max_count	= 2,    
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