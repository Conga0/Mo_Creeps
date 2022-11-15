dofile_once("data/scripts/lib/utilities.lua")


local pool = {
    "blindgazer",
    "blob_big",
    "blob_huge",
    "cat_mocreeps",
    "ccc_bat_psychic",
    "c_basebot_speeder_mocreep",
    "hisii_giga_bomb",
    "devourer_ghost",
    "devourer_magic",
    "drone_mini",
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
    "wraith_weirdo_shield",
    "bubbles/acid/bubble_liquid",
    "bubbles/water/bubble_liquid",
    "bubbles/ambrosia/bubble_liquid",
    "bubbles/freezing_liquid/bubble_liquid",
    "boss_toxic_worm/boss_toxic_worm_minion", --End of Mocreeps Monsters Here
    "alchemist",
    "assassin",
    "bigbat",
    "blob",
    "bloodcrystal_physics",
    "enlightened_alchemist",
    "flamer",
    "icer",
    "fungus_big",
    "fungus_giga",
    "necromancer",
    "necromancer_shop",
    "skullfly",
    "spitmonster",
    "tank_rocket",
    "tank_super",
    "tentacler",
    "thundermage",
    "wizard_neutral",
    "wizard_dark",
    "wizard_returner",
    "spearbot",
    "worm",
    "worm_big",
    "basebot_hidden",
    "basebot_neutralizer",
    "basebot_sentry",
    "basebot_soldier",
}

local prizePool = {
    "data/entities/items/pickup/potion_secret.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion_random_material.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/items/pickup/potion.xml",
    "data/entities/projectiles/rain_gold.xml",
}

