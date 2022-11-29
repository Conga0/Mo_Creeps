dofile_once("data/scripts/lib/utilities.lua")


if HasFlagPersistent( "mocreeps_card_unlocked_fire_lukki" ) and HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" ) and HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" ) and HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" ) and HasFlagPersistent( "mocreeps_card_unlocked_blob_boss" ) then
	EntitySetComponentsWithTagEnabled( GetUpdatedEntityID(), "disabled_by_liquid", true )
	EntitySetComponentsWithTagEnabled( GetUpdatedEntityID(), "invincible", false )
else
	EntitySetComponentsWithTagEnabled( GetUpdatedEntityID(), "disabled_by_liquid", false )
end





