dofile("data/scripts/lib/utilities.lua")
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local enemy_list
local enemy_list_from
local entity = EntityGetWithTag( "player_unit" )
local entity_id = EntityGetWithTag( "player_unit" )
local x, y = EntityGetTransform( entity )
local year, month, day, hour, minute, second = GameGetDateAndTimeLocal()
SetRandomSeed( second + minute, second + minute + 3 )

--Top list is modded enemies + vanilla; bottom is only modded enemies
--ModFileSetContent doesn't work on vanilla enemies past initiation stages of the game.. but works perfectly fine on modded creatures? Sure thing, whatever you say dude

--enemy_list = { "bubbles/freezing_liquid/bubble_liquid", "bubbles/ambrosia/bubble_liquid", "blindgazer", "forsaken_eye", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "goo_slug", "ccc_bat_psychic", "ceiling_fungus", "devourer_magic", "drone_mini", "esoteric_being", "fairy_cheap", "fairy_big", "fairy_big_discord", "fairy_esoteric", "hideous_mass", "hisii_engineer", "hisii_giga_bomb", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "lukki_swarmling", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_magic", "rat_birthday", "sentry", "star_child", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_weirdo_shield", "acidshooter", "alchemist", "ant", "assassin", "barfer", "bat", "bigfirebug", "bigzombie", "miniblob", "bloodcrystal_physics", "bloom", "chest_mimic", "crystal_physics", "drone_physics", "enlightened_alchemist", "failed_alchemist", "failed_alchemist_b", "firebug", "firemage", "fireskull", "flamer", "fly", "frog", "frog_big", "fungus", "fungus_big", "gazer", "ghoul", "giant", "giantshooter", "healerdrone_physics", "icer", "iceskull", "lasershooter", "longleg", "maggot", "miner", "miner_fire", "missilecrab", "monk", "necromancer", "necromancer_shop", "phantom_a", "phantom_b", "rat", "roboguard", "scavenger_clusterbomb", "scavenger_heal", "scavenger_grenade", "scavenger_leader", "scavenger_mine", "scavenger_poison", "scavenger_smg", "shooterflower", "shotgunner", "skullfly", "skullrat", "slimeshooter", "sniper", "spitmonster", "statue_physics", "tank", "tank_rocket", "tank_super", "tentacler", "tentacler_small", "thundermage", "thunderskull", "wizard_dark", "wizard_neutral", "wizard_poly", "wizard_returner", "wizard_swapper", "wizard_tele", "wolf", "wraith", "wraith_glowing", "wraith_storm", "zombie", "skycrystal_physics", "scavenger_shield", "spearbot", "goblin_bomb", "necrobot", "ethereal_being", }

