dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local pos_x, pos_y = EntityGetTransform( entity_id )

SetRandomSeed( GameGetFrameNum(), pos_x + pos_y + entity_id )


 if (Random( 1, 20) == 20) then
    
    local meowNum = Random( 1, 100)
    if (meowNum >= 80) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_04.xml", pos_x, pos_y )
    elseif (meowNum >= 60) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_05.xml", pos_x, pos_y )
    elseif (meowNum >= 40) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_06.xml", pos_x, pos_y )
    elseif (meowNum >= 20) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_purr_01.xml", pos_x, pos_y )
    elseif (meowNum >= 13) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_01.xml", pos_x, pos_y )
    elseif (meowNum >= 7) then
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_02.xml", pos_x, pos_y )
    else
        EntityLoad( "mods/mo_creeps/files/entities/special/cat_meow_03.xml", pos_x, pos_y )
    end
 end