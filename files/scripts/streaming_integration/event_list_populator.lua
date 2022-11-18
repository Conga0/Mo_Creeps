
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
                "c_basebot_speeder_mocreep",
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
                "forsaken_eye",
                "fungus_smoking_creep",
                "gazer_greater",
                "secret/gazer_greater_cold",
                "gazer_greater_sky",
                "gazer_robot",
                "ghost_bow",
                "giant_centipede",
                "goo_slug",
                "hideous_mass",
                "hideous_mass_red",
                "hisii_engineer",
                "hisii_giga_bomb",
                "hisii_hobo",
                "hisii_minecart",
                "hisii_minecart_tnt",
                "hisii_minecart_weak",
                "hisii_rocketshotgun",
                "locust_swarm",
                "longleg_pillar",
                "lukki_fungus",
                "lukki_swarmling",
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
                "wraith_returner_mocreep",
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
		ui_description = "A wonderful wand capable of anything. Cast It!",
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
		id = "MOCREEP_PANDORA_CHEST",
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
            local pool

            if ModIsEnabled("purgatory") or ModIsEnabled("nightmare") then
                pool = {
                    "animals/gold_bosses/angel/angel",
                    "animals/gold_bosses/boss_blob/blob_titan",
                    "buildings/toxic_worm_nest_populator_big_detector",
                    "buildings/boss_musical_ghost_sandcave_populator_big_detector",
                }
            else
                pool = {
                    "animals/angel",
                    "animals/boss_blob/blob_titan",
                    "buildings/toxic_worm_nest_populator_big_detector",
                    "buildings/boss_musical_ghost_sandcave_populator_big_detector",
                }
            end

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


    table.insert(streaming_events,
	{
		id = "MOCREEP_STONE_FUNGUS",
		ui_name = "Sienenkivi",
		ui_description = "Fungus Stone",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.8,
		kind = STREAMING_EVENT_GOOD,
		action = function(event)
			local players = get_players()
			
			for i,entity_id in ipairs( players ) do
                local x, y = EntityGetTransform( entity_id )

                EntityLoad( "mods/mo_creeps/files/entities/items/pickups/stone_fungus.xml", x, y )
                EntityLoad("data/entities/particles/image_emitters/magical_symbol_materia_blue.xml", x, y)
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "MOCREEP_CREATURE_SHIFT",
		ui_name = "Creature Shift",
		ui_description = "Causes a creature to randomly be shifted with another.",
		ui_icon = "data/ui_gfx/streaming_event_icons/health_plus.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 1.0,
		kind = STREAMING_EVENT_AWFUL,
		action = function(event)
			dofile("mods/mo_creeps/files/scripts/magic/creature_shift_file.lua")
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				creature_shift( entity_id, x, y, true )
			end
		end,
	})


    table.insert(streaming_events,
	{
		id = "MOCREEP_TRANSFORM_WORMS",
		ui_name = "Spells to Worms",
		ui_description = "All projectiles currently in the air turn into worms!",
		ui_icon = "data/ui_gfx/streaming_event_icons/protect_enemies.png",
		ui_author = "Conga Lyne - Mo Creeps",
		weight = 0.5,
		kind = STREAMING_EVENT_BAD,
		delay_timer = 180,
		action_delayed = function(event)
			for i,entity_id in pairs( get_players() ) do
				local x, y = EntityGetTransform( entity_id )
				
				local effect_id = EntityLoad( "mods/mo_creeps/files/scripts/streaming_integration/entities/effect_spells_to_worms.xml", x, y )
				set_lifetime( effect_id )
				EntityAddChild( entity_id, effect_id )
				
				add_icon_in_hud( effect_id, "mods/mo_creeps/files/ui_gfx/status_indicators/worm.png", event )
			end
		end,
	})


