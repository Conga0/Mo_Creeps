--spell is non-functional, intention is after every bounce, the projectile will redirect itself towards an enemy but I am failing to create this behaviour.
--I think it would be interesting, but is not proving worth the development time demanded so far.
--I may return to this at some point if I have a confident theory on how to get it working.
--[[table.insert(actions,
{
    id          = "MOCREEPS_BOUNCE_HOMING",
    name 		= "Autoaiming Bounce",
    description = "Your spells redirect themselves into an enemy upon every bounce",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mocreeps_bounce_homing.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/sinewave_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/bounce_homing.xml" },
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "1,2,3,4,6,7", -- BOUNCE_HOMING
    spawn_probability                 = "0.1,0.5,0.7,0.6,0.6,0.3", -- BOUNCE_HOMING
    price = 200,
    mana = 20,
    --max_uses = 150,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/bounce_homing.xml,data/entities/particles/tinyspark_white.xml,"
        c.bounces = c.bounces + 1
        c.fire_rate_wait = c.fire_rate_wait + 8
        shot_effects.recoil_knockback = shot_effects.recoil_knockback + 5.0
        draw_actions( 1, true )
    end,
})]]--

table.insert(actions,
{
    id          = "MOCREEPS_SAWBLADE_BIG_RAY",
    name 		= "ギガディスク・スローワー",
    description = "放射物から四方八方にギガディスクが発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_disc_big_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_disc_big_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 150,
    mana = 80,
    max_uses = 16,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/thrower_disc_big_ray.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_CURSED_ORB_RAY",
    name 		= "呪いの球体スローワー",
    description = "放射物から四方八方に呪われたスフィアが発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_cursed_orb_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_cursed_orb_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 150,
    mana = 110,
    max_uses = 16,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/thrower_cursed_orb_ray.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_DYNAMITE_RAY",
    name 		= "TNTスローワー",
    description = "放射物から四方八方にTNTが発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_dynamite_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_dynamite_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 150,
    mana = 110,
    max_uses = 16,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/thrower_dynamite_ray.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_ICEBALL_RAY",
    name 		= "アイスボール・スローワー",
    description = "放射物から四方八方に氷の玉が発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_ice_ball_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_ice_ball_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 150,
    mana = 110,
    max_uses = 16,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/thrower_ice_ball_ray.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_NUKE_RAY",
    name 		= "核爆弾スローワー",
    description = "本当に詠唱してしまうのか？                    ",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_nuke_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_nuke_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "5,6,10", -- GRAVITY_FIELD_ENEMY
    spawn_probability                 = "0.1,0.2,1", -- GRAVITY_FIELD_ENEMY
    price = 400,
    mana = 250,
    max_uses = 16,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/thrower_nuke_ray.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_SAWBLADE_BIG_RAY_ENEMY",
    name 		= "パーソナル・ギガディスク・スローワー",
    description = "放射物が当たった生物から、四方八方にギガディスクが発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_disc_big_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_disc_big_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 100,
    mana = 70,
    max_uses = 20,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/hitfx_disc_big_ray_enemy.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_CURSED_ORB_RAY_ENEMY",
    name 		= "パーソナル・呪いの球体スローワー",
    description = "放射物が当たった生物から、四方八方に呪われたスフィアが発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_cursed_orb_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_cursed_orb_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 100,
    mana = 90,
    max_uses = 20,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/hitfx_cursed_orb_ray_enemy.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_ICEBALL_RAY_ENEMY",
    name 		= "パーソナル・氷の玉スローワー",
    description = "放射物が当たった生物から、四方八方に呪われたスフィアが発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_ice_ball_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_ice_ball_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 100,
    mana = 90,
    max_uses = 20,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/hitfx_ice_ball_ray_enemy.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_DYNAMITE_RAY_ENEMY",
    name 		= "パーソナル・TNTスローワー",
    description = "放射物が当たった生物から、四方八方にTNTが発射されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_dynamite_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_dynamite_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 100,
    mana = 90,
    max_uses = 20,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/hitfx_dynamite_ray_enemy.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_NUKE_RAY_ENEMY",
    name 		= "パーソナル・核爆弾スローワー",
    description = "放射物が当たった生物から、四方八方に……えっ、核爆弾！？",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_nuke_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_nuke_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "2,3,4,5,6", -- FIREBALL_RAY_LINE
    spawn_probability                 = "0.6,0.4,0.4,0.4,1", -- FIREBALL_RAY_LINE
    price = 100,
    mana = 90,
    max_uses = 20,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/hitfx_nuke_ray_enemy.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_HOLYORB_SHOTGUN",
    name 		= "聖なる弾幕",
    description = "7発の神聖な魔法弾を発射する。若干の魔法特性もある。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/orb_holy_shotgun.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml", 7},
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "2,3,4,5,6", -- BUCKSHOT  Originally this was 1-5 but was changed because the spell feels too good to get early on, might revert, unsure
    --spawn_probability                 = "0.7,0.9,1,0.8,0.6", -- Original Rates
    spawn_probability                 = "0.7,0.7,0.8,0.8,0.6", -- BUCKSHOT
    price = 220,
    mana = 50,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml")
        c.fire_rate_wait = c.fire_rate_wait + 12
        c.spread_degrees = c.spread_degrees + 30.0
    end,
})

