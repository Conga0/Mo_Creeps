dofile_once("data/scripts/lib/utilities.lua")

local entity_id    = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local projectiles = EntityGetInRadiusWithTag( x, y, 36, "projectile" )

SetRandomSeed( x, y )
local rnd = Random( 1, #projectiles )

local projectile_id = projectiles[rnd]
local projectile = ""
local damageCount = "0.5"

local storages = EntityGetComponent( projectile_id, "VariableStorageComponent" )

--Gets projectile filepath to return it
if ( storages ~= nil ) then
	for i,comp in ipairs( storages ) do
		local name = ComponentGetValue2( comp, "name" )
		if ( name == "projectile_file" ) then
			projectile = ComponentGetValue2( comp, "value_string" )
			--GamePrint("projectile string memorised is " .. tostring(projectile))
			break
		end
	end
end

--Gets projectile damage, if you dmg boost it, you'll feel that same damage returned to you
local DMGstorages = EntityGetComponent( projectile_id, "ProjectileComponent" )

if ( DMGstorages ~= nil ) then
	for i,comp in ipairs( DMGstorages ) do
		damageCount = (ComponentGetValue2( comp, "damage" ) * 3) -- triples projectile damage before returning
	end
end

if ( string.len( projectile ) > 0 ) then
	storages = EntityGetComponent( entity_id, "VariableStorageComponent" )
	
	if ( storages ~= nil ) then
		for i,comp in ipairs( storages ) do
			local name = ComponentGetValue2( comp, "name" )
			if ( name == "proj_file_mocreep" ) then
				--GamePrint("Found Variable Component")
				ComponentSetValue2( comp, "value_string", projectile )
				ComponentSetValue2( comp, "value_float", damageCount )
			end
		end
	end
end


