dofile("data/scripts/lib/utilities.lua")
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local enemy_list
local entity = EntityGetWithTag( "player_unit" )
local entity_id = EntityGetWithTag( "player_unit" )
local x, y = EntityGetTransform( entity )
SetRandomSeed( x, y )

--Top list is modded enemies + vanilla; bottom is only modded enemies

--enemy_list = { "boss_toxic_worm_minion", "bubble_liquid", "bubbles/freezing_liquid/bubble_liquid", "blindgazer", "forsaken_eye", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "goo_slug", "ccc_bat_psychic", "ceiling_fungus", "devourer_ghost", "devourer_magic", "drone_mini", "esoteric_being", "fairy_cheap", "fairy_big", "fairy_big_discord", "fairy_esoteric", "hideous_mass", "hisii_engineer", "hisii_minecart", "hisii_minecart_tnt", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_lukki", "poring_magic", "rat_birthday", "sentry", "star_child", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "tesla_turret", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_weirdo_shield", "acidshooter", "alchemist", "ant", "assassin", "barfer", "bat", "bigbat", "bigfirebug", "bigzombie", "miniblob", "bloodcrystal_physics", "bloom", "chest_mimic", "crystal_physics", "drone_physics", "enlightened_alchemist", "failed_alchemist", "failed_alchemist_b", "firebug", "firemage", "fireskull", "flamer", "fly", "frog", "frog_big", "fungus", "fungus_big", "gazer", "ghoul", "giant", "giantshooter", "healerdrone_physics", "icer", "iceskull", "lasershooter", "longleg", "maggot", "miner", "miner_fire", "missilecrab", "monk", "necromancer", "necromancer_shop", "phantom_a", "phantom_b", "rat", "roboguard", "scavenger_clusterbomb", "scavenger_heal", "scavenger_grenade", "scavenger_leader", "scavenger_mine", "scavenger_poison", "scavenger_smg", "shooterflower", "shotgunner", "skullfly", "skullrat", "slimeshooter", "sniper", "spitmonster", "statue_physics", "tank", "tank_rocket", "tank_super", "tentacler", "tentacler_small", "thundermage", "thunderskull", "turret_left", "turret_right", "wizard_dark", "wizard_neutral", "wizard_poly", "wizard_returner", "wizard_swapper", "wizard_tele", "wolf", "wraith", "wraith_glowing", "wraith_storm", "zombie", "skycrystal_physics", "scavenger_shield", "spearbot", "statue", "goblin_bomb", }
enemy_list = { "boss_toxic_worm_minion", "bubble_liquid", "bubbles/freezing_liquid/bubble_liquid", "blindgazer", "forsaken_eye", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "goo_slug", "ccc_bat_psychic", "ceiling_fungus", "devourer_ghost", "devourer_magic", "drone_mini", "esoteric_being", "fairy_cheap", "fairy_big", "fairy_big_discord", "fairy_esoteric", "hideous_mass", "hisii_engineer", "hisii_minecart", "hisii_minecart_tnt", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_lukki", "poring_magic", "rat_birthday", "sentry", "star_child", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "tesla_turret", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_weirdo_shield", }


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


local frame = GameGetFrameNum()
local last_frame = tonumber( GlobalsGetValue( "mocreep_creature_shift_last_frame", "-1000000" ) )
if frame < last_frame + 60*60*4 and not debug_no_limits then --4 minute long cooldown between shifts
    shift_check = false --long cooldown
else
    shift_check = true
end

local iter = tonumber( GlobalsGetValue( "mocreep_creature_shift_iteration", "0" ) )
GlobalsSetValue( "mocreep_creature_shift_iteration", tostring(iter+1) )
if iter > 20 and not debug_no_limits then
    shift_check_2 = false --max shifts hit
else
    shift_check_2 = true
end





function creature_shift( entity, x, y, debug_no_limits )
    if (shift_check == true) and (shift_check_2 == true) then


        --Actual enemy shift
        --Grabs Target enemy (the shift-to target) & Target2 Enemy (the victim)
        local rnd = Random(1, #enemy_list)
        local target = enemy_list[rnd]
        table.remove(enemy_list, rnd)

        rnd = Random(1, #enemy_list)
        local target2 = enemy_list[rnd]
        table.remove(enemy_list, rnd)


        --Debugging shift, forces all Forsaken Eyes to be turned into Blind Gazers
        target = "blindgazer"
        target2 = "forsaken_eye"



        local content = ModTextFileGetContent("data/entities/animals/" .. target2 .. ".xml")
        local xml = nxml.parse(content)
        local creature_name_get = xml.attr.name

        local content = ModTextFileGetContent("data/entities/animals/" .. target .. ".xml")
        local xml = nxml.parse(content)
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
            lifetime_min="0.4"
            lifetime_max="1.0"
            create_real_particles="0"
            emit_cosmetic_particles="1"
            emission_interval_min_frames="4"
            emission_interval_max_frames="12"
            gravity.y="-10"
            is_emitting="1" >
        </ParticleEmitterComponent>
        ]]))
        ModTextFileSetContent("data/entities/animals/" .. target2 .. ".xml", tostring(xml))

        from_creature_name = creature_name_get

        --Add smoke particles to victim
        --Target = The shift-to target
        --Target2 = The Victim, the one being shifted






    -- fx
        -- remove tripping effect
        -- This needs to be updated to the custom status effect when it's implemented
        EntityRemoveIngestionStatusEffect( entity, "TRIP" );

        -- audio
        GameTriggerMusicFadeOutAndDequeueAll( 5.0 )
        GameTriggerMusicEvent( "music/oneshot/tripping_balls_01", false, x, y )

        -- particle fx
        --local eye = EntityLoad( "data/entities/particles/treble_eye.xml", x, y-10 )
        --having trouble detecting y, code belives it's a nil value
        local eye = EntityLoad( "data/entities/particles/treble_eye.xml", x, -105 )
        if eye ~= 0 then
            EntityAddChild( entity, eye )
        end

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
        local children = EntityGetAllChildren(entity)
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
                icon_sprite_file = "mods/mo_creeps/files/ui_gfx/status_indicators/creature_shift.png"
            })
            local targets = EntityGetWithTag( "player_unit" )

            for i,v in ipairs( targets ) do
                if ( v ~= entity_id ) then
                    EntityAddChild( v, icon_entity )
                end
            end
        end
    end

    local shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_1_targ1", "failed") )
    local shiftStorageWeGood = false

    if shiftStorageCheck == "failed" then
        GlobalsSetValue("Mocreep_global_Cshift_1_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_1_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_2_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_2_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_2_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_3_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_3_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_3_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_4_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_4_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_4_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_5_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_5_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_5_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_6_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_6_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_6_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_7_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_7_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_7_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_8_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_8_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_8_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_9_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_9_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_9_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_10_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_10_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_10_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_11_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_11_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_11_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_12_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_12_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_12_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_13_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_13_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_13_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_14_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_14_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_14_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_15_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_15_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_15_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_16_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_16_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_16_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_17_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_17_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_17_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_18_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_18_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_18_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_19_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_19_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_19_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageCheck = (GlobalsGetValue("Mocreep_global_Cshift_20_targ1", "failed") )
    if shiftStorageCheck == "failed" and shiftStorageWeGood == false then
        GlobalsSetValue("Mocreep_global_Cshift_20_targ1", tostring(target) )
        GlobalsSetValue("Mocreep_global_Cshift_20_targ2", tostring(target2) )
        shiftStorageWeGood = true
    end

    shiftStorageWeGood = false

end