if ModIsEnabled("new_enemies") and minute > 20 then
    enemy_list = { "bubbles/freezing_liquid/bubble_liquid", "bubbles/ambrosia/bubble_liquid", "c_basebot_speeder_mocreep", "blindgazer", "forsaken_eye", "fungus_smoking_creep", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "goo_slug", "ccc_bat_psychic", "ceiling_fungus", "devourer_magic", "drone_mini", "drone_status_ailment", "esoteric_being", "fairy_cheap", "fairy_big", "fairy_big_discord", "fairy_esoteric", "hideous_mass", "hisii_engineer", "hisii_giga_bomb", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "lukki_swarmling", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_magic", "rat_birthday", "sentry", "star_child", "slime_leaker", "slime_leaker_weak", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_returner_mocreep", "wraith_weirdo_shield", "manus","polyp_gas","conduit","drone_trail","irtokki","tank_fire2","scavenger_poison_immunity","sporeling_tiny","sporeling","sporeling_large","wizard_madness","eradicator","mirror_physics","drake_snake","slime_ghoul","wizard_twin","lukki_weird","wizard_random","drone_beam","hazmat","radiobot","electrobot","cargobot","commander","sawbot","singularitor","wraith_void2","giantfirebug","alien","mutant2","smoke_bot","lukki_swamp2","fungus_swamp2","scavenger_electrocuter2","drone_face2","valkyrie2","wandmaster2","void_mask2","phantom_trapper","potionmaster2","toxicmage_acid2","toxicmage2","lost_soul_big","lost_soul","twig_grower","player_ai","menhir","knight","wizard_trip","worm_fungal","igu","chest_great_mimic","hybrid","scavenger_undercover","zombie_giant","head_statue_physics","fallen_alchemist","icemage_big2","cyborg","scavenger_laser","icicle_king","corrupt_alchemist","longleg_big","forgotten_alchemist","eldari_big","firemage_big","desulitor","alchaos","bloodmage_greater","fire_crawler","gazer_laser","menace","giant_energy","giant_alt","bloodmage_lesser","thou","giant_old","wizard_time","flesh_monster","wizard_earthquake","nova","ghuu","gonha","miner_alcohol","scavenger_alcohol","worm_eel","worm_robot","jellyfish","scavenger_radiolava","scavenger_compressor_robot","scavenger_turbo_robot","scavenger_gas_robot","slime_turret","enigma","flesh_wall","frog_bot","eye_bat","snowman","wraith_speed","phan","ooion","moal","mutant_blob","stone_crab","stalker_ceiling","dripper","driller","vine_monster","sneeker","ground_terror","bouncer","fungus_spore","stalker","monkey","invisiman","eye_monster","scavenger_robot","scavenger_compressor","scavenger_turbo","scavenger_gas","scavenger_oiler","hairling","goomonster","face_worm","shapeshifter","wyrm","lukki_white","cobra","draghoul","imp","lukki_blue","lukki_red","scavenger_trigger", "lurker2","crawler","bot","laserbot","robot","bluemancer","lavashooter","gigashooter","archer","axeman","bigfly","bloodskull","drone2","earthskull","electricskull","earthmage","polyshooter","chaoticpolyshooter","watermonster","acidmonster","bloodmonster","scavenger_plasma","fireflower","creeper","bloom_ceiling","book","darkghost2","ent","eyeling","ghostling","icemage","icicle","jungle_worm","long_ghost","nautilus","nightmare","skeleton","skullmage","spider","spooky_ghost","stone_physics","summoner" }
else
    enemy_list = { "bubbles/freezing_liquid/bubble_liquid", "bubbles/ambrosia/bubble_liquid", "c_basebot_speeder_mocreep", "blindgazer", "forsaken_eye", "fungus_smoking_creep", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "goo_slug", "ccc_bat_psychic", "ceiling_fungus", "devourer_magic", "drone_mini", "drone_status_ailment", "esoteric_being", "fairy_cheap", "fairy_big", "fairy_big_discord", "fairy_esoteric", "hideous_mass", "hisii_engineer", "hisii_giga_bomb", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "lukki_swarmling", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_magic", "rat_birthday", "sentry", "star_child", "slime_leaker", "slime_leaker_weak", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_returner_mocreep", "wraith_weirdo_shield" }
end