function item_pickup( entity_item, entity_who_picked, name )
	local entity_id = GetUpdatedEntityID()
	local x,y = EntityGetTransform(entity_id)
    local loot_level = 4
    local currbiome = BiomeMapGetName( x, y )
    currbiome = tostring(currbiome)
    local prefix = "$biome_"

    --[[
    elseif (currbiome == "rainforest") or (currbiome == "rainforest_open") or (currbiome == "rainforest_dark") or (currbiome == "fungicave") or (currbiome == "fungiforest") or (currbiome == "vault") then
        loot_level = 4
    ]]--

    if (currbiome == prefix .. "coalmine") or (currbiome == prefix .. "coalmine_alt") or (currbiome == prefix .. "forest") or (currbiome == prefix .. "excavationsite") then
        loot_level = 2
    elseif (currbiome == prefix .. "snowcave") or (currbiome == prefix .. "snowcastle") or (currbiome == prefix .. "desert") then
        loot_level = 3
    elseif (currbiome == prefix .. "crypt") or (currbiome == prefix .. "robobase") or (currbiome == prefix .. "wizardcave") or (currbiome == prefix .. "clouds") then
        loot_level = 5
    elseif (currbiome == prefix .. "boss_victoryroom") then --Pandoras can't spawn in Heaven or Hell naturally, you'd have to drag them over, enjoy the prize of your hard work
        loot_level = 10
    end

    SetRandomSeed( GameGetFrameNum(), x, calcVar )
    local rnd = Random(1, #pool)

    local enemyCount = 25
    local calcVar = 77

    repeat
        local x, y = EntityGetTransform( entity_id )
        
        local angle = Random( 0, 31415 ) * 0.0001
        local length = 200
        
        local ex = x + math.cos( angle ) * length
        local ey = y - math.sin( angle ) * length

        EntityLoad( "data/entities/animals/" .. pool[rnd] .. ".xml", ex, ey )
        --EntityLoad( "data/entities/particles/poof_red_sparse.xml", ex, ey )  Wasn't very noticable, may as well save performance
        EntityLoad( "data/scripts/streaming_integration/entities/empty_circle.xml", ex, ey )

        enemyCount = enemyCount - 1
        calcVar = calcVar * 1.57

    until (enemyCount < 1)





    -- reward

    if ModIsEnabled("copis_things") then
        prizeSpells = {"ROCKET_TIER_2", "GRENADE_TIER_2", "ROCKET_TIER_3", "GRENADE_TIER_3", "SPITTER_TIER_2", "SPITTER_TIER_3", "LIGHT_BULLET_TRIGGER", "LIGHT_BULLET_TRIGGER_2", "ROCKET", "GRENADE", "SWAPPER_PROJECTILE", "BUCKSHOT", "SHIELD_FIELD", "SEA_ACID", "FREEZE", "CHAOS_POLYMORPH_FIELD", "LIFETIME", "LIFETIME_DOWN", "BLOOD_MAGIC", "MANA_REDUCE", "CHAINSAW", "RECHARGE", "HOMING_SHOOTER", "BLOODLUST", "MOCREEPS_BOMB_GIGA", "MOCREEPS_AQUA_MINE", "MOCREEPS_MASS_MATERIA_CONVERSION", "MOCREEPS_BUNGAL_SHIFT", "COPIS_THINGS_SUMMON_HAMIS", "COPIS_THINGS_UPGRADE_MANA_CHARGE_SPEED", "COPIS_THINGS_UPGRADE_MANA_MAX", "COPIS_THINGS_UPGRADE_FIRE_RATE_WAIT", "COPIS_THINGS_UPGRADE_RELOAD_TIME", "COPIS_THINGS_ARCANE_TURRET", "COPIS_THINGS_ANCHORED_SHOT", "COPIS_THINGS_LUNGE", "COPIS_THINGS_SLOW", "COPIS_THINGS_CONCRETEBALL", "COPIS_THINGS_SLOW_BULLET_TIMER_N", "COPIS_THINGS_AUTO_FRAME", "COPIS_THINGS_ZAP", "COPIS_THINGS_SCATTER_6", "COPIS_THINGS_CAUSTIC_CLAW", "COPIS_THINGS_LUMINOUS_BLADE", "COPIS_THINGS_ASTRAL_VORTEX", "COPIS_THINGS_LARPA_FORWARDS", "COPIS_THINGS_SEA_RANDOM", "COPIS_THINGS_CIRCLE_RANDOM", "MOCREEPS_AQUA_MINE", }
    elseif ModIsEnabled("variaAddons") then
        prizeSpells = {"ROCKET_TIER_2", "GRENADE_TIER_2", "ROCKET_TIER_3", "GRENADE_TIER_3", "SPITTER_TIER_2", "SPITTER_TIER_3", "LIGHT_BULLET_TRIGGER", "LIGHT_BULLET_TRIGGER_2", "ROCKET", "GRENADE", "SWAPPER_PROJECTILE", "BUCKSHOT", "SHIELD_FIELD", "SEA_ACID", "FREEZE", "CHAOS_POLYMORPH_FIELD", "LIFETIME", "LIFETIME_DOWN", "BLOOD_MAGIC", "MANA_REDUCE", "CHAINSAW", "RECHARGE", "HOMING_SHOOTER", "BLOODLUST", "MOCREEPS_BOMB_GIGA", "MOCREEPS_AQUA_MINE", "MOCREEPS_MASS_MATERIA_CONVERSION", "MOCREEPS_BUNGAL_SHIFT", "VARIA_SLASH", "VARIA_BULLET", "VARIA_BULLET_TRIGGER", "VARIA_SHOTGUN_SHELL", "VARIA_CRIT_ON_CHARM", "VARIA_GATLING_RAY_ENEMY", "VARIA_RE_ADDED_CHARM_FIELD", "VARIA_JUMPER_BLAST", "VARIA_LUKKI_BOMB", "VARIA_CRESCENT_WAVE_POISON", "VARIA_BLINK", "VARIA_BEES", "MOCREEPS_AQUA_MINE", }
    else
        prizeSpells = {"ROCKET_TIER_2", "GRENADE_TIER_2", "ROCKET_TIER_3", "GRENADE_TIER_3", "SPITTER_TIER_2", "SPITTER_TIER_3", "LIGHT_BULLET_TRIGGER", "LIGHT_BULLET_TRIGGER_2", "ROCKET", "GRENADE", "SWAPPER_PROJECTILE", "BUCKSHOT", "SHIELD_FIELD", "SEA_ACID", "FREEZE", "CHAOS_POLYMORPH_FIELD", "LIFETIME", "LIFETIME_DOWN", "BLOOD_MAGIC", "MANA_REDUCE", "CHAINSAW", "RECHARGE", "HOMING_SHOOTER", "BLOODLUST", "MOCREEPS_BOMB_GIGA", "MOCREEPS_AQUA_MINE", "MOCREEPS_MASS_MATERIA_CONVERSION", "MOCREEPS_BUNGAL_SHIFT"}
    end

    local spellCount = 7

    for i = 1, spellCount do
        local rnd = Random(1, #prizeSpells)
        CreateItemActionEntity(prizeSpells[rnd], x - 8 * spellCount + (i - 0.5) * 16, y)
        table.remove(prizeSpells, rnd)
    end

    --[[
    --This spawns Cursed Orb Barrage is the divine being is defeated at a 50% chance, removed since it didn't feel.. right
	local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" )

    if flag_status then
        if Random(0,1) == 1 then
            CreateItemActionEntity("MOCREEPS_HOLYORB_SHOTGUN_CURSED", x , y - 8)
        end
    end
    --]]

    local rewardCount = 18
    local calcVar = 77
    EntityLoad( "data/entities/projectiles/rain_gold.xml", ex, ey )

    repeat
        local x, y = EntityGetTransform( entity_id )
        
        local angle = Random( 0, 31415 ) * 0.0001
        local length = 150
        
        local ex = x + math.cos( angle ) * length
        local ey = y - math.sin( angle ) * length
        local rnd = Random(1, #prizePool)

        EntityLoad( prizePool[rnd], ex, ey )
        EntityLoad( "data/scripts/streaming_integration/entities/empty_circle.xml", ex, ey )

        rewardCount = rewardCount - 1
        calcVar = calcVar * 1.57

    until (rewardCount < 1)

	EntityLoad("data/entities/particles/image_emitters/magical_symbol_fast.xml", x, y)
	GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", x, y)
	GamePlaySound( "data/audio/Desktop/event_cues.snd", "event_cues/greed_curse/create", x, y)
    EntityLoad( "data/entities/items/pickup/heart.xml", x, y )
    EntityLoad( "data/entities/items/pickup/heart.xml", x, y )
    EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  x, y )
    EntityLoad( "data/entities/animals/worm_big.xml",  x + 100, y + 250 )

    if ModIsEnabled("purgatory") or ModIsEnabled("nightmare") then
        loot_level = loot_level + 2
        if loot_level >= 10 then
            EntityLoad( "data/entities/items/wand_unshuffle_10.xml", x, y - 16 )
        else
            EntityLoad( "data/entities/items/wand_unshuffle_0" .. loot_level .. ".xml", x, y - 16 )
        end
    else
        if loot_level >= 10 then
            EntityLoad( "data/entities/items/wand_unshuffle_10.xml", x, y - 16 )
        else
            EntityLoad( "data/entities/items/wand_unshuffle_0" .. loot_level .. ".xml", x, y - 16 )
        end
    end


    GameAddFlagRun( "mocreeps_pandora_unleashed" )
    --[[
    --Debugging Data
    GamePrint("Loot Level is " .. loot_level)
    GamePrint("Current biome name is `" .. currbiome .. "`")
    ]]--

    EntityKill( entity_item )

end

function physics_body_modified( is_destroyed )
	-- GamePrint( "A chest was broken open" )
	-- GameTriggerMusicCue( "item" )
	local entity_item = GetUpdatedEntityID()
end