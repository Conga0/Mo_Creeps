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
    name 		= "Метатель гигантских дисков",
    description = "Снаряд испускает гигантские дисковые снаряды в случайном направлении",
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
    name 		= "Метатель проклятых сфер",
    description = "Снаряд испускает проклятые шары в случайном направлении",
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
    name 		= "Метатель динамита",
    description = "Снаряд испускает динамит в случайном направлении",
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
    name 		= "Метатель ледяных шариков",
    description = "Снаряд испускает ледяные шарики в случайном направлении",
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
    name 		= "Метатель ядерного оружия",
    description = "Вы уверены?                               ",
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
    name 		= "Личный метатель гигантских дисков",
    description = "Снаряд превращает существ, с которыми сталкивается, в метателей пил",
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
    name 		= "Личный метатель проклятых сфер",
    description = "Снаряд превращает существ, с которыми сталкивается, в метателей проклятых сфер",
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
    name 		= "Личный метатель ледяных шариков",
    description = "Снаряд превращает существ, с которыми сталкивается, в метателей ледяных шариков",
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
    name 		= "Личный метатель динамита",
    description = "Снаряд превращает существ, с которыми сталкивается, в метателей динамита",
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
    name 		= "Личный метатель ядерного оружия",
    description = "Снаряд превращает существ, с которыми сталкивается, в... метателей ядерного оружия?!?!!",
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
    name 		= "Шквал священных сфер",
    description = "Вызывает шквал из 7 святых шаров. Также обладает некоторыми магическими свойствами...",
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
    name 		= "Большая бомба",
    description = "Бум!!",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/bomb_giga.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/bomb_giga.xml"},
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "1,2,3,4,5,6,10", -- BOMB
    spawn_probability                 = "0.7,0.8,1,1,1,1,0.7", -- BOMB
    price = 300,
    mana = 50, 
    max_uses    = 3, 
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/bomb_giga.xml")
        c.fire_rate_wait = c.fire_rate_wait + 140
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_MASS_MATERIA_CONVERSION",
    name 		= "Массовое преобразование материалов",
    description = "Cave quid volunt", --Be Careful what you wish for.. Convert a large amount of materials in a radius to various counterparts
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
    name 		= "Грибковое смещение",
    description = "Cave quid volunt                 ", --Be Careful what you wish for.. Triggers a fungal shift, still obeys normal fungal cooldown
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
    name 		= "Водяная мина",
    description = "Создёет взрывоопасную водяную мину с тонкими свойствами самонаведения.",
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
    name 		= "Музыкальный удар",
    description = "Стреляет мощной музыкальной атакой, стараясь не потерять свой творческий потенциал",
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
    name 		= "Музыкальный удар с активацией",
    description = "Стреляет мощной музыкальной атакой, при столкновении вызывает другое заклинание",
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
    name 		= "Реверберация",
    description = "Создаёт отзвук в воздухе, разрывая на куски всё, что находится поблизости.",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/reverberation.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/field_reverberation.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_musical_boss_spell",
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "0,1,2,4,5,6", -- FREEZE_FIELD
    spawn_probability                 = "0.3,0.5,0.7,0.7,0.3,0.2", -- FREEZE_FIELD
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
    name 		= "Укус",
    description = "...Волшебство?",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/rat_bite.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/rat_bite.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_rat_bite",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "0,1,2", -- LUMINOUS_DRILL
    spawn_probability                 = "0.5,0.5,0.25", -- LUMINOUS_DRILL
    price = 150,
    mana = 10,
    --max_uses = 1000,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/rat_bite.xml")
        c.damage_critical_chance = c.damage_critical_chance + 10
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_BUNGAL_SHIFT_SPAM",
    name 		= "Супергрибковое смещение",
    description = "Безумие....                      ", --Triggers a fungal shift, no cooldown.
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
    name 		= "Призыв яттимато",
    description = "Опасно....                      ", --Triggers a fungal shift, no cooldown.
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
    name 		= "Кровавый укус",
    description = "Волшебство...............................?       ", --Converted Rat Bite, Big Crit chance.
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/rat_bite_crit.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/rat_bite_crit.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm_spell",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "10", -- Conversion spell
    spawn_probability                 = "0.01", -- Conversion spell
    price = 250,
    mana = 100,
    --max_uses = 1000,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/rat_bite_crit.xml")
        c.damage_critical_chance = c.damage_critical_chance + 50
    end,
})

table.insert(actions,
{
    id          = "MOCREEPS_SPELLS_TO_CATS",
    name 		= "Превращение в кошек",
    description = "Превращает каждый снаряд, находящийся в воздухе, в кошку. Милая идея.",
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
    name              = "Разделяющийся выстрел",
    description       = "50% шанс на удвоение при следующем заклинании.",
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
    name 		= "Массовое пьянство",
    description = "Проклятие пьянства действует на каждое существо в большом радиусе.",
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
    name 		= "Массовая влага",
    description = "Пропитывает волшебной влагой всех существ в большом радиусе.",
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
    name 		= "Массовый огонь",
    description = "Сжигает волшебным огнём всех существ в большом радиусе.",
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
    name 		= "Массовое Банкате",
    description = "Обливает всех существ в большом радиусе волшебным Банкате.",
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
    name 		= "Массовый полиморфизм",
    description = "Поражает всех существ в большом радиусе волшебным полиморфизмом.",
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