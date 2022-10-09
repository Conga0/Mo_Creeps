
--Normal Mode Unlocks
local mocreep_angel_dead = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" )
local mocreep_worm_dead = HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" )
local mocreep_music_dead = HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" )
local mocreep_divine_created = HasFlagPersistent( "mocreeps_card_unlocked_divine_liquid" )
local mocreep_donated_beggar = HasFlagPersistent( "mocreeps_card_unlocked_donated_beggar" )
local mocreep_enrage_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_rage_aura" )
local mocreep_cat_secret_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_cat_secret" )

--Nightmare/Purgatory Unlocks
local mocreep_angel_dead_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing_goldmode" )
local mocreep_worm_dead_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm_goldmode" )
local mocreep_music_dead_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_musical_boss_goldmode" )
local mocreep_divine_created_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_divine_liquid_goldmode" )
local mocreep_donated_beggar_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_donated_beggar_goldmode" )
local mocreep_enrage_unlocked_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_rage_aura_goldmode" )
local mocreep_cat_secret_unlocked_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_cat_secret_goldmode" )

--For reference, the pixel scene spawns at    X 4032    Y 1988


--Boss Kills
--Killing the Divine Being
if mocreep_angel_dead_goldmode then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_divine_being.xml", 4152, 2115 )
elseif mocreep_angel_dead then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_divine_being.xml", 4152, 2115 )
else
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4152, 2115 )
end

--Killing the Toxic Worm
if mocreep_worm_dead_goldmode then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_toxic_worm.xml", 4202, 2115 )
elseif mocreep_worm_dead then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_toxic_worm.xml", 4202, 2115 )
else
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4202, 2115 )
end

--Killing the Abandoned Orchestra
if mocreep_music_dead_goldmode then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_music_boss.xml", 4262, 2115 )
elseif mocreep_music_dead then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_music_boss.xml", 4262, 2115 )
else
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4262, 2115 )
end

--Killing the Overgrown Blob



--Harder Challenge Unlocks
--Creating Divine Liquid
if mocreep_divine_created_goldmode then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_divine_liquid.xml", 4178, 2049 )
elseif mocreep_divine_created then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_divine_liquid.xml", 4178, 2049 )
else
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4178, 2049 )
end

--Feeding the Rat Wand to a Cat
--Not necessarily a 'harder challenge', especially compared to the Divine Liquid challenge, but it's an upperfloor filler for now.
if mocreep_cat_secret_unlocked_goldmode then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_cat_secret.xml", 4288, 2049 )
elseif mocreep_cat_secret_unlocked then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_cat_secret.xml", 4288, 2049 )
else
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4288, 2049 )
end



--Lower Challenge Unlocks
--Donating to a Homeless Hisii
if mocreep_donated_beggar_goldmode then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_generous.xml", 4178, 2150 )
elseif mocreep_donated_beggar then
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_generous.xml", 4178, 2150 )
else
    entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4178, 2150 )
end

--Luring a Master of Trolling to his statue outline
--Gold statue base if already done in normal mode? uncertain
if ModIsEnabled("nightmare") or ModIsEnabled("purgatory") then
    if mocreep_enrage_unlocked_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_master_of_trolling.xml", 4288, 2150 )
    else
        if mocreep_enrage_unlocked then
            entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_empty.xml", 4288, 2150 )
            entity = EntityLoad( "data/entities/buildings/trophy_room_trolling_check.xml", 4308, 2155 )
        else
            entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4288, 2150 )
            entity = EntityLoad( "data/entities/buildings/trophy_room_trolling_check.xml", 4308, 2155 )
        end
    end
else
    if mocreep_enrage_unlocked then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_master_of_trolling.xml", 4288, 2150 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4288, 2150 )
        entity = EntityLoad( "data/entities/buildings/trophy_room_trolling_check.xml", 4308, 2155 )
    end
end



entity = EntityLoad( "data/entities/buildings/statue_room_fairy_populator.xml", 4256, 2100 )

entity = EntityLoad( "data/entities/buildings/rat_unlock.xml", 4064, 2320 )
entity = EntityLoad( "data/entities/buildings/rat_create.xml", 4064, 2320 )

entity = EntityLoad( "data/entities/buildings/trophy_room_trolling_spawner.xml", 5318, 2037 )

GameAddFlagRun( "mocreep_initialised_pride_room" )