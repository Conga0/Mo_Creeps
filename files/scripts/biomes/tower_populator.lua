
--Why can't you just be normal, tower?... well, let's get to it
--Acidshooter is where normal vanilla enemies start

enemy_list = { "boss_toxic_worm", "boss_toxic_worm_minion", "bubble_liquid", "bubbles/ambrosia/bubble_liquid", "forsaken_eye", "gazer_greater", "gazer_greater_cold", "gazer_greater_sky", "giant_centipede", "vault/goo_slug", "devourer_ghost", "devourer_magic", "drone_mini", "fairy_big", "fairy_big_discord", "crypt/hideous_mass", "vault/hisii_engineer", "hisii_minecart", "hisii_rocketshotgun", "lukki_fungus", "mimic_explosive_box", "musical_being_weak", "poisonmushroom", "poring", "poring_holy", "poring_magic", "rat_birthday", "sentry", "star_child", "tank_flame_mocreep", "tentacler_big", "tesla_turret", "triangle_gem", "whisp", "wizard_ambrosia", "wizard_copeseethmald", "wizard_duck", "wizard_explosive", "wizard_manaeater", "wizard_transmutation", "wizard_firemage_greater", "acidshooter", "alchemist", "ant", "assassin", "barfer", "bat", "bigbat", "bigfirebug", "bigzombie", "blob", "bloodcrystal_physics", "bloom", "chest_mimic", "crystal_physics", "drone_physics", "enlightened_alchemist", "failed_alchemist", "failed_alchemist_b", "firebug", "firemage", "fireskull", "flamer", "fly", "frog", "frog_big", "fungus", "fungus_big", "gazer", "ghoul", "giant", "giantshooter", "healerdrone_physics", "icer", "iceskull", "lasershooter", "longleg", "maggot", "miner", "miner_fire", "missilecrab", "monk", "necromancer", "necromancer_shop", "phantom_a", "phantom_b", "rat", "roboguard", "scavenger_clusterbomb", "scavenger_heal", "scavenger_grenade", "scavenger_leader", "scavenger_mine", "scavenger_poison", "scavenger_smg", "shooterflower", "shotgunner", "skullfly", "skullrat", "slimeshooter", "sniper", "spitmonster", "statue_physics", "tank", "tank_rocket", "tank_super", "tentacler", "tentacler_small", "thundermage", "thunderskull", "turret_left", "turret_right", "wizard_dark", "wizard_neutral", "wizard_poly", "wizard_returner", "wizard_swapper", "wizard_tele", "wolf", "wraith", "wraith_glowing", "wraith_storm", "zombie", "skycrystal_physics", "scavenger_shield", "spearbot", "statue", "goblin_bomb" }

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
