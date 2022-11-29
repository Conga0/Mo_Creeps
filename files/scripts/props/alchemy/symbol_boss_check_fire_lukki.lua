dofile_once("data/scripts/lib/utilities.lua")


if HasFlagPersistent( "mocreeps_card_unlocked_fire_lukki" ) then
	EntityKill(GetUpdatedEntityID())
end
