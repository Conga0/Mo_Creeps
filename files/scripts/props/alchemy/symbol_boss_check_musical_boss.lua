dofile_once("data/scripts/lib/utilities.lua")


if HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" ) then
	EntityKill(GetUpdatedEntityID())
end
