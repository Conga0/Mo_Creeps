
    table.insert(streaming_events,
	{
		id = "MOCREEP_RANDOM_CATS",
		ui_name = "Kitty Cats!!",
		ui_description = "Cat! I'm a kitty cat! And I dance dance dance! And I dance dance dance!!",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 1.0,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )

            local catcount = 20
			
			for i,entity_id in ipairs( players ) do
                repeat
                    local x, y = EntityGetTransform( entity_id )
                    
                    local angle = Random( 0, 31415 ) * 0.0001
                    local length = 35
                    
                    local ex = x + math.cos( angle ) * length
                    local ey = y - math.sin( angle ) * length

                    EntityLoad( "mods/mo_creeps/files/entities/special/conjurer_cat_spawner.xml", ex, ey )

                    catcount = catcount - 1
        
                until (catcount < 1)
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "MOCREEP_RANDOM_CREEPS",
		ui_name = "Random Creeps & Weirdos",
		ui_description = "Random Creeps & Weirdos will appear in 5 seconds.",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 1.0,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 300,
		action_delayed = function(event)

            local pool = {
                "blindgazer",
                "blob_big",
                "blob_huge",
                "cat_mocreeps",
                "ccc_bat_psychic",
                "ceiling_fungus",
                "devourer_ghost",
                "devourer_magic",
                "drone_mini",
                "enchanted_duck",
                "fairy_cheap",
                "fairy_big",
                "fairy_big_discord",
                "fairy_esoteric",
                "gazer_greater",
                "secret/gazer_greater_cold",
                "gazer_greater_sky",
                "gazer_robot",
                "ghost_bow",
                "giant_centipede",
                "goo_slug",
                "hideous_mass",
                "hisii_engineer",
                "hisii_hobo",
                "hisii_minecart",
                "hisii_minecart_tnt",
                "hisii_rocketshotgun",
                "locust_swarm",
                "longleg_pillar",
                "lukki_fungus",
                "mimic_explosive_box",
                "musical_being",
                "musical_being_weak",
                "musical_being_weak_healer",
                "poisonmushroom",
                "poring",
                "poring_devil",
                "poring_holy",
                "poring_lukki",
                "poring_magic",
                "rat_birthday",
                "sentry",
                "shaman_greater_mocreep",
                "star_child",
                "tank_flame_mocreep",
                "tentacler_big",
                "tesla_turret",
                "triangle_gem",
                "whisp",
                "wizard_ambrosia",
                "wizard_copeseethmald",
                "wizard_duck",
                "wizard_explosive",
                "wizard_firemage_greater",
                "wizard_jackofalltrades",
                "wizard_manaeater",
                "wizard_transmutation",
                "wizard_watermage_greater",
                "wizard_z_poly_miniboss",
                "wraith_weirdo_shield",
                "bubbles/acid/bubble_liquid",
                "bubbles/water/bubble_liquid",
                "bubbles/ambrosia/bubble_liquid",
                "bubbles/freezing_liquid/bubble_liquid",
                "boss_toxic_worm/boss_toxic_worm_minion",
            }

			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )

            local catcount = 6
			
			for i,entity_id in ipairs( players ) do
                repeat
                    local x, y = EntityGetTransform( entity_id )
                    
                    local angle = Random( 0, 31415 ) * 0.0001
                    local length = 200
                    
                    local ex = x + math.cos( angle ) * length
                    local ey = y - math.sin( angle ) * length

                    EntityLoad( "data/entities/animals/"..pool[Random(1, #pool)]..".xml", ex, ey )
                    EntityLoad( "data/scripts/streaming_integration/entities/empty_circle.xml", ex, ey )

                    catcount = catcount - 1
            
                until (catcount < 1)
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "MOCREEP_WAND_WONDERS",
		ui_name = "Spawn Wand of Wonders",
		ui_description = "Wands a wonderful wand capable of anything.",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.8,
		kind = STREAMING_EVENT_NEUTRAL,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "mods/mo_creeps/files/entities/items/wands/custom/wand_of_wonders.xml", x, y )
                EntityLoad("data/entities/particles/image_emitters/magical_symbol_materia_blue.xml", x, y)
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "MOCREEP_WAND_WONDERS",
		ui_name = "Pandora's Chest",
		ui_description = "Do you dare open?",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.75,
		kind = STREAMING_EVENT_BAD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "mods/mo_creeps/files/entities/items/pickups/chest_random_cursed.xml", x, y - 32 )
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "MOCREEP_RANDOM_CREEPS_BOSS",
		ui_name = "Random Weirdo Boss",
		ui_description = "A random More Creeps boss will appear after 10 seconds.",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.1,
		kind = STREAMING_EVENT_AWFUL,
		delay_timer = 600,
		action_delayed = function(event)

            local pool = {
                "animals/angel",
                "animals/boss_blob/blob_titan",
                "buildings/toxic_worm_nest_populator_big_detector",
                "buildings/boss_musical_ghost_sandcave_populator_big_detector",
                "animals/wizard_z_poly_miniboss",
            }

			local players = get_players()
			SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() + 353 )
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )
                
                local angle = Random( 0, 31415 ) * 0.0001
                local length = 200
                
                local ex = x + math.cos( angle ) * length
                local ey = y - math.sin( angle ) * length

                EntityLoad( "data/entities/"..pool[Random(1, #pool)]..".xml", ex, ey )
                EntityLoad( "data/scripts/streaming_integration/entities/empty_circle.xml", ex, ey )
			end
		end,
	})


    if ModIsEnabled("twitch_extended") then
    table.insert(enemies_list,
    {
        "data/entities/animals/blindgazer.xml",
        "data/entities/animals/cat_mocreeps.xml",
        "data/entities/animals/ccc_bat_psychic.xml",
        "data/entities/animals/ceiling_fungus.xml",
        "data/entities/animals/devourer_ghost.xml",
        "data/entities/animals/devourer_magic.xml",
        "data/entities/animals/drone_mini.xml",
        "data/entities/animals/enchanted_duck.xml",
        "data/entities/animals/fairy_cheap.xml",
        "data/entities/animals/fairy_big.xml",
        "data/entities/animals/fairy_big_discord.xml",
        "data/entities/animals/fairy_esoteric.xml",
        "data/entities/animals/gazer_greater.xml",
        "data/entities/animals/secret/gazer_greater_cold.xml",
        "data/entities/animals/gazer_greater_sky.xml",
        "data/entities/animals/gazer_robot.xml",
        "data/entities/animals/ghost_bow.xml",
        "data/entities/animals/giant_centipede.xml",
        "data/entities/animals/goo_slug.xml",
        "data/entities/animals/hideous_mass.xml",
        "data/entities/animals/hisii_engineer.xml",
        "data/entities/animals/hisii_hobo.xml",
        "data/entities/animals/hisii_minecart.xml",
        "data/entities/animals/hisii_rocketshotgun.xml",
        "data/entities/animals/locust_swarm.xml",
        "data/entities/animals/longleg_pillar.xml",
        "data/entities/animals/lukki_fungus.xml",
        "data/entities/animals/mimic_explosive_box.xml",
        "data/entities/animals/musical_being.xml",
        "data/entities/animals/musical_being_weak.xml",
        "data/entities/animals/musical_being_weak_healer.xml",
        "data/entities/animals/poisonmushroom.xml",
        "data/entities/animals/poring.xml",
        "data/entities/animals/poring_devil.xml",
        "data/entities/animals/poring_holy.xml",
        "data/entities/animals/poring_lukki.xml",
        "data/entities/animals/poring_magic.xml",
        "data/entities/animals/rat_birthday.xml",
        "data/entities/animals/sentry.xml",
        "data/entities/animals/star_child.xml",
        "data/entities/animals/tank_flame_mocreep.xml",
        "data/entities/animals/tentacler_big.xml",
        "data/entities/animals/tesla_turret.xml",
        "data/entities/animals/triangle_gem.xml",
        "data/entities/animals/whisp.xml",
        "data/entities/animals/wizard_ambrosia.xml",
        "data/entities/animals/wizard_copeseethmald.xml",
        "data/entities/animals/wizard_duck.xml",
        "data/entities/animals/wizard_explosive.xml",
        "data/entities/animals/wizard_firemage_greater.xml",
        "data/entities/animals/wizard_jackofalltrades.xml",
        "data/entities/animals/wizard_manaeater.xml",
        "data/entities/animals/wizard_transmutation.xml",
        "data/entities/animals/wizard_watermage_greater.xml",
        "data/entities/animals/wraith_weirdo_shield.xml",
        "data/entities/animals/bubbles/acid/bubble_liquid.xml",
        "data/entities/animals/bubbles/water/bubble_liquid.xml",
        "data/entities/animals/bubbles/ambrosia/bubble_liquid.xml",
        "data/entities/animals/bubbles/freezing_liquid/bubble_liquid.xml",
        "data/entities/animals/boss_toxic_worm/boss_toxic_worm_minion.xml",
        "data/entities/animals/angel.xml",
        "data/entities/animals/boss_toxic_worm/boss_toxic_worm.xml",
        "data/entities/animals/boss_musical_ghost/boss_musical_ghost.xml",
    })
    end

