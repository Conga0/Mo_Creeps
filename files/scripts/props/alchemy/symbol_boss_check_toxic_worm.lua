dofile_once("data/scripts/lib/utilities.lua")


if HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" ) then
	EntityKill(GetUpdatedEntityID())
end
