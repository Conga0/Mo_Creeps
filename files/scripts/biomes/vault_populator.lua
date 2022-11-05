
    table.insert(g_big_enemies,
    {
        prob           = 0.08,
        min_count    = 2,
        max_count    = 3,    
        entity     = "data/entities/animals/bubbles/acid/bubble_liquid.xml"
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
        entity     = "data/entities/animals/wizard_jackofalltrades.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/tank_flame_mocreep.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.08,
        min_count    = 1,
        max_count    = 1,    
		entities 	= 
        {
            "data/entities/animals/vault/tentacler_big.xml",
            "data/entities/animals/vault/tentacler.xml",
            "data/entities/animals/vault/tentacler.xml"
        }
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.02,
        min_count    = 6,
        max_count    = 9,    
        entity     = "data/entities/animals/wraith_weirdo_shield.xml"
    })

    if ModIsEnabled("worse_enemies") == false then
        table.insert(g_big_enemies,
        {
            prob           = 0.2,
            min_count    = 1,
            max_count    = 1,    
            entity     = "data/entities/animals/blob_big.xml"
        })
    end




    --Small enemies

    table.insert(g_small_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/sentry.xml"
    })


    table.insert(g_small_enemies,
    {
        prob           = 0.07,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/acid/bubble_liquid.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/vault/tentacler_big.xml"
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
        prob           = 0.11,
        min_count    = 4,
        max_count    = 6,    
        entity     = "data/entities/animals/vault/drone_mini.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/blindgazer.xml"
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
        prob           = 0.03,
        min_count    = 3,
        max_count    = 6,    
        entity     = "data/entities/animals/vault/goo_slug.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.085,
        min_count    = 1,
        max_count    = 3,    
        entity     = "data/entities/animals/wizard_transmutation.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hisii_hobo.xml"
    })

    table.insert(g_props,
    {
        prob           = 0.04,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/vault/mimic_explosive_box.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.08,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/wraith_weirdo_shield.xml"
    })



    --Pandora Spawns

    table.insert(g_small_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/items/pickup/heart.xml",
		spawn_check = function() 
			if GameHasFlagRun( "mocreeps_pandora_unleashed" ) then
				return true
			else
				return false 
			end
		end,
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.02,
        min_count    = 6,
        max_count    = 8,    
        entity     = "data/entities/animals/blindgazer.xml",
		spawn_check = function() 
			if GameHasFlagRun( "mocreeps_pandora_unleashed" ) then
				return true
			else
				return false 
			end
		end,
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.005,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/wizard_watermage_greater.xml",
        spawn_check = function() 
            if GameHasFlagRun( "mocreeps_pandora_unleashed" ) then
                return true
            else
                return false 
            end
        end,
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.02,
        min_count    = 4,
        max_count    = 4,    
        entity     = "data/entities/animals/poring_lukki.xml",
		spawn_check = function() 
			if GameHasFlagRun( "mocreeps_pandora_unleashed" ) then
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
        prob           = 0.12,
        min_count    = 5,
        max_count    = 7,    
        entity     = "data/entities/animals/power_plant/drone_mini.xml",
        ngpluslevel = 1
    })