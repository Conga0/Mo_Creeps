dofile_once("data/scripts/lib/utilities.lua")

if HasFlagPersistent( "mocreeps_card_unlocked_secret_knowledge_of_kings" ) or GameHasFlagRun( "mocreeps_card_unlocked_secret_knowledge_of_kings_complete_2" ) then
    GamePrint("$secretmessage_mocreep_kingly_alreadydone")
elseif GameHasFlagRun( "mocreeps_card_unlocked_secret_knowledge_of_kings_complete" ) == false then
    GamePrint("$secretmessage_mocreep_kingly_cheater")
else
    local entity_id = GetUpdatedEntityID()
    local pos_x,pos_y = EntityGetTransform(entity_id)

    -- flag to make sure it doesn't appear in future runs
    AddFlagPersistent( "mocreeps_card_unlocked_secret_knowledge_of_kings" )
    AddFlagPersistent( "mocreeps_card_unlocked_secret_knowledge_of_kings_spell" )
    GameAddFlagRun( "mocreeps_card_unlocked_secret_knowledge_of_kings_complete" )
    GameAddFlagRun( "mocreeps_card_unlocked_secret_knowledge_of_kings_complete_2" )
    GameTriggerMusicFadeOutAndDequeueAll( 3.0 )
    GameTriggerMusicEvent( "music/oneshot/heaven_03", true, pos_x, pos_y )


    --Gives Cape after casting "The Knowledge of Kings" spell
    local players = EntityGetWithTag("player_unit")
    for i,player in ipairs(players) do
        EntityAddComponent2(
            player,
            "LuaComponent",
            {
                script_source_file="data/mocreeps_gfx/player_cape_colour_append.lua",
                execute_every_n_frame=1,
                execute_times=1,
                remove_after_executed=true
            }
        )
    end

	local message_title = "$secretmessage_mocreep_capeget_name"
	local message_desc = "$secretmessage_mocreep_capeget_desc"

    local x, y = EntityGetTransform(EntityGetWithTag("player_unit")[1])
	EntityLoad("mods/mo_creeps/files/entities/the_end/credits_horscht_wait.xml", x, y)
	
	GamePrintImportant( message_title, message_desc )

end
