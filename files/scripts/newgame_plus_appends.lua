





local previousInit = do_newgame_plus
function do_newgame_plus()
	previousInit( x ,y ,w ,h)
    GameRemoveFlagRun( "mocreeps_blob_boss_slain" )
    GameRemoveFlagRun("mocreeps_fire_lukki_boss_summoned")
end