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

--Abandoned Orchestra spawn auditorium
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
if ModIsEnabled("nightmare") then
  xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="7435" pos_y="1796" skip_biome_checks="1" skip_edge_textures="0"
      material_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly.png"
      background_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_background.png"
      colors_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_visual.png"
    ></PixelScene>
  ]]))
else
  xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="11550" pos_y="6748" skip_biome_checks="1" skip_edge_textures="0"
      material_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly.png"
      background_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_background.png"
      colors_filename="mods/mo_creeps/files/pixel_scenes/sandy_assembly/sandy_assembly_visual.png"
    ></PixelScene>
  ]]))
end
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))

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

--2nd Hisii Beggar Hint inside the south-west gold room
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="-14140" pos_y="16819" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/hisii_beggar/hisii_beggar.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/hisii_beggar/hisii_beggar_background.png"
    colors_filename=""
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))

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

--Blob Cave Arena
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="2520" pos_y="8777" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/blob_cavern/blob_cavern_1.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/blob_cavern/blob_cavern_1_bg.png"
    colors_filename=""
  ></PixelScene>
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="3358" pos_y="8777" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/blob_cavern/blob_cavern_2.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/blob_cavern/blob_cavern_2_bg.png"
    colors_filename=""
  ></PixelScene>
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))

--End the chaos here please




--Just Kidding
--Statue Room Gold banner, if you 100% the trophy room

local mocreep_angel_dead = HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" )
local mocreep_worm_dead = HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" )
local mocreep_music_dead = HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" )
local mocreep_blob_dead = HasFlagPersistent( "mocreeps_card_unlocked_blob_boss" )
local mocreep_divine_created = HasFlagPersistent( "mocreeps_card_unlocked_divine_liquid" )
local mocreep_donated_beggar = HasFlagPersistent( "mocreeps_card_unlocked_donated_beggar" )
local mocreep_enrage_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_rage_aura" )
local mocreep_cat_secret_unlocked = HasFlagPersistent( "mocreeps_card_unlocked_cat_secret" )

--1.1.0 unlocks
local mocreep_essence_fungus = HasFlagPersistent( "mocreeps_essence_fungus" )
local mocreep_essence_fungus_moon = HasFlagPersistent( "mocreep_moon_fungus_unlock" )
local mocreep_pandora_rain = HasFlagPersistent( "mocreep_misc_pandora_chest_rain" )
local mocreep_fire_lukki_dead = HasFlagPersistent( "mocreeps_card_unlocked_fire_lukki" )

if mocreep_angel_dead and mocreep_worm_dead and mocreep_music_dead and mocreep_blob_dead and mocreep_divine_created and mocreep_donated_beggar and mocreep_enrage_unlocked and mocreep_cat_secret_unlocked and mocreep_essence_fungus and mocreep_essence_fungus_moon and mocreep_pandora_rain and mocreep_fire_lukki_dead then

  local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
  local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
  local xml = nxml.parse(content)
  xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="4032" pos_y="1988" skip_biome_checks="1" skip_edge_textures="0"
      material_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room.png"
      background_filename="mods/mo_creeps/files/pixel_scenes/pride_statues/statue_room_background_goldbanner.png"
      colors_filename=""
    ></PixelScene>
  ]]))
  ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))

else

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

end

--Statue Spawner
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="4032" pos_y="1988" just_load_an_entity="mods/mo_creeps/files/scripts/biomes/boss_spawns/statue_room_populator_entity.xml" />
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))




-- 1.1.0 CONTENT BELOW ----------------------------------------------------------------------------------------------------------------------------------------------------




--Essence of Fungus
--256 + to x and y = center, where essence spawns
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="11788" pos_y="2860" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/essence_diamond/essenceroom_fungus.png"
    background_filename="data/biome_impl/essenceroom_background_with_diamond.png"
    colors_filename="data/biome_impl/essenceroom_visual.png"
  ></PixelScene>
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="12044" pos_y="3116" just_load_an_entity="mods/mo_creeps/files/entities/items/pickups/essence_fungus.xml" />
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))


--Fire Lukki Portal Room
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/biome/_pixel_scenes.xml")
local xml = nxml.parse(content)
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
  <PixelScene DEBUG_RELOAD_ME="0" clean_area_before="0" pos_x="-8739" pos_y="16381" skip_biome_checks="1" skip_edge_textures="0"
    material_filename="mods/mo_creeps/files/pixel_scenes/portal_room_fire_lukki/portal_room_fire_lukki.png"
    background_filename="mods/mo_creeps/files/pixel_scenes/portal_room_fire_lukki/portal_room_fire_lukki_background.png"
    colors_filename="mods/mo_creeps/files/pixel_scenes/portal_room_fire_lukki/portal_room_fire_lukki_visual.png"
  ></PixelScene>
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8624" pos_y="16547" just_load_an_entity="mods/mo_creeps/files/entities/buildings/portal_fire_lukki_musicstone.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8337" pos_y="16554" just_load_an_entity="mods/mo_creeps/files/entities/buildings/portal_fire_lukki_lavalake.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8648" pos_y="16708" just_load_an_entity="mods/mo_creeps/files/entities/buildings/portal_fire_lukki_tower.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8344" pos_y="16711" just_load_an_entity="mods/mo_creeps/files/entities/buildings/portal_fire_lukki_dragoncave.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8480" pos_y="16906" just_load_an_entity="data/entities/buildings/hourglass_music.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8480" pos_y="16906" just_load_an_entity="mods/mo_creeps/files/entities/buildings/divine_knowledge_particles.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8483" pos_y="16913" just_load_an_entity="mods/mo_creeps/files/entities/buildings/divine_knowledge_check.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8539" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/alchemy_centipede_blood.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8484" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/alchemy_redsand.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8429" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/alchemy_insecthusk.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8564" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/boss_toxic_worm.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8524" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/boss_divine_being.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8484" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/boss_fire_lukki.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8444" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/boss_musical_boss.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="-8404" pos_y="16843" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/boss_blob_titan.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="2239" pos_y="2215" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/hidden/alchemy_pinksand.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="2343" pos_y="2215" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/hidden/alchemy_centipede_blood.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="12086" pos_y="7000" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/hidden/alchemy_insecthusk.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="11984" pos_y="7000" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/hidden/alchemy_divineliquid.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="3916" pos_y="9110" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/hidden/alchemy_redsand.xml" />
]]))
xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
    <PixelScene pos_x="4022" pos_y="9110" just_load_an_entity="mods/mo_creeps/files/entities/props/alchemy/hidden/alchemy_fungus.xml" />
]]))
ModTextFileSetContent("data/biome/_pixel_scenes.xml", tostring(xml))

--Portal Offset amounts from pixelscene origin in top left
--115,166 Music Stone         402,173 Lava lake
--
--91,327 Tower                395,330 Dragon Cave
--
-- Toxic Worm----Divine Being----Fire Lukki----Abandoned Orchestra----Blob Boss
--
--
--Music Stone
--Lava Lake
--Tower
--Dragon Cave