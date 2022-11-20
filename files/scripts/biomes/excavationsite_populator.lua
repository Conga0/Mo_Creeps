
    table.insert(g_big_enemies,
    {
        prob           = 0.001,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/coal_mines/wizard_firemage_greater.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/bubbles/acid/bubble_liquid.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,
		entities 	= {
			{
				min_count	= 1,
				max_count 	= 1,
				entity = "data/entities/buildings/hamis_nest.xml",
			},
			{
				min_count	= 2,
				max_count 	= 3,
				entity = "data/entities/animals/longleg.xml",
			},
		}
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.07,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/animals/hisii_minecart.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.04,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/animals/hisii_minecart_tnt.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.005,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/secret/hisii_minecart.xml"
    })
    
    table.insert(g_big_enemies,
    {
        prob           = 0.007,
        min_count    = 1,
        max_count    = 1,
        entity     = "data/entities/animals/excavationsite/poring_lukki_fake.xml"
    })

    table.insert(g_big_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,
		entities 	= {
			{
				min_count	= 2,
				max_count 	= 2,
				entity = "data/entities/animals/ccc_bat_psychic.xml",
			},
			{
				min_count	= 3,
				max_count 	= 4,
				entity = "data/entities/animals/fairy_big.xml",
			},
		}
    })



    --Small enemies

    table.insert(g_small_enemies,
    {
        prob           = 0.12,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/poring.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.2,
        min_count    = 2,
        max_count    = 4,    
        entity     = "data/entities/animals/ccc_bat_psychic.xml"
    })

    table.insert(g_small_enemies,
    {
        prob           = 0.12,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/goo_slug.xml"
    })

	local ambrosiaFairies = ModSettingGet( "mo_creeps.fairy_immortality" )

    if ambrosiaFairies == true then
        table.insert(g_small_enemies,
        {
            prob           = 0.08,
            min_count    = 6,
            max_count    = 12,    
            entity     = "data/entities/animals/cat_immortal/fairy_cheap.xml"
        })
    else
        table.insert(g_small_enemies,
        {
            prob           = 0.08,
            min_count    = 6,
            max_count    = 12,    
            entity     = "data/entities/animals/fairy_cheap.xml"
        })
    end

    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
		entities 	= {
			{
				min_count	= 1,
				max_count 	= 1,
				entity = "data/entities/buildings/hamis_nest.xml",
			},
			{
				min_count	= 2,
				max_count 	= 3,
				entity = "data/entities/animals/longleg.xml",
			},
		}
    })

    table.insert(g_props,
    {
        prob           = 0.02,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/mimic_explosive_box.xml"
    })

    table.insert(g_lamp,
    {
        prob           = 0.2,
        min_count    = 1,
        max_count    = 2,    
        entity     = "data/entities/animals/fairy_big.xml"
    })

    table.insert(g_lamp,
    {
        prob           = 0.05,
        min_count    = 5,
        max_count    = 10,    
        entity     = "data/entities/animals/whisp.xml"
    })

    if ModIsEnabled("purgatory") then
        table.insert(g_big_enemies,
        {
            prob           = 0.05,
            min_count    = 1,
            max_count    = 1,    
            entity     = "data/entities/animals/hisii_giga_bomb.xml"
        })
    end





    --Pandora Spawns

    table.insert(g_small_enemies,
    {
        prob           = 0.03,
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

    table.insert(g_big_enemies,
    {
        prob           = 0.05,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/hisii_giga_bomb.xml",
		spawn_check = function() 
			if GameHasFlagRun( "mocreeps_pandora_unleashed" ) then
				return true
			else
				return false 
			end
		end,
    })

    table.insert(g_hanging_props,
    {
		prob   		= 0.3,
		min_count	= 1,
		max_count	= 1,    
		entity 	= "mods/mo_creeps/files/entities/props/suspended_tank_fire.xml"
    })




    --New Game +
    
    table.insert(g_small_enemies,
    {
        prob           = 0.1,
        min_count    = 1,
        max_count    = 1,    
        entity     = "data/entities/animals/vault/tentacler_big.xml",
        ngpluslevel = 1
    })













    -- Pixel Scenes/Areas
    
    --[[
    ]]--
    
    
    
    table.insert(g_pixel_scene_04,
    {
            prob   			= 1.0,
            material_file 	= "mods/mo_creeps/files/biome_impl/excavationsite/redstone_01.png",
            visual_file		= "",
            background_file	= "",
            is_unique		= 0
    })

    table.insert(g_pixel_scene_04,
    {
            prob   			= 1.0,
            material_file 	= "mods/mo_creeps/files/biome_impl/excavationsite/redstone_02.png",
            visual_file		= "",
            background_file	= "mods/mo_creeps/files/biome_impl/excavationsite/redstone_02_background.png",
            is_unique		= 0
    })