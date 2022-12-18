dofile_once("data/scripts/lib/utilities.lua")

--Spawns the Message of the day if enabled
local year, month, day, hour = GameGetDateAndTimeLocal()

local filepath = "data/biome/_pixel_scenes.xml"

if ModIsEnabled("purgatory") then
    filepath = "mods/purgatory/files/biome/_pixel_scenes.xml"
elseif ModIsEnabled("noitavania") then
    filepath = "mods/noitavania/mods/noitavania/data/biome/_pixel_scenes.xml"
end

if ModIsEnabled("raksa") == false then

    if month == 1 and day == 1 then                                                    --New Year
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_new_year.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( month == 7 ) and (( day >= 20 ) and ( day <= 22 )) then                      --Birthday
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_birthday.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( month == 10 ) and ( day >= 1 ) and (hour % 2 == 0) then                       --Halloween
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_halloween.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( month == 12 ) and ( day >= 22 ) and (hour % 2 == 0) then                  --Smissmass
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_smissmass.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 1 )  then                                                         --Normal Events
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_001.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 2 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_002.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 3 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_003.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 4 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_004.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 5 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_005.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 6 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_006.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 7 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_007.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 8 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_008.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 9 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_009.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 10 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_010.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 11 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_011.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 12 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_012.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 13 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_013.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 14 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_014.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 15 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_015.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 16 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_016.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 17 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_017.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 18 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_018.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 19 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_019.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 20 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_020.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 21 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_021.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 22 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_022.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 23 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_023.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 24 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_024.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 25 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_025.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 26 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_026.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 27 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_027.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 28 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_028.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 29 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_029.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 30 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_030.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    elseif ( day == 31 )  then
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd_031.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    else
        local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
        local content = ModTextFileGetContent(filepath)
        local xml = nxml.parse(content)
        xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
            <PixelScene pos_x="505" pos_y="-105" just_load_an_entity="mods/mo_creeps/files/entities/props/sign_motd/sign_motd.xml" />
        ]]))
        ModTextFileSetContent(filepath, tostring(xml))
    end

end