--[[
table.insert(actions,
{
    id          = "MOCREEPS_HOLYORB_SHOTGUN_CURSED",
    name 		= "Шквал проклятых сфер",
    description = "Вызывает шквал из 7 проклятых шаров. Обладает заметными разрушительными свойствами.",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/orb_holy_shotgun_cursed.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml", 7},
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing_spell",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "10",
    spawn_probability                 = "0.02",
    price = 220,
    mana = 80,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml")
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun_cursed.xml")
        c.fire_rate_wait = c.fire_rate_wait + 12
        c.spread_degrees = c.spread_degrees + 30.0
        current_reload_time = current_reload_time + 15
    end,
})
]]--

table.insert(actions,   --This spell is kinda weird
{
    id          = "MOCREEPS_BOMB_GIGA",
    name 		= "ギガボム",
    description = "ドーン！",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/bomb_giga.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/bomb_giga.xml"},
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "1,2,3,4,5,6,10", -- BOMB
    spawn_probability                 = "0.7,0.8,1,1,1,1,0.7", -- BOMB
    price = 300,
    mana = 50, 
    max_uses    = 3, 
    custom_xml_file = "mods/mo_creeps/files/entities/misc/custom_cards/bomb_giga.xml",
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/bomb_giga.xml")
        c.fire_rate_wait = c.fire_rate_wait + 140
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MASS_MATERIA_CONVERSION",
    name 		= "等価交換",
    description = "Cave quid volunt(己の望みに用心せよ)", --Be Careful what you wish for.. Convert a large amount of materials in a radius to various counterparts
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mass_materia_conversion.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/explosive_projectile_unidentified.png",
    related_extra_entities = { "data/entities/misc/mass_materia_conversion.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm_spell",
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "2,3,6,7,10", -- LAVA_TO_BLOOD
    spawn_probability                 = "0.1,0.1,0.3,0.5,1", -- LAVA_TO_BLOOD
    price = 250,
    mana = 200,
    max_uses = 3,
    action 		= function()
        add_projectile("data/entities/misc/mass_materia_conversion.xml")
        c.fire_rate_wait = c.fire_rate_wait + 60
        current_reload_time = current_reload_time + 30
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_BUNGAL_SHIFT",
    name 		= "きのこシフト",
    description = "Cave quid volunt(己の望みに用心せよ)", --Be Careful what you wish for.. Triggers a fungal shift, still obeys normal fungal cooldown
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/bungal_shift.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/explosive_projectile_unidentified.png",
    related_extra_entities = { "data/entities/misc/forced_bungal_shift.xml" },
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "2,3,6,7,10", -- LAVA_TO_BLOOD
    spawn_probability                 = "0.1,0.1,0.3,0.5,1", -- LAVA_TO_BLOOD
    price = 250,
    mana = 200,
    max_uses = 3,
    action 		= function()
        add_projectile("data/entities/misc/forced_bungal_shift.xml")
        c.fire_rate_wait = c.fire_rate_wait + 60
        current_reload_time = current_reload_time + 30
    end,
})

--[[
table.insert(actions,
{
    id          = "MOCREEPS_TEST_HOLY_BEAM",
    name 		= "Divine Light",
    description = "Creates a holy beam of divine light after 5 seconds, unbias to all it harms.",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/divine_light.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/beam_holy_warning_player.xml"},
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "4,5,6,10", -- Divine Light
    spawn_probability                 = "0.5,0.5,0.5,1", -- Divine Light
    price = 220,
    mana = 100,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/beam_holy_warning_player.xml")
        c.fire_rate_wait = c.fire_rate_wait + 120
    end,
})
]]--

table.insert(actions,
{
    id          = "MOCREEPS_AQUA_MINE",
    name 		= "浮遊機雷",
    description = "機雷を設置する。僅かだがホーミング効果もある。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/aquamine.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/aquamine.xml"},
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level	           = "1,3,4,6", -- MINE
    spawn_probability	   = "1,1,1,1", -- MINE
    price = 220,
    mana = 50,
    max_uses = 20,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/aquamine.xml")
        c.fire_rate_wait = c.fire_rate_wait + 12
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MUSICAL_STRIKE",
    name 		= "ミュージック・ストライク",
    description = "音楽のパワーで攻撃する。芸術は爆発だ。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/musical_strike.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/musical_delayed_attack_end.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_musical_boss_spell",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "1,2,3,4,5", -- MUSICALSTRIKE
    spawn_probability                 = "0.8,0.8,0.6,0.6,0.5", -- MUSICALSTRIKE
    price = 220,
    mana = 40, 
    max_uses = 30,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/musical_delayed_attack_end.xml")
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MUSICAL_STRIKE_TRIGGER",
    name 		= "ミュージック・ストライク(トリガー付き)",
    description = "音楽のパワーで攻撃する。着弾時に後ろの魔法を発動する。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/musical_strike_trigger.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/musical_delayed_attack_end.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_musical_boss_spell",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "1,2,3,4,5,10", -- MUSICALSTRIKE
    spawn_probability                 = "0.5,0.5,0.5,0.5,0.4,0.1", -- MUSICALSTRIKE
    price = 220,
    mana = 60, 
    max_uses = 30,
    action 		= function()
        add_projectile_trigger_hit_world("mods/mo_creeps/files/entities/projectiles/deck/musical_delayed_attack_end.xml", 1)
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_REVERBERATION",
    name 		= "波動",
    description = "音波による攻撃を行う。周囲のものがバラバラになる。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/reverberation.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/field_reverberation.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_musical_boss_spell",
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "0,1,2,3,4,5,6", -- FREEZE_FIELD
    spawn_probability                 = "0.3,0.6,0.6,0.7,0.7,0.3,0.2", -- FREEZE_FIELD
    price = 200,
    mana = 50, 
    max_uses = 20,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/field_reverberation.xml")
        c.fire_rate_wait = c.fire_rate_wait + 15
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_RAT_BITE",
    name 		= "噛みつき",
    description = "……魔法とは？",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/rat_bite.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/rat_bite.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_rat_bite",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "0,1,2", -- LUMINOUS_DRILL
    spawn_probability                 = "0.5,0.5,0.25", -- LUMINOUS_DRILL
    price = 150,
    mana = 20,
    --max_uses = 1000,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/rat_bite.xml")
        c.damage_critical_chance = c.damage_critical_chance + 10
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_BUNGAL_SHIFT_SPAM",
    name 		= "ハイパーきのこシフト",
    description = "とてもやばい                      ", --Triggers a fungal shift, no cooldown.
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/bungal_shift_spam.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/explosive_projectile_unidentified.png",
    related_extra_entities = { "data/entities/misc/forced_bungal_shift_spam.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm_spell",
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "10", -- Conversion spell
    spawn_probability                 = "0.01", -- Conversion spell
    price = 250,
    mana = 200,
    max_uses = 3,
    action 		= function()
        add_projectile("data/entities/misc/forced_bungal_shift_spam.xml")
        c.fire_rate_wait = c.fire_rate_wait + 60
        current_reload_time = current_reload_time + 30
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_SUMMON_WORM_BIG",
    name 		= "巨大ワーム召喚",
    description = "とても、あぶない                      ", --Triggers a fungal shift, no cooldown.
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/summon_worm_big.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/explosive_projectile_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/projectiles/deck/summon_worm_big.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm_spell",
    never_unlimited		= true,
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "10", -- Conversion spell
    spawn_probability                 = "0.01", -- Conversion spell
    price = 250,
    mana = 225,
    max_uses = 3,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/summon_worm_big.xml")
        c.fire_rate_wait = c.fire_rate_wait + 90
        current_reload_time = current_reload_time + 60
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_RAT_BITE_CRIT",
    name 		= "ブラッディー噛みつき",
    description = "……魔法とは？？？？？？                              ", --Converted Rat Bite, Big Crit chance.
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/rat_bite_crit.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/rat_bite_crit.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm_spell",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "10", -- Conversion spell
    spawn_probability                 = "0.01", -- Conversion spell
    price = 250,
    mana = 80,
    --max_uses = 1000,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/rat_bite_crit.xml")
        c.damage_critical_chance = c.damage_critical_chance + 50
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_SPELLS_TO_CATS",
    name 		= "呪文からネコへ",
    description = "周囲の放射物をネコにする。かわいい！",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/spells_to_cats.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/spells_to_cats.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_cat_secret",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "3,6,10", -- spells to Cats
    spawn_probability                 = "0.1,0.05,1", -- spells to Cats
    price = 600,
    mana = 200,
    --max_uses = 1000,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/spells_to_cats.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

--oh my god FUCK YOU
table.insert(actions,
{
    id                = "MOCREEPS_SPLIT_SPELL",
    name              = "分裂ショット",
    description       = "次に呪文を詠唱する時、50％の確率で2回詠唱できる。",
    sprite            = "mods/mo_creeps/files/ui_gfx/gun_actions/split_spell.png",
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type              = ACTION_TYPE_MODIFIER,
    spawn_level                       = "1,2,3,5,6,10", -- Omega
    spawn_probability                 = "0.1,0.05,0.1,0.2,0.2,0.8", -- Omega
    price             = 200,
    mana              = 20,
    action            = function()
        draw_actions( 1, true )
        local iter = 1
        local iter = tonumber(GlobalsGetValue("Mocreeps_global_splitseed", "0"))
        if iter == 0 then
            SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() - 523 )
            GlobalsSetValue("Mocreeps_global_splitseed", "1")
        end
        local rnd_num = Random( 1, 2 )
        if ( hand ~= nil ) and ( rnd_num == 1 ) then
            for i,data in ipairs( hand ) do
                if ( data.id ~= "MOCREEPS_SPLIT_SPELL" and data.type ~= ACTION_TYPE_OTHER ) then
                    data.action()
                end
            end
            c.spread_degrees = c.spread_degrees + 10.0  
        end
    end,
})

--Unfortunately these aren't as great spells as you'd think, even with perfect tracking.
--[[
table.insert(actions,
{
    id          = "MOCREEPS_CLOUD_ACID_PERSONAL",
    name 		= "Personal Acid Cloud",
    description = "Makes a projectile curse the creatures it hits with a cloud of Acid",
    sprite 		= "data/ui_gfx/gun_actions/cloud_acid.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_cloud_acid.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "0,1,2,3,4,5", -- CLOUD_ACID
    spawn_probability                 = "0.2,0.2,0.2,0.2,0.2,0.2", -- CLOUD_ACID
    price = 180,
    mana = 90,
    max_uses = 8,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/hitfx_cloud_acid.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_CLOUD_THUNDER_PERSONAL",
    name 		= "Personal Thunder Cloud",
    description = "Makes a projectile curse the creatures it hits with a cloud of Thunder",
    sprite 		= "data/ui_gfx/gun_actions/cloud_thunder.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_cloud_thunder.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "0,1,2,3,4,5", -- CLOUD_THUNDER
    spawn_probability                 = "0.3,0.3,0.3,0.3,0.3,0.3", -- CLOUD_THUNDER
    price = 190,
    mana = 90,
    max_uses = 12,
    action 		= function()
        c.extra_entities = c.extra_entities .. "mods/mo_creeps/files/entities/misc/hitfx_cloud_thunder.xml,"
        draw_actions( 1, true )
    end,
})]]--

table.insert(actions,
{
    id          = "MOCREEPS_MASS_STATUS_DRUNK",
    name 		= "ヤシオリ・フィールド",
    description = "周囲の生物が泥酔する",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mass_status_alcohol.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/mass_status_drunk.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type 		= ACTION_TYPE_UTILITY,
    spawn_level       = "0,1,2,3,4,5,6", -- X_RAY
    spawn_probability = "0.8,1,1,0.8,0.6,0.4,0.2", -- X_RAY
    price = 180,
    max_uses    = 20,
    mana = 100,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/mass_status_drunk.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MASS_STATUS_WET",
    name 		= "ウェット・フィールド",
    description = "周囲の生物をびしょ濡れにする",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mass_status_wet.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/mass_status_wet.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type 		= ACTION_TYPE_UTILITY,
    spawn_level       = "0,1,2,3,4,5,6", -- X_RAY
    spawn_probability = "0.8,1,1,0.8,0.6,0.4,0.2", -- X_RAY
    price = 180,
    max_uses    = 20,
    mana = 100,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/mass_status_wet.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MASS_STATUS_FIRE",
    name 		= "ファイアー・フィールド",
    description = "周囲の生物を炎上させる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mass_status_fire.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/mass_status_fire.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type 		= ACTION_TYPE_UTILITY,
    spawn_level       = "0,1,2,3,4,5,6", -- X_RAY
    spawn_probability = "0.8,1,1,0.8,0.6,0.4,0.2", -- X_RAY
    price = 180,
    max_uses    = 20,
    mana = 100,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/mass_status_fire.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MASS_STATUS_URINE",
    name 		= "ダーティ・フィールド",
    description = "周囲の生物を尿濡れ状態にする",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mass_status_urine.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/mass_status_urine.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type 		= ACTION_TYPE_UTILITY,
    spawn_level       = "0,1,2,3,4,5,6", -- X_RAY
    spawn_probability = "0.8,0.8,0.8,0.8,0.6,0.4,0.2", -- X_RAY
    price = 180,
    max_uses    = 20,
    mana = 100,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/mass_status_urine.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MASS_STATUS_POLYMORPH",
    name 		= "トランスフォーム・フィールド",
    description = "周囲の生物を変身させる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mass_status_polymorph.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/mass_status_polymorph.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_blob_boss_spell",
    type 		= ACTION_TYPE_UTILITY,
    spawn_level       = "2,3,4,5,6", -- X_RAY
    spawn_probability = "0.6,0.6,0.5,0.4,0.2", -- X_RAY
    price = 240,
    max_uses    = 20,
    mana = 120,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/mass_status_polymorph.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_TARGETTER",
    name 		= "ロックオン",
    description = "当たった生物が周囲から激しく憎悪されるようになる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/targetter.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/heavy_bullet_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/targetter.xml"},
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "1,2,3,4,5,6", -- HEAVY_BULLET
    spawn_probability                 = "0.5,1,1,1,1,1", -- HEAVY_BULLET
    price = 200,
    mana = 40,
    max_uses = 8,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/targetter.xml")
        c.fire_rate_wait = c.fire_rate_wait + 30
        --current_reload_time = current_reload_time + 15
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_ALT_FIRE_TELEPORT",
    name 		= "テレポート/ファイアーボルト",
    description = "右クリックすると、40マナを消費して代わりにテレポートボルトを発射することができる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/alt_fire_teleport_projectile.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
    --spawn_requires_flag = "mocreeps_card_unlocked_fire_lukki_spell",
    type    = ACTION_TYPE_PASSIVE,
    spawn_level                       = "0,1,2,4,5,6,10", -- TELEPORT_PROJECTILE
    spawn_probability                 = "0.45,0.45,0.45,0.3,0.3,0.3,0.8", -- TELEPORT_PROJECTILE
    price = 130,
    mana = 0,
    --max_uses    = 1,
    custom_xml_file   = "mods/mo_creeps/files/entities/misc/custom_cards/alt_fire_teleport.xml",
    action            = function()
        -- Go to the next card
        draw_actions(1, true)
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_ALT_FIRE_TELEPORT_SHORT",
    name 		= "近距離テレポート/ファイアーボルト",
    description = "右クリックすると、20マナを消費して代わりにテレポートボルトを発射することができる",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/alt_fire_teleport_projectile_short.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
    --spawn_requires_flag = "mocreeps_card_unlocked_fire_lukki_spell",
    type    = ACTION_TYPE_PASSIVE,
    spawn_level                       = "0,1,2,4,5,6,10", -- TELEPORT_PROJECTILE
    spawn_probability                 = "0.45,0.45,0.45,0.3,0.3,0.3,0.8", -- TELEPORT_PROJECTILE
    price = 130,
    mana = 0,
    --max_uses    = 1,
    custom_xml_file   = "mods/mo_creeps/files/entities/misc/custom_cards/alt_fire_teleport_short.xml",
    action            = function()
        -- Go to the next card
        draw_actions(1, true)
    end,
})

--Wait.. is burning trail literally just fire charge but not called fire charge..? Keep your naming consistency together Noita please
table.insert(actions,
{
    id          = "MOCREEPS_FIRE_CHARGE",
    name 		= "炎チャージ",
    description = "放射物に炎の力を籠める。着弾時に炸裂する。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/fire_charge.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/heavy_bullet_unidentified.png",
    spawn_requires_flag = "mocreeps_card_unlocked_fire_lukki_spell",
    type 		= ACTION_TYPE_MODIFIER,
    spawn_level                       = "1,2,4,5", -- ELECTRIC_CHARGE
    spawn_probability                 = "1,1,1,1", -- ELECTRIC_CHARGE
    price = 150,
    mana = 8,
    --max_uses = 8,
    custom_xml_file = "data/entities/misc/custom_cards/torch.xml",
    action 		= function()
        c.game_effect_entities = c.game_effect_entities .. "data/entities/misc/effect_apply_on_fire.xml,"
        c.damage_fire_add = c.damage_fire_add + 0.1
        c.extra_entities = c.extra_entities .. "data/entities/misc/burn.xml,"
        draw_actions( 1, true )
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_PORTAL_LUKKI_RED_PORTAL",
    name 		= "赤いポータルの召喚",
    description = "赤いポータルを召喚する。右クリックで目的地を指定できる。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/portal_red_portal.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
    spawn_requires_flag = "mocreeps_card_unlocked_fire_lukki_spell",
    spawn_manual_unlock = true,
    never_unlimited		= false,
    type 		= ACTION_TYPE_OTHER,
    recursive	= true,
    ai_never_uses = true,
    spawn_level                       = "10", -- MANA_REDUCE
    spawn_probability                 = "0", -- MANA_REDUCE
    price = 4300,
    mana = 300,
    --max_uses    = 1,
    custom_xml_file   = "mods/mo_creeps/files/entities/misc/custom_cards/portal_red_marker.xml",
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/markerportals/portal_red_portal.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_PORTAL_LUKKI_BLUE_PORTAL",
    name 		= "青いポータルの召喚",
    description = "青いポータルを召喚する。右クリックで目的地を指定できる。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/portal_blue_portal.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
    spawn_requires_flag = "mocreeps_card_unlocked_fire_lukki_spell",
    spawn_manual_unlock = true,
    never_unlimited		= false,
    type 		= ACTION_TYPE_OTHER,
    recursive	= true,
    ai_never_uses = true,
    spawn_level                       = "10", -- MANA_REDUCE
    spawn_probability                 = "0", -- MANA_REDUCE
    price = 4300,
    mana = 300,
    --max_uses    = 1,
    custom_xml_file   = "mods/mo_creeps/files/entities/misc/custom_cards/portal_blue_marker.xml",
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/markerportals/portal_blue_portal.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_PORTAL_LUKKI_GREEN_PORTAL",
    name 		= "緑色のポータルの召喚",
    description = "緑色のポータルを召喚する。右クリックで目的地を指定できる。",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/portal_green_portal.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
    spawn_requires_flag = "mocreeps_card_unlocked_fire_lukki_spell",
    spawn_manual_unlock = true,
    never_unlimited		= false,
    type 		= ACTION_TYPE_OTHER,
    recursive	= true,
    ai_never_uses = true,
    spawn_level                       = "10", -- MANA_REDUCE
    spawn_probability                 = "0", -- MANA_REDUCE
    price = 4300,
    mana = 300,
    --max_uses    = 1,
    custom_xml_file   = "mods/mo_creeps/files/entities/misc/custom_cards/portal_green_marker.xml",
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/markerportals/portal_green_portal.xml")
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_KNOWLEDGE_OF_KINGS",
    name 		= "王者たちの智識",
    description = "取り返しのつかないことが起きる予感がする",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/knowledge_of_kings.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/spread_reduce_unidentified.png",
    spawn_requires_flag = "mocreeps_card_unlocked_secret_knowledge_of_kings_spell",
    spawn_manual_unlock = true,
    never_unlimited		= true,
    type 		= ACTION_TYPE_OTHER,
    recursive	= true,
    ai_never_uses = true,
    spawn_level                       = "10", -- MANA_REDUCE
    spawn_probability                 = "0.0001", -- MANA_REDUCE
    price = 2000,
    mana = 600,
    max_uses    = 1,
    hide_from_conjurer  = true,
    action 		= function()
        local players = EntityGetWithTag( "player_unit" )
        for i,v in ipairs( players ) do
            local x,y = EntityGetTransform( v )
            local eid = EntityLoad("mods/mo_creeps/files/entities/projectiles/deck/knowledge_of_kings_proj_check.xml", x, y)
        end
        c.fire_rate_wait = c.fire_rate_wait + 100
        current_reload_time = current_reload_time + 100
    end,
})