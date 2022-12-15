dofile_once("data/scripts/lib/utilities.lua")
local EZWand = dofile_once("mods/mo_creeps/lib/EZWand/EZWand.lua")
local entity_id = GetUpdatedEntityID()
local root = EntityGetRootEntity(entity_id)
local wand = EZWand(EntityGetParent(entity_id))
local x, y = EntityGetTransform(entity_id)
local controlscomp = EntityGetFirstComponent(root, "ControlsComponent")
local cooldown_frames = 45
local cooldown_frame
local variablecomp = EntityGetFirstComponentIncludingDisabled( entity_id, "VariableStorageComponent" )
cooldown_frame = ComponentGetValue2( variablecomp, "value_int" )
local aim_x, aim_y = ComponentGetValue2(EntityGetFirstComponentIncludingDisabled(root, "ControlsComponent"), "mAimingVectorNormalized")
local manacost = 20

if GameGetFrameNum() >= cooldown_frame then
    if ComponentGetValue2(controlscomp, "mButtonDownRightClick") then
        local mana = wand.mana
        if (mana > manacost) then

            GameShootProjectile(root, x+aim_x*12, y+aim_y*12, x+aim_x*20, y+aim_y*20, EntityLoad("data/entities/projectiles/deck/teleport_projectile_short.xml", x, y))
            wand.mana = mana - manacost
            ComponentSetValue2( variablecomp, "value_int", GameGetFrameNum() + cooldown_frames )
        end
    end
end
