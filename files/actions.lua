--Spell is non-functional, intention is after every bounce, the projectile will redirect itself towards an enemy but I am failing to create this behaviour.
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
    name 		= "Giga Disc Projectile Thrower",
    description = "Makes a projectile cast Giga Disc Projectiles in random directions",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_disc_big_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_disc_big_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Cursed Orb Thrower",
    description = "Makes a projectile cast Cursed Orbs in random directions",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_cursed_orb_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_cursed_orb_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Dynamite Thrower",
    description = "Makes a projectile cast Dynamite in random directions",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_dynamite_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_dynamite_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Ice Ball Thrower",
    description = "Makes a projectile cast Ice Balls in random directions",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_ice_ball_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_ice_ball_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Nuke Thrower",
    description = "Are you sure?                               ",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_nuke_ray.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/thrower_nuke_ray.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Personal Giga Disc Projectile Thrower",
    description = "Makes a projectile tun the creatures it hits into living Sawblade throwers",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_disc_big_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_disc_big_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Personal Cursed Orb Thrower",
    description = "Makes a projectile tun the creatures it hits into living Cursed Orb throwers",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_cursed_orb_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_cursed_orb_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Personal Ice Ball Thrower",
    description = "Makes a projectile tun the creatures it hits into living Ice Ball throwers",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_ice_ball_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_ice_ball_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Personal Dynamite Thrower",
    description = "Makes a projectile tun the creatures it hits into living Dynamite throwers",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_dynamite_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_dynamite_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Personal Nuke Thrower",
    description = "Makes a projectile tun the creatures it hits into living... Nuke throwers?!?!!",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/thrower_nuke_ray_enemy.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/electric_charge_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/misc/hitfx_nuke_ray_enemy.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
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
    name 		= "Holy Orb Barrage",
    description = "Casts a barrage of 7 holy orbs. Also has some magical properties...",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/orb_holy_shotgun.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/orb_holy_shotgun.xml", 7},
    spawn_requires_flag = "mocreeps_card_unlocked_divinebeing",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "2,3,4,5,6", -- BUCKSHOT  Originally this was 1-5 but was changed because the spell feels too good to get early on, might revert, unsure
    spawn_probability                 = "0.7,0.9,1,0.8,0.6", -- BUCKSHOT
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

table.insert(actions,   --This spell is kinda weird
{
    id          = "MOCREEPS_BOMB_GIGA",
    name 		= "Giga Bomb",
    description = "Explosion!!",
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
    name 		= "Mass Materia Conversion",
    description = "Cave quid volunt", --Be Careful what you wish for.. Convert a large amount of materials in a radius to various counterparts
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/mass_materia_conversion.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/explosive_projectile_unidentified.png",
    related_extra_entities = { "data/entities/misc/mass_materia_conversion.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm",
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
    name 		= "Fungal Shift",
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

table.insert(actions,
{
    id          = "MOCREEPS_BUNGAL_SHIFT_SPAM",
    name 		= "Hyper Fungal Shift",
    description = "Impatient....                      ", --Triggers a fungal shift, no cooldown.
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/bungal_shift_spam.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/explosive_projectile_unidentified.png",
    related_extra_entities = { "data/entities/misc/forced_bungal_shift_spam.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm",
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "10", -- Conversion Spell
    spawn_probability                 = "0.01", -- Conversion Spell
    price = 250,
    mana = 200,
    max_uses = 3,
    action 		= function()
        add_projectile("data/entities/misc/forced_bungal_shift_spam.xml")
        c.fire_rate_wait = c.fire_rate_wait + 60
        current_reload_time = current_reload_time + 30
    end,
})

--[[ table.insert(actions,
{
    id          = "MOCREEPS_TEST_HOLY_BEAM",
    name 		= "TEST Holy Beam",
    description = "Creates a holy beam after 5 seconds.",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/orb_holy_shotgun.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/dynamite_unidentified.png",
    related_projectiles	= {"data/entities/projectiles/beam_holy_warning.xml"},
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "0", -- BUCKSHOT  Originally this was 1-5 but was changed because the spell feels too good to get early on, might revert, unsure
    spawn_probability                 = "0.001", -- BUCKSHOT
    price = 220,
    mana = 50,
    action 		= function()
        add_projectile("data/entities/projectiles/beam_holy_warning.xml")
        c.fire_rate_wait = c.fire_rate_wait + 12
        c.spread_degrees = c.spread_degrees + 30.0
    end,
}) ]]--

table.insert(actions,
{
    id          = "MOCREEPS_AQUA_MINE",
    name 		= "Aqua Mine",
    description = "Creates an explosive Aquamine with subtle homing properties.",
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
    name 		= "Musical Strike",
    description = "Fires a powerful musical attack, careful not to loose your creativity",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/musical_strike.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/musical_delayed_attack_end.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_musical_boss",
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
    name 		= "Musical Strike with trigger",
    description = "Fires a powerful musical attack, casts another spell upon collision",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/musical_strike_trigger.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/musical_delayed_attack_end.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_musical_boss",
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
    name 		= "Reverberation",
    description = "Creates a reverberation of sound in the air, slicing anything nearby to pieces.",
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/reverberation.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/bomb_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/field_reverberation.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_musical_boss",
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
    name 		= "Bite",
    description = "...Magic?",
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
    id          = "MOCREEPS_SUMMON_WORM_BIG",
    name 		= "Summon Jättimato",
    description = "Dangerous....                      ", --Triggers a fungal shift, no cooldown.
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/summon_worm_big.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/explosive_projectile_unidentified.png",
    related_extra_entities = { "mods/mo_creeps/files/entities/projectiles/deck/summon_worm_big.xml" },
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm",
    never_unlimited		= true,
    type 		= ACTION_TYPE_STATIC_PROJECTILE,
    spawn_level                       = "10", -- Conversion Spell
    spawn_probability                 = "0.01", -- Conversion Spell
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
    name 		= "Bloody Bite",
    description = "Magic...............................?       ", --Converted Rat Bite, Big Crit chance.
    sprite 		= "mods/mo_creeps/files/ui_gfx/gun_actions/rat_bite_crit.png",
    sprite_unidentified = "data/ui_gfx/gun_actions/chainsaw_unidentified.png",
    related_projectiles	= {"mods/mo_creeps/files/entities/projectiles/deck/rat_bite_crit.xml"},
    spawn_requires_flag = "mocreeps_card_unlocked_boss_toxic_worm",
    type 		= ACTION_TYPE_PROJECTILE,
    spawn_level                       = "10", -- Conversion Spell
    spawn_probability                 = "0.01", -- Conversion Spell
    price = 250,
    mana = 100,
    --max_uses = 1000,
    action 		= function()
        add_projectile("mods/mo_creeps/files/entities/projectiles/deck/rat_bite_crit.xml")
        c.damage_critical_chance = c.damage_critical_chance + 50
    end,
})