enemy_list_from = { "bubbles/freezing_liquid/bubble_liquid", "bubbles/ambrosia/bubble_liquid", "c_basebot_speeder_mocreep", "blindgazer", "forsaken_eye", "fungus_smoking_creep", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "goo_slug", "ccc_bat_psychic", "ceiling_fungus", "devourer_magic", "drone_mini", "drone_status_ailment", "esoteric_being", "fairy_cheap", "fairy_big", "fairy_big_discord", "fairy_esoteric", "hideous_mass", "hisii_engineer", "hisii_giga_bomb", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "lukki_swarmling", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_magic", "rat_birthday", "sentry", "star_child", "slime_leaker", "slime_leaker_weak", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_returner_mocreep", "wraith_weirdo_shield", "acidshooter", "alchemist", "ant", "assassin", "barfer", "bat", "bigfirebug", "bigzombie", "miniblob", "bloodcrystal_physics", "bloom", "chest_mimic", "crystal_physics", "drone_physics", "enlightened_alchemist", "failed_alchemist", "failed_alchemist_b", "firebug", "firemage", "fireskull", "flamer", "fly", "frog", "frog_big", "fungus", "fungus_big", "gazer", "ghoul", "giant", "giantshooter", "healerdrone_physics", "icer", "iceskull", "lasershooter", "longleg", "maggot", "miner", "miner_fire", "missilecrab", "monk", "necromancer", "necromancer_shop", "phantom_a", "phantom_b", "rat", "roboguard", "scavenger_clusterbomb", "scavenger_heal", "scavenger_grenade", "scavenger_leader", "scavenger_mine", "scavenger_poison", "scavenger_smg", "shooterflower", "shotgunner", "skullfly", "skullrat", "slimeshooter", "sniper", "spitmonster", "statue_physics", "tank", "tank_rocket", "tank_super", "tentacler", "tentacler_small", "thundermage", "thunderskull", "wizard_dark", "wizard_neutral", "wizard_poly", "wizard_returner", "wizard_swapper", "wizard_tele", "wolf", "wraith", "wraith_glowing", "wraith_storm", "zombie", "skycrystal_physics", "scavenger_shield", "spearbot", "goblin_bomb", "necrobot", "ethereal_being", "hideous_mass_red", "mudman_friendly", }


local shift_check = false
local shift_check_2 = false
local from_creature_name = "DEBUG ERROR"

--TODO create custom messages for these
log_messages = 
{
	"$log_mocreep_reality_mutation_00",
	"$log_mocreep_reality_mutation_01",
	"$log_mocreep_reality_mutation_02",
	"$log_mocreep_reality_mutation_03",
	"$log_mocreep_reality_mutation_04",
	"$log_mocreep_reality_mutation_05",
}


--for minidrones shifting because they have an attack different from their base one.. maybe use a variable storage component in it's base to check if
--it's a real minidrone or a shifted creature?








