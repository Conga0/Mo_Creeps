dofile_once("data/scripts/lib/utilities.lua")


if HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" ) then
	EntityKill(GetUpdatedEntityID())
end
