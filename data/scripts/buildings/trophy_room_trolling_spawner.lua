dofile_once("data/scripts/lib/utilities.lua")

function collision_trigger()
	local entity_id    = GetUpdatedEntityID()
	local pos_x, pos_y = EntityGetTransform( entity_id )
	local eid = EntityLoad( "data/entities/animals/wizard_copeseethmald.xml", pos_x, pos_y )
	EntityLoad( "mods/mo_creeps/files/entities/misc/remove_ground_small.xml", pos_x, pos_y )
	
    local hpcomp = EntityGetFirstComponent( eid, "DamageModelComponent" )
    if( hpcomp ~= nil ) then
        ComponentSetValue( hpcomp, "max_hp", 30 )
        ComponentSetValue( hpcomp, "hp", 30 )
    end
	
	EntityKill( entity_id )
end