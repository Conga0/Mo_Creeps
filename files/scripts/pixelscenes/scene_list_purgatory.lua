dofile("data/scripts/lib/utilities.lua")

--Toxic Worm Nest
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="3706" pos_y="1343" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/toxic_worm_nest/toxic_worm_nest.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/toxic_worm_nest/toxic_worm_nest_background.png"
    colors_filename="mods/mo_creeps/files/pixel_scenes/toxic_worm_nest/toxic_worm_nest_visual.png"
  ></PixelScene>
]]))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Wand Tinkering Crystal guaranteed spawn
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="10868" pos_y="-150" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/pyramid_wand_crystal/pyramid_wand_crystal.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/pyramid_wand_crystal/pyramid_wand_crystal_background.png"
    colors_filename="mods/mo_creeps/files/pixel_scenes/pyramid_wand_crystal/pyramid_wand_crystal_visual.png"
  ></PixelScene>
]]))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Abandoned Orchestra spawn auditorium
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="15110" pos_y="10614" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_background.png"
    colors_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_visual.png"
  ></PixelScene>
]]))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Hisii Beggar Hint
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="16059" pos_y="-1637" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/hisii_beggar/hisii_beggar.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/hisii_beggar/hisii_beggar_background.png"
    colors_filename=""
  ></PixelScene>
]]))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--Wand Cave Secret
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="12063" pos_y="-4376" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/wand_cave/wand_cave.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/wand_cave/wand_cave_background.png"
    colors_filename=""
  ></PixelScene>
]]))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

--End the chaos here please




--Just Kidding
--Statue Room Gold banner, if you 100% the trophy room

local mocreep_angel_dead = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" )
local mocreep_worm_dead = HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" )
local mocreep_music_dead = HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" )
local mocreep_divine_created = HasFlagPersistent( "mocreeps_card_unlocked_divine_liquid" )
local mocreep_donated_beggar = HasFlagPersistent( "mocreeps_card_unlocked_donated_beggar" )
local mocreep_enrage_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_rage_aura" )
local mocreep_cat_secret_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_cat_secret" )

if mocreep_angel_dead and mocreep_worm_dead and mocreep_music_dead and mocreep_divine_created and mocreep_donated_beggar and mocreep_enrage_unlocked and mocreep_cat_secret_unlocked then

  local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
  local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
  local xml = nxml.parse(content)
  xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="4555" pos_y="727" skip_biome_checks="1" skip_edge_textures="0"
      material_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room.png"
      background_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room_background_goldbanner.png"
      colors_filename=""
    ></PixelScene>
  ]]))
  ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
  ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

else

  --Statue Room, shows which bosses you've killed
  local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
  local content = ModTextFileGetContent("mods/purgatory/files/biome/_pixel_scenes.xml")
  local xml = nxml.parse(content)
  xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="4555" pos_y="727" skip_biome_checks="1" skip_edge_textures="0"
      material_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room.png"
      background_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room_background.png"
      colors_filename=""
    ></PixelScene>
  ]]))
  ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes.xml", tostring(xml))
  ModTextFileSetContent("mods/purgatory/files/biome/_pixel_scenes_newgame_plus.xml", tostring(xml))

end