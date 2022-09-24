dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )

SetRandomSeed( GameGetFrameNum(), pos_x + pos_y + entity_id )


 if (Random( 1, 20) == 20) then
    
    local meowNum = Random( 1, 100)
    if (meowNum >= 82) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_sora_01.xml", pos_x, pos_y )
    elseif (meowNum >= 64) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_sora_02.xml", pos_x, pos_y )
    elseif (meowNum >= 46) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_sora_03.xml", pos_x, pos_y )
    elseif (meowNum >= 28) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_sora_04.xml", pos_x, pos_y )
    elseif (meowNum >= 10) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_purr_01.xml", pos_x, pos_y )
    elseif (meowNum >= 6) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_01.xml", pos_x, pos_y )
    elseif (meowNum >= 3) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_02.xml", pos_x, pos_y )
    else
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_03.xml", pos_x, pos_y )
    end
 end