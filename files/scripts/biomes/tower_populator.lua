
--Why can't you just be normal, tower?... well, let's get to it
--Acidshooter is where normal vanilla enemies start

--New enemies compatibility

if ModIsEnabled("new_enemies") then
enemy_list = { "boss_toxic_worm", "boss_toxic_worm_minion", "bubble_liquid", "bubbles/ambrosia/bubble_liquid", "blindgazer", "blob_big", "blob_huge", "forsaken_eye", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "vault/goo_slug", "ccc_bat_psychic", "fungiforest/ceiling_fungus", "devourer_ghost", "devourer_magic", "drone_mini", "esoteric_being", "fairy_big", "fairy_big_discord", "fairy_esoteric", "crypt/hideous_mass", "vault/hisii_engineer", "hisii_minecart", "hisii_minecart_tnt", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_lukki", "poring_magic", "rat_birthday", "sentry", "star_child", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "tesla_turret", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_weirdo_shield", "manus","polyp_gas","conduit","drone_trail","irtokki","tank_fire2","scavenger_poison_immunity","sporeling_tiny","sporeling","sporeling_large","wizard_madness","eradicator","mirror_physics","drake_snake","slime_ghoul","wizard_twin","lukki_weird","wizard_random","drone_beam","hazmat","radiobot","electrobot","cargobot","commander","sawbot","singularitor","wraith_void2","blob_giant","giantfirebug","alien","mutant2","smoke_bot","lukki_swamp2","fungus_swamp2","scavenger_electrocuter2","drone_face2","valkyrie2","wandmaster2","void_mask2","phantom_trapper","potionmaster2","toxicmage_acid2","toxicmage2","lost_soul_big","lost_soul","twig_grower","player_ai","menhir","knight","wizard_trip","worm_fungal","igu","chest_great_mimic","hybrid","scavenger_undercover","zombie_giant","head_statue_physics","fallen_alchemist","icemage_big2","cyborg","scavenger_laser","icicle_king","corrupt_alchemist","longleg_big","forgotten_alchemist","eldari_big","firemage_big","desulitor","alchaos","bloodmage_greater","fire_crawler","gazer_laser","menace","giant_energy","giant_alt","bloodmage_lesser","thou","giant_old","wizard_time","flesh_monster","wizard_earthquake","nova","ghuu","gonha","miner_alcohol","scavenger_alcohol","worm_eel","worm_robot","jellyfish","scavenger_radiolava","scavenger_compressor_robot","scavenger_turbo_robot","scavenger_gas_robot","slime_turret","enigma","flesh_wall","frog_bot","eye_bat","snowman","wraith_speed","phan","ooion","moal","mutant_blob","stone_crab","stalker_ceiling","dripper","driller","vine_monster","sneeker","ground_terror","bouncer","fungus_spore","stalker","monkey","invisiman","eye_monster","scavenger_robot","scavenger_compressor","scavenger_turbo","scavenger_gas","scavenger_oiler","hairling","goomonster","face_worm","shapeshifter","wyrm","lukki_white","cobra","draghoul","imp","lukki_blue","lukki_red","scavenger_trigger", "lurker2","crawler","bot","laserbot","robot","bluemancer","lavashooter","gigashooter","archer","axeman","bigfly","bloodskull","drone2","earthskull","electricskull","earthmage","polyshooter","chaoticpolyshooter","watermonster","acidmonster","bloodmonster","scavenger_plasma","fireflower","creeper","bloom_ceiling","book","darkghost2","ent","eyeling","ghostling","icemage","icicle","jungle_worm","long_ghost","nautilus","nightmare","skeleton","skullmage","spider","spooky_ghost","stone_physics","summoner", "acidshooter", "alchemist", "ant", "assassin", "barfer", "bat", "bigbat", "bigfirebug", "bigzombie", "blob", "bloodcrystal_physics", "bloom", "chest_mimic", "crystal_physics", "drone_physics", "enlightened_alchemist", "failed_alchemist", "failed_alchemist_b", "firebug", "firemage", "fireskull", "flamer", "fly", "frog", "frog_big", "fungus", "fungus_big", "gazer", "ghoul", "giant", "giantshooter", "healerdrone_physics", "icer", "iceskull", "lasershooter", "longleg", "maggot", "miner", "miner_fire", "missilecrab", "monk", "necromancer", "necromancer_shop", "phantom_a", "phantom_b", "rat", "roboguard", "scavenger_clusterbomb", "scavenger_heal", "scavenger_grenade", "scavenger_leader", "scavenger_mine", "scavenger_poison", "scavenger_smg", "shooterflower", "shotgunner", "skullfly", "skullrat", "slimeshooter", "sniper", "spitmonster", "statue_physics", "tank", "tank_rocket", "tank_super", "tentacler", "tentacler_small", "thundermage", "thunderskull", "turret_left", "turret_right", "wizard_dark", "wizard_neutral", "wizard_poly", "wizard_returner", "wizard_swapper", "wizard_tele", "wolf", "wraith", "wraith_glowing", "wraith_storm", "zombie", "skycrystal_physics", "scavenger_shield", "spearbot", "statue", "goblin_bomb", }
else
enemy_list = { "boss_toxic_worm", "boss_toxic_worm_minion", "bubble_liquid", "bubbles/ambrosia/bubble_liquid", "blindgazer", "blob_big", "blob_huge", "forsaken_eye", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "gazer_robot", "ghost_bow", "giant_centipede", "vault/goo_slug", "ccc_bat_psychic", "fungiforest/ceiling_fungus", "devourer_ghost", "devourer_magic", "drone_mini", "esoteric_being", "fairy_big", "fairy_big_discord", "fairy_esoteric", "crypt/hideous_mass", "vault/hisii_engineer", "hisii_minecart", "hisii_minecart_tnt", "hisii_rocketshotgun", "locust_swarm", "lukki_fungus", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_lukki", "poring_magic", "rat_birthday", "sentry", "star_child", "shaman_greater_mocreep", "tank_flame_mocreep", "tentacler_big", "tesla_turret", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "wizard_z_poly_miniboss", "wraith_weirdo_shield", "acidshooter", "alchemist", "ant", "assassin", "barfer", "bat", "bigbat", "bigfirebug", "bigzombie", "blob", "bloodcrystal_physics", "bloom", "chest_mimic", "crystal_physics", "drone_physics", "enlightened_alchemist", "failed_alchemist", "failed_alchemist_b", "firebug", "firemage", "fireskull", "flamer", "fly", "frog", "frog_big", "fungus", "fungus_big", "gazer", "ghoul", "giant", "giantshooter", "healerdrone_physics", "icer", "iceskull", "lasershooter", "longleg", "maggot", "miner", "miner_fire", "missilecrab", "monk", "necromancer", "necromancer_shop", "phantom_a", "phantom_b", "rat", "roboguard", "scavenger_clusterbomb", "scavenger_heal", "scavenger_grenade", "scavenger_leader", "scavenger_mine", "scavenger_poison", "scavenger_smg", "shooterflower", "shotgunner", "skullfly", "skullrat", "slimeshooter", "sniper", "spitmonster", "statue_physics", "tank", "tank_rocket", "tank_super", "tentacler", "tentacler_small", "thundermage", "thunderskull", "turret_left", "turret_right", "wizard_dark", "wizard_neutral", "wizard_poly", "wizard_returner", "wizard_swapper", "wizard_tele", "wolf", "wraith", "wraith_glowing", "wraith_storm", "zombie", "skycrystal_physics", "scavenger_shield", "spearbot", "statue", "goblin_bomb", }
end


function spawn_any_enemy( x, y )
    SetRandomSeed( x, y )
    if safe( x, y ) then
        local rnd = Random( 1, #enemy_list )
        local target = enemy_list[rnd]
        
        local eid = EntityLoad( "data/entities/animals/" .. target .. ".xml", x, y )
        
        if ( target ~= "scavenger_heal" ) and ( target ~= "healerdrone_physics" ) then
            local damagemodels = EntityGetComponent( eid, "DamageModelComponent" )
            if( damagemodels ~= nil ) then
                for i,damagemodel in ipairs(damagemodels) do
                    local hp = tonumber( ComponentGetValue( damagemodel, "hp" ) ) * 4
                    
                    ComponentSetValue( damagemodel, "max_hp", hp )
                    ComponentSetValue( damagemodel, "hp", hp )
                end
            end
        end
    end
end
