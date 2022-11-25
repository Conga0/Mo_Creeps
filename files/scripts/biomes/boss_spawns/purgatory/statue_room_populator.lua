
--Normal Mode Unlocks
local previousInit = spawn_music_trigger
function spawn_music_trigger( x, y )
	previousInit( x ,y ,w ,h)

    --Normal Mode Unlocks
    local mocreep_angel_dead = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" )
    local mocreep_worm_dead = HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" )
    local mocreep_music_dead = HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" )
    local mocreep_blob_dead = HasFlagPersistent( "mocreeps_card_unlocked_blob_boss" )
    local mocreep_divine_created = HasFlagPersistent( "mocreeps_card_unlocked_divine_liquid" )
    local mocreep_donated_beggar = HasFlagPersistent( "mocreeps_card_unlocked_donated_beggar" )
    local mocreep_enrage_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_rage_aura" )
    local mocreep_cat_secret_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_cat_secret" )

    --Nightmare/Purgatory Unlocks
    local mocreep_angel_dead_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing_goldmode" )
    local mocreep_worm_dead_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm_goldmode" )
    local mocreep_music_dead_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_musical_boss_goldmode" )
    local mocreep_blob_dead_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_blob_boss_goldmode" )
    local mocreep_divine_created_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_divine_liquid_goldmode" )
    local mocreep_donated_beggar_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_donated_beggar_goldmode" )
    local mocreep_enrage_unlocked_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_rage_aura_goldmode" )
    local mocreep_cat_secret_unlocked_goldmode = HasFlagPersistent( "mocreeps_card_unlocked_cat_secret_goldmode" )

    --For reference, the pixel scene spawns at    X 4032    Y 1988
    --Purgatory pixel scene spawns at           X 4555     Y 787
    --Difference                               X 523      Y -1202


    --Boss Kills
    --Killing the Divine Being
    if mocreep_angel_dead_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_divine_being.xml", 4675, 853 )
    elseif mocreep_angel_dead then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_divine_being.xml", 4675, 853 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4675, 853 )
    end

    --Killing the Toxic Worm
    if mocreep_worm_dead_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_toxic_worm.xml", 4725, 853 )
    elseif mocreep_worm_dead then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_toxic_worm.xml", 4725, 853 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4725, 853 )
    end

    --Killing the Abandoned Orchestra
    if mocreep_music_dead_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_music_boss.xml", 4785, 853 )
    elseif mocreep_music_dead then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_music_boss.xml", 4785, 853 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4785, 853 )
    end

    --Killing the Overgrown Blob
    if mocreep_blob_dead_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_blob_titan.xml", 4835, 853 )
    elseif mocreep_blob_dead then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_blob_titan.xml", 4835, 853 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4835, 853 )
    end




    --Harder Challenge Unlocks
    --Creating Divine Liquid
    if mocreep_divine_created_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_divine_liquid.xml", 4701, 787 )
    elseif mocreep_divine_created then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_divine_liquid.xml", 4701, 787 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4701, 787 )
    end

    --Feeding the Rat Wand to a Cat
    --Not necessarily a 'harder challenge', especially compared to the Divine Liquid challenge, but it's an upperfloor filler for now.
    if mocreep_cat_secret_unlocked_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_cat_secret.xml", 4811, 787 )
    elseif mocreep_cat_secret_unlocked then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_cat_secret.xml", 4811, 787 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4811, 787 )
    end



    --Lower Challenge Unlocks
    --Donating to a Homeless Hisii
    if mocreep_donated_beggar_goldmode then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_generous.xml", 4703, 888 )
    elseif mocreep_donated_beggar then
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_generous.xml", 4703, 888 )
    else
        entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4703, 888 )
    end

    --Luring a Master of Trolling to his statue outline
    --Gold statue base if already done in normal mode? uncertain
    if ModIsEnabled("nightmare") or ModIsEnabled("purgatory") then
        if mocreep_enrage_unlocked_goldmode then
            entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_master_of_trolling.xml", 4811, 888 )
        else
            if mocreep_enrage_unlocked then
                entity = EntityLoad( "mods/mo_creeps/files/entities/props/goldmode/statue_empty.xml", 4811, 888 )
                entity = EntityLoad( "data/entities/buildings/trophy_room_trolling_check.xml", 4831, 893 )
            else
                entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4811, 888 )
                entity = EntityLoad( "data/entities/buildings/trophy_room_trolling_check.xml", 4831, 893 )
            end
        end
    else
        if mocreep_enrage_unlocked then
            entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_master_of_trolling.xml", 4811, 888 )
        else
            entity = EntityLoad( "mods/mo_creeps/files/entities/props/statue_empty.xml", 4811, 888 )
            entity = EntityLoad( "data/entities/buildings/trophy_room_trolling_check.xml", 4831, 893 )
        end
    end



    EntityLoad( "data/entities/buildings/statue_room_fairy_populator.xml", 4779, 839 )

    EntityLoad( "data/entities/buildings/rat_unlock.xml", 4518, 540 )
    EntityLoad( "data/entities/buildings/rat_create.xml", 4518, 540 )
    EntityLoad( "mods/mo_creeps/files/entities/misc/remove_ground_tiny.xml", 4518, 540 )

    EntityLoad( "data/entities/buildings/trophy_room_trolling_spawner.xml", 3735, 560 )


    EntityLoad( "data/entities/buildings/statue_room_noitavania_deleter.xml", 4779, 839 )
    EntityLoad( "data/entities/buildings/statue_room_noitavania_deleter.xml", 4256, 999 )
end