function creature_shift( entity, x, y, debug_no_limits )

    local parent = EntityGetParent( entity )
	if parent ~= 0 then
		entity = parent
	end
    --local entity_id = parent

    local frame = GameGetFrameNum()
    local last_frame = tonumber( GlobalsGetValue( "mocreep_creature_shift_last_frame", "-1000000" ) )
    if frame < last_frame + 60*60*4 and not debug_no_limits then --4 minute long cooldown between shifts
        shift_check = false --long cooldown
    else
        shift_check = true
    end

    local iter = tonumber( GlobalsGetValue( "mocreep_creature_shift_iteration", "0" ) )
    GlobalsSetValue( "mocreep_creature_shift_iteration", tostring(iter+1) )
    if iter > 30 and not debug_no_limits then
        shift_check_2 = false --max shifts hit (30)
    else
        shift_check_2 = true
    end

    --debug to spam it
    --[[
    shift_check = true
    shift_check_2 = true
    ]]--

    if (shift_check == true) and (shift_check_2 == true) then


        --Actual enemy shift
        --Grabs Target enemy (the shift-to target) & Target2 Enemy (the victim)

        rnd = Random(1, #enemy_list)
        local target2 = enemy_list[rnd]
        table.remove(enemy_list, rnd)
        if ModIsEnabled("new_enemies") == false then
            table.remove(enemy_list_from, rnd)
        end

        local rnd = Random(1, #enemy_list_from)
        local target = enemy_list_from[rnd]
        table.remove(enemy_list, rnd)


        --Debugging shift, forces all psychic bats to be turned into Shotgunners
        --target = "shotgunner"
        --target2 = "ccc_bat_psychic"

        --target2 = "esoteric_being"
        --Debugging helper
        --GamePrint(target2 .. " has turned into " .. target)
        --GamePrint("The minute is " .. minute)



        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        --local setContent = ModTextFileSetContent() Apparantly ModTextFileSetContent works after init if you save a reference to it... somehow?
        --"Yea, ModTextFileSetContent won't be available after initialisation but SetContent will be"
        --"but you can't make any more modifications after a file has been loaded; even if you save a reference to the function"
        --"If you use dofile("xx.lua") from init.lua then ModTextFileSetContent will also be available there."
        --"can't you just unload the entities and load the shift target in their place instead of swapping their file contents?"
        --"I could.. but that'd require rewriting everything I have from the base up, unless you mean unloading the entity from the game's memory?"
        --"no just a script on the entity that kills itself and spawns the other entity in it's place"
        local content = ModTextFileGetContent("data/entities/animals/" .. target2 .. ".xml")
        local xml = nxml.parse(content)
        local creature_name_get = xml.attr.name



        local content = ModTextFileGetContent("data/entities/animals/" .. target .. ".xml")
        local xml = nxml.parse(content)
        if xml.attr.tags ~= nil then
            xml.attr.tags = xml.attr.tags .. ",acid" --Prevents the player updater script from needlessly updating creatures
        end
        xml:add_child(nxml.parse([[
        <ParticleEmitterComponent
            emitted_material_name="fungal_shift_particle_fx"
            offset.x="0"
            offset.y="-0.5"
            x_pos_offset_min="-4"
            x_pos_offset_max="4"
            y_pos_offset_min="-12"
            y_pos_offset_max="4"
            x_vel_min="-5"
            x_vel_max="5"
            y_vel_min="-10"
            y_vel_max="-30"
            count_min="2"
            count_max="3"
            lifetime_min="0.5"
            lifetime_max="1.2"
            create_real_particles="0"
            emit_cosmetic_particles="1"
            emission_interval_min_frames="4"
            emission_interval_max_frames="12"
            gravity.y="-10"
            fade_based_on_lifetime="1"
            is_emitting="1" >
        </ParticleEmitterComponent>
        ]]))

        if target2 == "esoteric_being" then
            xml:add_child(nxml.parse([[
            <LuaComponent
                script_source_file="mods/mo_creeps/files/scripts/animals/esoteric_being_shifted_smoke.lua"
                execute_every_n_frame="1"
                remove_after_executed="1"
                >
            </LuaComponent>
            ]]))
        end

        ModTextFileSetContent("data/entities/animals/" .. target2 .. ".xml", tostring(xml))

        from_creature_name = creature_name_get

        --Add smoke particles to victim
        --Target = The shift-to target
        --Target2 = The Victim, the one being shifted






    -- fx
        -- remove tripping effect
        -- This needs to be updated to the custom status effect when it's implemented
        local entity_id_table = EntityGetWithTag( "player_unit" )
        entity_id_status = entity_id_table[1]
        EntityRemoveIngestionStatusEffect( entity_id_status, "MOCREEPS_TRIP_RED" );

        -- audio
        GameTriggerMusicFadeOutAndDequeueAll( 5.0 )
        GameTriggerMusicEvent( "music/oneshot/tripping_balls_01", false, x, y )

        -- particle fx
        --[[
        local eye
        if y == nil then
            eye = EntityLoad( "data/entities/particles/treble_eye.xml", x, y - 10 )
        else
            eye = EntityLoad( "data/entities/particles/treble_eye.xml", x, -105 )
        end
        --having trouble detecting y, code belives it's a nil value
        if eye ~= 0 then
            EntityAddChild( entity, eye )
        end
        ]]--

        -- log
        local log_msg = ""
        if from_creature_name ~= "" then
            from_creature_name = GameTextGetTranslatedOrNot( from_creature_name )
			log_msg = GameTextGet( "$logdesc_reality_mutation", from_creature_name )
            GamePrint( log_msg )
        end
        GamePrintImportant( random_from_array( log_messages ), log_msg, "mods/mo_creeps/files/ui_gfx/decorations/3piece_creature_shift.png" )
        GlobalsSetValue( "mocreep_creature_shift_last_frame", tostring(frame) )

        -- add ui icon
        local add_icon = true
        local children = EntityGetAllChildren(EntityGetWithTag( "player_unit" ))
        if children ~= nil then
            for i,it in ipairs(children) do
                if ( EntityGetName(it) == "creature_shift_ui_icon" ) then
                    add_icon = false
                    break
                end
            end
        end

        if add_icon then
            local icon_entity = EntityCreateNew( "creature_shift_ui_icon" )
            EntityAddComponent( icon_entity, "UIIconComponent", 
            { 
                name = "$status_reality_mutation",
                description = "$statusdesc_reality_mutation",
                --icon_sprite_file = "mods/mo_creeps/files/ui_gfx/status_indicators/creature_shift.png"
                icon_sprite_file = "data/ui_gfx/animal_icons/" .. target2 .. ".png"
            })
            local targets = EntityGetWithTag( "player_unit" )

            for i,v in ipairs( targets ) do
                if ( v ~= entity_id ) then
                    EntityAddChild( v, icon_entity )
                end
            end
        end

        local targets = EntityGetInRadius( x, y, 30 )
        for i,v in ipairs( targets ) do
            if ( v ~= entity_id ) and ( EntityGetName( v ) == "creature_shift_ui_icon" ) then
                local comp = EntityGetFirstComponent( v, "UIIconComponent" )
                ComponentSetValue2( comp, "icon_sprite_file", "data/ui_gfx/animal_icons/" .. target2 .. ".png" )
                x, y = EntityGetTransform( v )
            end
        end

        local iter_glob = tonumber( GlobalsGetValue( "mocreep_creature_shift_iteration", "0" ) )
        GlobalsSetValue("Mocreep_global_Cshift_" .. iter_glob .. "_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_" .. iter_glob .. "_targ2", tostring(target2) )


        --Debugging
        --[[
        local target = (GlobalsGetValue("Mocreep_global_Cshift_" ..iter .. "_targ1", "failed") )
        local target2 = (GlobalsGetValue("Mocreep_global_Cshift_" .. iter .. "_targ2", "failed") )

        GamePrint(target)
        GamePrint(target2)
        ]]--

        --Updates old, already created entities to be shifted to their new form
        --Makes sure to only apply the lua script once
        --The lua script may be removed between restarts actually.. hmm
        --Perhaps a child entity would be better?
        --
        --Then again, a half-budgeted approach might be best, update entities until the player needs to restart
        --Stop consuming resources on this task after the player restarts, and then they probably won't notice or remember the shift later?
        --I just don't want to be resource intensive, bluntly.
        --
        --Updates every 2.5 seconds
        --
        --
        --nxml shifted creatures retain their filepath.. troublesome but a reasonable conclusion I overlooked in pursuit of envisioning how to accomplish other goals
        --Apply 'acid' tag to all shifted creatures, then only update if taken care of?
        --
        --[[
        ]]--
        if iter_glob == 1 then
            local player_list = EntityGetWithTag("player_unit")
            for i,v in ipairs(player_list) do
                EntityAddComponent2(
                    v,
                    "LuaComponent",
                    {
                        execute_on_added = true,
                        script_source_file = "mods/mo_creeps/files/scripts/magic/creature_shift_new/player_shift_update.lua",
                        execute_every_n_frame = 150,
                        remove_after_executed = false,
                        execute_times=-1
                    }
                )
            end
        end

        if ModIsEnabled("fungal_timer") then
            local player_list = EntityGetWithTag("player_unit")
            for i,v in ipairs(player_list) do
                
                local x, y = EntityGetTransform( v )
                local cid = EntityLoad( "mods/mo_creeps/files/entities/misc/effect_status_creatureshift_cd_visual.xml", x, y )
                EntityAddChild( v, cid )
            end
        end

    end
end
