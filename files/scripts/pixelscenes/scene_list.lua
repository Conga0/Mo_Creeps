dofile("data/scripts/lib/utilities.lua")

--Toxic Worm Nest
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="2027" pos_y="2100" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/toxic_worm_nest/toxic_worm_nest.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/toxic_worm_nest/toxic_worm_nest_background.png"
    colors_filename="mods/mo_creeps/files/pixel_scenes/toxic_worm_nest/toxic_worm_nest_visual.png"
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("data/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Wand Tinkering Crystal guaranteed spawn
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="10868" pos_y="-150" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/pyramid_wand_crystal/pyramid_wand_crystal.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/pyramid_wand_crystal/pyramid_wand_crystal_background.png"
    colors_filename="mods/mo_creeps/files/pixel_scenes/pyramid_wand_crystal/pyramid_wand_crystal_visual.png"
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("data/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Abandoned Orchestra spawn auditorium
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="11550" pos_y="6748" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_background.png"
    colors_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_visual.png"
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("data/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Statue Room, shows which bosses you've killed
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="4032" pos_y="1988" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room_background.png"
    colors_filename=""
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("data/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Hisii Beggar Hint
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="16059" pos_y="-1637" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/hisii_beggar/hisii_beggar.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/hisii_beggar/hisii_beggar_background.png"
    colors_filename=""
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("data/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Wand Cave Secret
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="12063" pos_y="-4376" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/wand_cave/wand_cave.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/wand_cave/wand_cave_background.png"
    colors_filename=""
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("data/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--End the chaos here please