dofile_once("data/scripts/lib/utilities.lua")

function death(damage_type_bit_field, damage_message, entity_thats_responsible, drop_items)
    if GameHasFlagRun( "mocreeps_blob_boss_slain" ) ~= true then
        -- kill self
        local entity_id = GetUpdatedEntityID()
        local pos_x, pos_y = EntityGetTransform(entity_id)
        local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_blob_boss" )
        local blobs_remaining = EntityGetInRadiusWithTag(pos_x, pos_y, 512, "mocreep_blob_boss")
        SetRandomSeed( GameGetFrameNum(), GameGetFrameNum() - 523 )

        table.remove(blobs_remaining, entity_id)

        if #blobs_remaining == 1 and blobs_remaining[1] == entity_id then
            --GamePrint("All Blob are Dead")
            if flag_status then
                local opts = { "MOCREEPS_MASS_STATUS_DRUNK", "MOCREEPS_MASS_STATUS_WET", "MOCREEPS_MASS_STATUS_FIRE", "MOCREEPS_MASS_STATUS_URINE", "MOCREEPS_MASS_STATUS_POLYMORPH", "MOCREEPS_SPLIT_SPELL" }
                local rnd = Random( 1, #opts )
                --I don't know what reward to put here????
                EntityLoad( "data/entities/items/wand_unshuffle_06.xml", pos_x, pos_y - 16 )
                EntityLoad( "data/entities/items/pickup/heart.xml", pos_x, pos_y )
                EntityLoad("data/entities/particles/image_emitters/magical_symbol_hobo_money.xml", pos_x, pos_y)
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", pos_x, pos_y)

                for i=1,3 do
                    rnd = Random( 1, #opts )
                    CreateItemActionEntity( opts[rnd], pos_x - 8 * 4 + (i-1) * 16, pos_y )
                    table.remove( opts, rnd )
                end

            else
                local opts = { "MOCREEPS_MASS_STATUS_DRUNK", "MOCREEPS_MASS_STATUS_WET", "MOCREEPS_MASS_STATUS_FIRE", "MOCREEPS_MASS_STATUS_URINE", "MOCREEPS_MASS_STATUS_POLYMORPH" }
                local rnd = Random( 1, #opts )
                EntityLoad( "data/entities/items/wand_unshuffle_06.xml", pos_x, pos_y - 16 )
                CreateItemActionEntity( "MOCREEPS_SPLIT_SPELL", pos_x + 16, pos_y ) --I've calmed down now and don't need profanities here.. but this spell was still a headache to make.
                EntityLoad( "data/entities/items/pickup/heart.xml", pos_x - 8, pos_y )
                EntityLoad("data/entities/particles/image_emitters/magical_symbol_hobo_money.xml", pos_x, pos_y)
                GamePlaySound( "data/audio/Desktop/projectiles.snd", "player_projectiles/crumbling_earth/create", pos_x, pos_y)
                EntityLoad( "data/entities/items/pickup/heart_fullhp.xml",  pos_x + 8, pos_y )

                for i=1,3 do
                    rnd = Random( 1, #opts )
                    CreateItemActionEntity( opts[rnd], pos_x - 8 * 4 + (i-1) * 16, pos_y )
                    table.remove( opts, rnd )
                end
            end

            if ModIsEnabled("raksa") == false then
                AddFlagPersistent( "mocreeps_card_unlocked_blob_boss" )
                AddFlagPersistent( "mocreeps_card_unlocked_blob_boss_spell" )
            end
        end
        GameAddFlagRun( "mocreeps_blob_boss_slain" )
    end
end

