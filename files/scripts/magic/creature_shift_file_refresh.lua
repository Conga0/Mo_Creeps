dofile("data/scripts/lib/utilities.lua")
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")

function DEBUG_TEST( entity, x, y, debug_no_limits )



    local target = (GlobalsGetValue("Mocreep_global_Cshift_1_targ1", "failed") )
    local target2 = (GlobalsGetValue("Mocreep_global_Cshift_1_targ2", "failed") )



    --Debugging shift, forces all Forsaken Eyes to be turned into Blind Gazers
    --target = "blindgazer"
    --target2 = "forsaken_eye"

    local content = ModTextFileGetContent("data/entities/animals/" .. target .. ".xml")
    local xml = nxml.parse(content)
    xml:add_child(nxml.parse([[
        <ParticleEmitterComponent
        emitted_material_name="fungal_shift_particle_fx"
        offset.x="0"
        offset.y="-0.5"
        x_pos_offset_min="-4"
        x_pos_offset_max="4"
        y_pos_offset_min="-12"
        y_pos_offset_max="4"
        x_vel_min="-5"
        x_vel_max="5"
        y_vel_min="-10"
        y_vel_max="-30"
        count_min="2"
        count_max="3"
        lifetime_min="0.4"
        lifetime_max="1.0"
        create_real_particles="0"
        emit_cosmetic_particles="1"
        emission_interval_min_frames="4"
        emission_interval_max_frames="12"
        gravity.y="-10"
        is_emitting="1" >
    </ParticleEmitterComponent>
    ]]))
    ModTextFileSetContent("data/entities/animals/" .. target2 .. ".xml", tostring(xml))

end