if ModIsEnabled("twitch_extended") then
    enemies_list = {
        "data/entities/animals/blindgazer.xml",
        "data/entities/animals/blob_big.xml",
        "data/entities/animals/blob_huge.xml",
        "data/entities/animals/c_basebot_speeder_mocreep.xml",
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
        "data/entities/animals/forsaken_eye.xml",
        "data/entities/animals/gazer_greater.xml",
        "data/entities/animals/secret/gazer_greater_cold.xml",
        "data/entities/animals/gazer_greater_sky.xml",
        "data/entities/animals/gazer_robot.xml",
        "data/entities/animals/ghost_bow.xml",
        "data/entities/animals/giant_centipede.xml",
        "data/entities/animals/goo_slug.xml",
        "data/entities/animals/hideous_mass.xml",
        "data/entities/animals/hideous_mass_red.xml",
        "data/entities/animals/hisii_engineer.xml",
        "data/entities/animals/hisii_giga_bomb.xml",
        "data/entities/animals/hisii_hobo.xml",
        "data/entities/animals/hisii_minecart.xml",
        "data/entities/animals/hisii_rocketshotgun.xml",
        "data/entities/animals/locust_swarm.xml",
        "data/entities/animals/longleg_pillar.xml",
        "data/entities/animals/lukki_fungus.xml",
        "data/entities/animals/lukki_swarmling.xml",
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
        "data/entities/animals/wraith_returner_mocreep",
        "data/entities/animals/wraith_weirdo_shield.xml",
        "data/entities/animals/bubbles/acid/bubble_liquid.xml",
        "data/entities/animals/bubbles/water/bubble_liquid.xml",
        "data/entities/animals/bubbles/ambrosia/bubble_liquid.xml",
        "data/entities/animals/bubbles/freezing_liquid/bubble_liquid.xml",
        "data/entities/animals/boss_toxic_worm/boss_toxic_worm_minion.xml",
        "data/entities/animals/angel.xml",
        "data/entities/animals/boss_toxic_worm/boss_toxic_worm.xml",
        "data/entities/animals/boss_musical_ghost/boss_musical_ghost.xml",
        "data/entities/animals/boss_blob/blob_titan.xml",  -- MOCREEPS ENDS HERE ----------------------------------------------------------------------------------
        "data/entities/animals/acidshooter.xml",
        "data/entities/animals/acidshooter_weak.xml",
        "data/entities/animals/alchemist.xml",
        "data/entities/animals/ant.xml",
        "data/entities/animals/assassin.xml",
        "data/entities/animals/barfer.xml",
        "data/entities/animals/bat.xml",
        "data/entities/animals/bigbat.xml",
        "data/entities/animals/bigfirebug.xml",
        "data/entities/animals/bigzombie.xml",
        "data/entities/animals/bigzombiehead.xml",
        "data/entities/animals/bigzombietorso.xml",
        "data/entities/animals/blob.xml",
        "data/entities/animals/bloodcrystal_physics.xml",
        "data/entities/animals/bloom.xml",
        "data/entities/animals/boss_dragon.xml",
        "data/entities/animals/chest_leggy.xml",
        "data/entities/animals/chest_mimic.xml",
        "data/entities/animals/crystal_physics.xml",
        "data/entities/animals/deer.xml",
        "data/entities/animals/drone_lasership.xml",
        "data/entities/animals/drone_physics.xml",
        "data/entities/animals/duck.xml",
        "data/entities/animals/eel.xml",
        "data/entities/animals/elk.xml",
        "data/entities/animals/enlightened_alchemist.xml",
        "data/entities/animals/failed_alchemist.xml",
        "data/entities/animals/failed_alchemist_b.xml",
        "data/entities/animals/firebug.xml",
        "data/entities/animals/firemage.xml",
        "data/entities/animals/firemage_weak.xml",
        "data/entities/animals/fireskull.xml",
        "data/entities/animals/fireskull_weak.xml",
        "data/entities/animals/fish.xml",
        "data/entities/animals/fish_large.xml",
        "data/entities/animals/flamer.xml",
        "data/entities/animals/fly.xml",
        "data/entities/animals/frog.xml",
        "data/entities/animals/frog_big.xml",
        "data/entities/animals/fungus.xml",
        "data/entities/animals/fungus_big.xml",
        "data/entities/animals/gazer.xml",
        "data/entities/animals/ghost.xml",
        "data/entities/animals/ghoul.xml",
        "data/entities/animals/giant.xml",
        "data/entities/animals/giantshooter.xml",
        "data/entities/animals/giantshooter_weak.xml",
        "data/entities/animals/goblin_bomb.xml",
        "data/entities/animals/healerdrone_physics.xml",
        "data/entities/animals/icer.xml",
        "data/entities/animals/iceskull.xml",
        "data/entities/animals/lasershooter.xml",
        "data/entities/animals/longleg.xml",
        "data/entities/animals/lurker.xml",
        "data/entities/animals/maggot.xml",
        "data/entities/animals/mimic_physics.xml",
        "data/entities/animals/miner.xml",
        "data/entities/animals/miner_fire.xml",
        "data/entities/animals/miner_santa.xml",
        "data/entities/animals/miner_weak.xml",
        "data/entities/animals/miniblob.xml",
        "data/entities/animals/missilecrab.xml",
        "data/entities/animals/monk.xml",
        "data/entities/animals/pebble_physics.xml",
        "data/entities/animals/phantom_a.xml",
        "data/entities/animals/phantom_b.xml",
        "data/entities/animals/playerghost.xml",
        "data/entities/animals/rat.xml",
        "data/entities/animals/roboguard.xml",
        "data/entities/animals/scavenger_clusterbomb.xml",
        "data/entities/animals/scavenger_grenade.xml",
        "data/entities/animals/scavenger_heal.xml",
        "data/entities/animals/scavenger_invis.xml",
        "data/entities/animals/scavenger_leader.xml",
        "data/entities/animals/scavenger_mine.xml",
        "data/entities/animals/scavenger_poison.xml",
        "data/entities/animals/scavenger_shield.xml",
        "data/entities/animals/scavenger_smg.xml",
        "data/entities/animals/scorpion.xml",
        "data/entities/animals/shaman.xml",
        "data/entities/animals/sheep.xml",
        "data/entities/animals/sheep_bat.xml",
        "data/entities/animals/sheep_fly.xml",
        "data/entities/animals/shooterflower.xml",
        "data/entities/animals/shotgunner.xml",
        "data/entities/animals/shotgunner_weak.xml",
        "data/entities/animals/skullfly.xml",
        "data/entities/animals/skullrat.xml",
        "data/entities/animals/skycrystal_physics.xml",
        "data/entities/animals/slimeshooter.xml",
        "data/entities/animals/slimeshooter_nontoxic.xml",
        "data/entities/animals/slimeshooter_weak.xml",
        "data/entities/animals/sniper.xml",
        "data/entities/animals/spearbot.xml",
        "data/entities/animals/spitmonster.xml",
        "data/entities/animals/tank.xml",
        "data/entities/animals/tank_rocket.xml",
        "data/entities/animals/tank_super.xml",
        "data/entities/animals/tentacler.xml",
        "data/entities/animals/tentacler_small.xml",
        "data/entities/animals/thundermage.xml",
        "data/entities/animals/thunderskull.xml",
        "data/entities/animals/turret_left.xml",
        "data/entities/animals/turret_right.xml",
        "data/entities/animals/ultimate_killer.xml",
        "data/entities/animals/wand_ghost.xml",
        "data/entities/animals/wand_ghost_charmed.xml",
        "data/entities/animals/wizard_dark.xml",
        "data/entities/animals/wizard_neutral.xml",
        "data/entities/animals/wizard_poly.xml",
        "data/entities/animals/wizard_returner.xml",
        "data/entities/animals/wizard_tele.xml",
        "data/entities/animals/wolf.xml",
        "data/entities/animals/wraith.xml",
        "data/entities/animals/wraith_glowing.xml",
        "data/entities/animals/wraith_storm.xml",
        "data/entities/animals/zombie.xml",
        "data/entities/animals/zombie_weak.xml",
        "data/entities/animals/lukki/lukki.xml",
        "data/entities/animals/lukki/lukki_creepy.xml",
        "data/entities/animals/lukki/lukki_creepy_long.xml",
        "data/entities/animals/lukki/lukki_longleg.xml",
        "data/entities/animals/lukki/lukki_tiny.xml",
        "data/entities/animals/boss_centipede/boss_centipede.xml",
    }
end

