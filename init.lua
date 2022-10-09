dofile("data/scripts/lib/utilities.lua")

local modCompatibilityConjurer = ModSettingGet( "mo_creeps.mod_compat_mode_conjurer" )
local motdSetting = ModSettingGet( "mo_creeps.motd_setting" )
local seasonalSetting = ModSettingGet( "mo_creeps.seasonal_events" )

--Spawn Bosses

--This was a coding marathon and a half, huge shoutouts to Horscht for the help on this one.
--And Zathers for making this seductive lua file


-- If Conjurer is enabled, disable this for a fix.
if modCompatibilityConjurer == true then
  if ModIsEnabled("raksa") == false then
    if ModIsEnabled("purgatory") then
      dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_purgatory.lua" )
    else
      dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list.lua" )
    end
  end
else
  if ModIsEnabled("purgatory") then
    dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_purgatory.lua" )
  else
    dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list.lua" )
  end
end





--Description fix for Ghostly Vision Perk

local content = ModTextFileGetContent("data/translations/common.csv")
ModTextFileSetContent("data/translations/common.csv", content .. [[
perk_mocreeps_ghostly_vision,Ghostly Vision,,,,,,,,,,,,,
perk_mocreeps_ghostly_vision_description,You can see things which aren't there.. Without assistance.,,,,,,,,,,,,,
perk_mocreeps_ghostly_vision,Ghostly Vision,,,,,,,,,,,,,
perk_mocreeps_ghostly_vision_description,You can see things which aren't there.. Without assistance.,,,,,,,,,,,,,
perk_mocreeps_rage_aura,Enraging Aura,,,,,,,,,,,,,
perk_mocreeps_rage_aura_description,Creatures are sent into a blind rage by your presence.,,,,,,,,,,,,,
book_mocreeps_divine_liquid,Tablet of Apotheosis,,,,,,,,,,,,,
book_mocreeps_divine_liquid_description,"Long have been the days since the universe was in union. \nWhen Slime was no different from above and below was no different from slime. \nSome species have adapted to these changes however, excessively, and became attuned to the pinnacles and depths of this world. \nThey must distance themselves with truly divine reason.",,,,,,,,,,,,,
book_mocreeps_materia_conversion,"Alchemist's Notes",,,,,,,,,,,,,
book_mocreeps_materia_conversion_description,"Transmutation.. Materia Conversion. \nFor years I've dedicated my life to this art, only to foolishly trick myself. \nFor years I thought Materia Conversion could only be used on solid matter, \nBut only now in my last few days I've come to learn it can be harnessed on magic as well. \nI can only hope the fruits of my labour will not forgotten.",,,,,,,,,,,,,
book_mocreeps_materia_conversion_spell,"Alchemist's Notes",,,,,,,,,,,,,
book_mocreeps_materia_conversion_spell_description,"Conversion.. \nRemember these words.... \nFungus \nWorm \nRat",,,,,,,,,,,,,
book_mocreeps_trophy_room,"Alchemist's Notes",,,,,,,,,,,,,
book_mocreeps_trophy_room_description,"I have come to learn this Tree was deemed unfitting of.. certain.. accomplishments by the gods. \nCross the lava, descend where you would not normal. \nThere they will humour you.",,,,,,,,,,,,,
book_mocreeps_trophy_room_description_purgatory,"I have come to learn this Tree was deemed unfitting of.. certain.. accomplishments by the gods. \nSpelunk east before you visit their place of worship, cross the fungus, holding the ceiling dear. \nThere they will humour you.",,,,,,,,,,,,,
mat_cloth,Cloth,,,,,,,,,,,,,
book_mocreeps_cat_rat,"Cat Lover's Notes",,,,,,,,,,,,,
book_mocreeps_cat_rat_description,"My Cats seem scared of normal rats.. \nBut have an irresistible hate towards magical rats for some reason. \nIt's kind of cute.. But I can't brush away the feeling they distance themselves with truly divine purpose...",,,,,,,,,,,,,
book_mocreeps_motd,"Message of the Day",,,,,,,,,,,,,
book_mocreeps_motd_description,"You shouldn't be reading this.",,,,,,,,,,,,,
book_mocreeps_motd_description_halloween,"Happy Halloween!",,,,,,,,,,,,,
book_mocreeps_motd_description_smissmass,"Happy Noitmass!",,,,,,,,,,,,,
book_mocreeps_motd_description_001,"Also try Worse Enemies!",,,,,,,,,,,,,
book_mocreeps_motd_description_002,"Hobos love Material Donations",,,,,,,,,,,,,
book_mocreeps_motd_description_003,"Blood is Fuel.",,,,,,,,,,,,,
book_mocreeps_motd_description_004,"Also try Copis Things!",,,,,,,,,,,,,
book_mocreeps_motd_description_005,"Meow. Meow. Meow. Meow. Meow.",,,,,,,,,,,,,
book_mocreeps_motd_description_006,"Also try Shellcore Command Remastered!",,,,,,,,,,,,,
book_mocreeps_motd_description_007,"More Creeps & Weirdos successfully initialised.",,,,,,,,,,,,,
book_mocreeps_motd_description_008,"Hey? Can you hear me?! Get out while you still can!! HURRY.",,,,,,,,,,,,,
book_mocreeps_motd_description_009,"Also try Chemical Curiosities!",,,,,,,,,,,,,
book_mocreeps_motd_description_010,"Tired of your cute Cats and bright Fairies dying? \nYou can make them immortal in the settings!.",,,,,,,,,,,,,
book_mocreeps_motd_description_011,"Amazing.",,,,,,,,,,,,,
book_mocreeps_motd_description_012,"I have 7 very important lore related questions.",,,,,,,,,,,,,
book_mocreeps_motd_description_013,"All code is circular bread approved.",,,,,,,,,,,,,
book_mocreeps_motd_description_014,"Esoteric Beings fear curses.",,,,,,,,,,,,,
book_mocreeps_motd_description_015,"Can you hear ghosts? \nWithout assistance?",,,,,,,,,,,,,
book_mocreeps_motd_description_016,"Masters of Trolling like red outlines. \nThey'll fit right in",,,,,,,,,,,,,
book_mocreeps_motd_description_017,"Musical Beings fear more than just stones....",,,,,,,,,,,,,
book_mocreeps_motd_description_018,"Knowledge is scattered around the world.. find it.",,,,,,,,,,,,,
book_mocreeps_motd_description_019,"Lukki Lair porings may not be what they seem..",,,,,,,,,,,,,
book_mocreeps_motd_description_020,"The coldest Magical temple may hold vital treasure. \nJust don't descend.",,,,,,,,,,,,,
book_mocreeps_motd_description_021,"Angelings and Devilings distance themselves.",,,,,,,,,,,,,
book_mocreeps_motd_description_022,"With truly divine purpose.",,,,,,,,,,,,,
book_mocreeps_motd_description_023,"Perhaps not every creep is a hostile. \nPerhaps not every crystal is a threat.",,,,,,,,,,,,,
book_mocreeps_motd_description_024,"Also try Congas Cats! \n...Just not with More Creeps enabled. \nMore Creeps cats override Congas Cats cats.",,,,,,,,,,,,,
book_mocreeps_motd_description_025,"Attract worms and centipedes will soon follow.",,,,,,,,,,,,,
book_mocreeps_motd_description_026,"Goodluck and have fun!. \nIf you're feeling frustrated or stressed, remember to take a break.",,,,,,,,,,,,,
book_mocreeps_motd_description_027,"I believe in you.",,,,,,,,,,,,,
book_mocreeps_motd_description_028,"The pyramid isn't quite so safe anymore. \nBut may hold divine knowledge.",,,,,,,,,,,,,
book_mocreeps_motd_description_029,"Cross the sea of lava. \nGo where you would not normal. \nThere I will humour you.",,,,,,,,,,,,,
book_mocreeps_motd_description_030,"Happy today! Good Now, be happy you're still here!",,,,,,,,,,,,,
book_mocreeps_motd_description_031,"Don't visit the Toxic Worm Nest at 3 am.",,,,,,,,,,,,,
item_mocreeps_chest_cursed,"Pandora's Chest",,,,,,,,,,,,,
]])





--Regular Spawns

ModLuaFileAppend( "data/scripts/biomes/wizardcave.lua", "mods/mo_creeps/files/scripts/biomes/wizardcave_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/tower_end.lua", "mods/mo_creeps/files/scripts/biomes/tower_end_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/mo_creeps/files/scripts/biomes/coalmine_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/the_end.lua", "mods/mo_creeps/files/scripts/biomes/the_end_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/desert.lua", "mods/mo_creeps/files/scripts/biomes/desert_populator.lua" )

ModLuaFileAppend( "data/scripts/biomes/crypt.lua", "mods/mo_creeps/files/scripts/biomes/crypt_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/pyramid.lua", "mods/mo_creeps/files/scripts/biomes/pyramid_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/fungicave.lua", "mods/mo_creeps/files/scripts/biomes/fungicave_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/mo_creeps/files/scripts/biomes/coalmine_alt_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/pyramid_hallway.lua", "mods/mo_creeps/files/scripts/biomes/pyramid_hallway_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/liquidcave.lua", "mods/mo_creeps/files/scripts/biomes/liquidcave_populator.lua" )


ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/excavationsite_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/vault_frozen.lua", "mods/mo_creeps/files/scripts/biomes/vault_frozen_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/fungiforest.lua", "mods/mo_creeps/files/scripts/biomes/fungiforest_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/snowcastle.lua", "mods/mo_creeps/files/scripts/biomes/snowcastle_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/snowcave.lua", "mods/mo_creeps/files/scripts/biomes/snowcave_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/wandcave.lua", "mods/mo_creeps/files/scripts/biomes/wandcave_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/sandcave.lua", "mods/mo_creeps/files/scripts/biomes/sandcave_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/vault.lua", "mods/mo_creeps/files/scripts/biomes/vault_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/tower.lua", "mods/mo_creeps/files/scripts/biomes/tower_populator.lua" )
ModLuaFileAppend( "data/scripts/biomes/rainforest.lua", "mods/mo_creeps/files/scripts/biomes/rainforest_populator.lua" ) --Jungle
ModLuaFileAppend( "data/scripts/biomes/rainforest_dark.lua", "mods/mo_creeps/files/scripts/biomes/rainforest_dark_populator.lua" ) --Lukki Lair
ModLuaFileAppend( "data/scripts/biomes/winter.lua", "mods/mo_creeps/files/scripts/biomes/winter_populator.lua" ) --Snow Chasm
ModLuaFileAppend( "data/scripts/biomes/clouds.lua", "mods/mo_creeps/files/scripts/biomes/clouds_populator.lua" ) --Cloud Scape, for example coral chest area & essence of air area
ModLuaFileAppend( "data/scripts/biomes/robobase.lua", "mods/mo_creeps/files/scripts/biomes/robobase_populator.lua" ) --Power Plant
ModLuaFileAppend( "data/scripts/biomes/lake_statue.lua", "mods/mo_creeps/files/scripts/biomes/lake_statue_populator.lua" ) --Lake Island
ModLuaFileAppend( "data/scripts/biomes/hills.lua", "mods/mo_creeps/files/scripts/biomes/hills_populator.lua" ) --Hills and shallow caves
ModLuaFileAppend( "data/scripts/biomes/robot_egg.lua", "mods/mo_creeps/files/scripts/biomes/robot_egg_populator.lua" ) --End of Everything Robotic Egg


ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mo_creeps/files/actions.lua" )




ModMaterialsFileAdd( "mods/mo_creeps/files/scripts/materials/custom_materials.xml" )









--Global Spawns
--DO NOT INCLUDE ANYTHING TOWER RELATED HERE, they're... "special" and need to be done in their own unique way
ModLuaFileAppend( "data/scripts/biomes/wizardcave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Wizard's Den, aside from the darkness it's pretty habitable. Polymorph liquid is scarier, I can't shield that.
ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Coal Mine, first area, goodluck on your run
ModLuaFileAppend( "data/scripts/biomes/the_end.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" ) --Heaven, or Hell, your choice. Either are The Work.
ModLuaFileAppend( "data/scripts/biomes/desert.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Desert above ground, careful not to die to any Stendari

ModLuaFileAppend( "data/scripts/biomes/crypt.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Temple of the Arts.. who died here?
ModLuaFileAppend( "data/scripts/biomes/pyramid.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Presumably everything below the entrance to the pyramid
ModLuaFileAppend( "data/scripts/biomes/fungicave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --BUNGUS!! cave, west side of area 2 for example
ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Coalmine but to the west side near damp cave
ModLuaFileAppend( "data/scripts/biomes/pyramid_hallway.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Pyramid entrance, presumably


ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Coal Pits, area 2
ModLuaFileAppend( "data/scripts/biomes/fungiforest.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Overgrowth
ModLuaFileAppend( "data/scripts/biomes/snowcave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Snowy Depths
ModLuaFileAppend( "data/scripts/biomes/wandcave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Magical temple.. huh
ModLuaFileAppend( "data/scripts/biomes/sandcave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Desert sand cave, I don't think it includes desert chasm
ModLuaFileAppend( "data/scripts/biomes/vault.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" ) --The Vault

--For Clarity, anything below this line has not yet been used to spawn in an enemy by normal methods, but is still wanted to be included in Global Spawning.

ModLuaFileAppend( "data/scripts/biomes/clouds.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" ) --Cloudscapes
ModLuaFileAppend( "data/scripts/biomes/hills.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" ) --Hills, aka forest.
ModLuaFileAppend( "data/scripts/biomes/robot_egg.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" ) --I'm sure you can guess
ModLuaFileAppend( "data/scripts/biomes/winter.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Winter appears to be the snow chasm... terrifying. Also line 69!
ModLuaFileAppend( "data/scripts/biomes/rainforest.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Jungle
ModLuaFileAppend( "data/scripts/biomes/rainforest_dark.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Lukki Lair.. creepy
ModLuaFileAppend( "data/scripts/biomes/vault_frozen.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" ) --Like the vault, but way colder, worse, more hisii and with a really rude welcoming
ModLuaFileAppend( "data/scripts/biomes/snowcastle.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" ) --Hisii Base... Interesting name.. I won't judge.. too much, I've used some really weird inengine names myself in the past
ModLuaFileAppend( "data/scripts/biomes/robobase.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" ) --Power Plant
ModLuaFileAppend( "data/scripts/biomes/liquidcave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" ) --Abandoned Alchemy Lab



--- Boss Spawns
--These use the Mountain Hall for biome compatibility.

--[[

--Spawns Toxic Worm boss after filling the dragon egg with toxic sludge
--This was the original intent, now the Toxic Worm spawns inside of a "nest" area of sorts with an egg, approach it and get got!
ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/toxic_worm_nest_populator.lua" )


--Spawns the Abandoned Orchestra in the sandcaves.
ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_musical_ghost_sandcave_populator.lua" )


--Spawns a Magic Devourer inside the Abandoned Alchemy Lab to show off its' gimmick, only one though, and the only one with cell eater capabilities in the entire game!
ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/devourer_magic_liquidcave_spawn.lua" )


--Spawns a wand editting crystal inside the pyramid, this will provide people incentive to go there and wander around the actual pyramid part for a bit before rushing either the boss or the orb.
ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/pyramid_wandedit_crystal_populator.lua" ) 


--Deletes polymorph crystal surrounding the entrance to the Temple of the Art. Wouldn't want to get cockblocked by a poly crystal covering the entrance and a tentacler camping right behind the wall.
ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/crypt_polycrystal_deletion_populator.lua" ) 


--Spawns a Hisii Beggar near the essence of earth, hopefully demonstrates or at least hints towards how to interact with them
ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/hisii_beggar_populator.lua" ) 

]]--


--Spawns all the above spawns in a single file and appends to pixel scenes to prevent double spawning
-- If Conjurer is enabled, disable this for a fix.
if modCompatibilityConjurer == true then
  if ModIsEnabled("raksa") == false then
    if ModIsEnabled("purgatory") then
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/boss_spawn_list.lua" )
    else
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list.lua" )
    end
  end
else
  if ModIsEnabled("purgatory") then
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/boss_spawn_list.lua" )
  else
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list.lua" )
  end
end



--Spawns statues in the trophy room
if GameHasFlagRun( "mocreep_initialised_pride_room" ) == false then
  if ModIsEnabled("purgatory") then
    ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/statue_room_populator.lua" ) 
  else
    ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/statue_room_populator.lua" ) 
  end
end




--Modded compatibility

--New Biomes & Secrets
if ModIsEnabled("New Biomes + Secrets") then

    --Normal Spawns
	ModLuaFileAppend( "data/scripts/biomes/SEWER.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/SEWER_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/radioactive_pits.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/radioactive_pits_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/gascave_middle.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/gascave_middle_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/LANDING.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/LANDING_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/space.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/space_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_left7.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_toxic_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_middle7.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_toxic_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_right7.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_toxic_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_left6.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_snow_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_middle6.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_snow_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_right6.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_snow_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_left5.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_heat_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_middle5.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_heat_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_right5.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_heat_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_left3.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_heat_bug_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_middle3.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_heat_bug_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_right3.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_heat_bug_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_left2.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_norm_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_middle2.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_norm_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_right2.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_norm_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_left1.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_norm_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_middle1.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_norm_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/tower_ascending_right1.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/forbidden_tower_norm_populator.lua" )

    --Global Spawns
	ModLuaFileAppend( "data/scripts/biomes/SEWER.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/radioactive_pits.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/gascave_middle.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
	ModLuaFileAppend( "data/scripts/biomes/LANDING.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" )
	ModLuaFileAppend( "data/scripts/biomes/space.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )

end


--Alternate Biomes
--Remember to make specific files for these at some point.. it'd be weird if there were totally normal guys spawning in irridiated mines, or magical people in the robotics factory
if ModIsEnabled("biome-plus") then

    --Normal Spawns
    ModLuaFileAppend( "data/scripts/biomes/mod/floodcave.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/aquifer_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/the_void.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/void_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/floating_mountain.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/floating_mountain_populator.lua" )
    
    ModLuaFileAppend( "data/scripts/biomes/mod/holy_temple.lua", "mods/mo_creeps/files/scripts/biomes/crypt_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/collapsed_lab.lua", "mods/mo_creeps/files/scripts/biomes/fungicave_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/irradiated_mines.lua", "mods/mo_creeps/files/scripts/biomes/coalmine_alt_populator.lua" )
    
    ModLuaFileAppend( "data/scripts/biomes/mod/blast_pit.lua", "mods/mo_creeps/files/scripts/biomes/excavationsite_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/snowvillage.lua", "mods/mo_creeps/files/scripts/biomes/snowcastle_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/frozen_passages.lua", "mods/mo_creeps/files/scripts/biomes/snowcave_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/catacombs.lua", "mods/mo_creeps/files/scripts/biomes/wandcave_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/tomb.lua", "mods/mo_creeps/files/scripts/biomes/sandcave_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/robofactory.lua", "mods/mo_creeps/files/scripts/biomes/vault_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/swamp.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/swamp_populator.lua" ) --Jungle, could probably include bonus fungus here
    ModLuaFileAppend( "data/scripts/biomes/mod/rainforest_wormy.lua", "mods/mo_creeps/files/scripts/biomes/rainforest_dark_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/conduit.lua", "mods/mo_creeps/files/scripts/biomes/winter_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/sulfur_cave.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/hiddengrove_populator.lua" ) --Hidden Grove, Overgrowth populator

    --Global Spawns
    ModLuaFileAppend( "data/scripts/biomes/mod/irradiated_mines.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/blast_pit.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/frozen_passages.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/the_void.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/collapsed_lab.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/catacombs.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/swamp.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/robofactory.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_no_magic.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/holy_temple.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/snowvillage.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/tomb.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/rainforest_wormy.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/conduit.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/sulfur_cave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )

end


--Volcano Biome
if ModIsEnabled("VolcanoBiome") then

    --Normal Spawns
	ModLuaFileAppend( "mods/VolcanoBiome/files/biome/inside.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/volcano_populator.lua" )

    --Global Spawns
	ModLuaFileAppend( "mods/VolcanoBiome/files/biome/inside.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )

end


--Flesh Biome
if ModIsEnabled("flesh_biome") then

    --Normal Spawns
	ModLuaFileAppend( "mods/flesh_biome/files/scripts/flesh_biome.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/flesh_biome_populator.lua" )

    --Global Spawns
	ModLuaFileAppend( "mods/flesh_biome/files/scripts/flesh_biome.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )

end


--Sewer Standalone Mod
if ModIsEnabled("sewer_updated") then

    --Normal Spawns
	ModLuaFileAppend( "mods/flesh_biome/files/sewer_biome/sewer.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/SEWER_populator.lua" )

    --Global Spawns
	ModLuaFileAppend( "mods/flesh_biome/files/sewer_biome/sewer.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )

end


--Chasm Biomes
if ModIsEnabled("chasm biomes") then

    --Normal Spawns
	ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/outpost.lua", "mods/mo_creeps/files/scripts/biomes/sandcave_populator.lua" )
	ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/winter_caves.lua", "mods/mo_creeps/files/scripts/biomes/winter_populator.lua" )
	ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/polycave.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/polycave_populator.lua" )

    --Global Spawns
	ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/outpost.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
	ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/winter_caves.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
	ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/polycave.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )

  --Suspicious
  ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/outpost.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" )
  ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/winter_caves.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" )
  ModLuaFileAppend( "mods/chasm biomes/files/scripts/biomes/polycave.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" )

end


--New Enemies, boosts ghost spawnrate in sandcave so they aren't flushed out by the quantity of other creatures.
--Also boosts Divine Being & Divine Poring spawnrates in Heaven & Hell for unlocks
if ModIsEnabled("new_enemies") then
	ModLuaFileAppend( "data/scripts/biomes/sandcave.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/sandcave_ghostbooster_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/the_end.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/the_end_angelboost_populator.lua" )
end

--New Enemies, boosts ghost spawnrate in sandcave so they aren't flushed out by the quantity of other creatures, compatibility for alt biomes.
if ModIsEnabled("new_enemies") then
  if ModIsEnabled("biome-plus") then
    ModLuaFileAppend( "data/scripts/biomes/mod/tomb.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/sandcave_ghostbooster_populator.lua" )
  end
end




-- Conjurer Mod, adds enemies, buildings and wands to a custom tab
if ModIsEnabled("raksa") then
  ModLuaFileAppend( "mods/raksa/files/scripts/lists/entity_categories.lua", "mods/mo_creeps/files/scripts/mod_compatibility/conjurer_populator.lua" )
end





-- Custom Status support injection

ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/mo_creeps/files/scripts/perks/custom_perks.lua" )


-- Custom Status support injection

ModLuaFileAppend( "data/scripts/status_effects/status_list.lua", "mods/mo_creeps/files/scripts/status_effects/status_effects.lua" )


-- Custom Audio Support

ModRegisterAudioEventMappings("mods/mo_creeps/files/audio/GUIDs.txt")



-- Misc

--Kiiinda working??
ModLuaFileAppend( "data/scripts/streaming_integration/event_list.lua", "mods/mo_creeps/files/scripts/streaming_integration/event_list_populator.lua" )


--Musicstone tag addition
dofile_once( "mods/mo_creeps/files/scripts/magic/music_magic_tag_nxml.lua" )

--MOTD
if motdSetting == true then
  dofile_once( "mods/mo_creeps/files/scripts/misc/motd_list.lua" )
end

--Allows hisii to jump into minecarts
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
local content = ModTextFileGetContent("data/entities/props/physics_minecart.xml")
local xml = nxml.parse(content)
xml.attr.name = "minecart_hisii_hopin"
ModTextFileSetContent("data/entities/props/physics_minecart.xml", tostring(xml))
ModTextFileSetContent("data/entities/props/physics/minecart.xml", tostring(xml))

--local content = ModTextFileGetContent("data/entities/props/physics/minecart.xml")
--local xml = nxml.parse(content)
--xml.attr.name = "minecart_hisii_hopin"
--ModTextFileSetContent("data/entities/props/physics/minecart.xml", tostring(xml))


--Same thing but for hisii
local content = ModTextFileGetContent("data/entities/animals/shotgunner.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
    <LuaComponent
        script_source_file="mods/mo_creeps/files/scripts/buildings/hisii_minecart_hopin.lua"
        execute_every_n_frame="60"
        >
    </LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/shotgunner.xml", tostring(xml))

--Same thing but for hisii with TNT
local content = ModTextFileGetContent("data/entities/animals/miner_weak.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
    <LuaComponent
        script_source_file="mods/mo_creeps/files/scripts/buildings/hisii_minecart_hopin_tnt.lua"
        execute_every_n_frame="60"
        >
    </LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/miner_weak.xml", tostring(xml))







--Master of Masters master spawner insertion, allows him to spawn Master of Mallards & Master of Immortality too.. He doesn't appreciate Master of Trolling too much to invite him in
--Note, this has been moved to a file override






-- Seasonal
local year, month, day = GameGetDateAndTimeLocal()


if seasonalSetting == true then

  -- Halloween Event
  if ( month == 10 ) and ( day >= 1 ) then
    ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Coal Mine, first area, goodluck on your run
    ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Coalmine but to the west side near damp cave
    ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Coal Pits, area 2
    ModLuaFileAppend( "data/scripts/biomes/pyramid.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Presumably everything below the entrance to the pyramid

    local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
    local content = ModTextFileGetContent("data/entities/animals/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_halloween.xml"
    ModTextFileSetContent("data/entities/animals/poring.xml", tostring(xml))

    local content = ModTextFileGetContent("data/entities/animals/coal_mines/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_halloween_weak.xml"
    ModTextFileSetContent("data/entities/animals/coal_mines/poring.xml", tostring(xml))

    local content = ModTextFileGetContent("data/entities/animals/psychotic/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_halloween.xml"
    ModTextFileSetContent("data/entities/animals/psychotic/poring.xml", tostring(xml))

  end



  -- Smissmass Event
  if ( month == 12 ) and ( day >= 22 ) then

    local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
    local content = ModTextFileGetContent("data/entities/animals/hisii_minecart_tnt.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_tnt_santa.xml"
    xml:first_of("Base"):first_of("AnimalAIComponent").attr.attack_ranged_entity_file = "data/entities/projectiles/present.xml"
    ModTextFileSetContent("data/entities/animals/hisii_minecart_tnt.xml", tostring(xml))

    local content = ModTextFileGetContent("data/entities/animals/hisii_minecart.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_smissmass.xml"
    ModTextFileSetContent("data/entities/animals/hisii_minecart.xml", tostring(xml))

  end

end











--Dark Areas
ModLuaFileAppend( "data/scripts/biomes/wizardcave.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Wizard's Den, aside from the darkness it's pretty habitable. Polymorph liquid is scarier, I can't shield that.

ModLuaFileAppend( "data/scripts/biomes/crypt.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Temple of the Arts.. who died here?
ModLuaFileAppend( "data/scripts/biomes/pyramid.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Presumably everything below the entrance to the pyramid
ModLuaFileAppend( "data/scripts/biomes/fungicave.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --BUNGUS!! cave, west side of area 2 for example

ModLuaFileAppend( "data/scripts/biomes/fungiforest.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Overgrowth
ModLuaFileAppend( "data/scripts/biomes/wandcave.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Magical temple.. huh
ModLuaFileAppend( "data/scripts/biomes/sandcave.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Desert sand cave, I don't think it includes desert chasm
ModLuaFileAppend( "data/scripts/biomes/vault.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --The Vault

ModLuaFileAppend( "data/scripts/biomes/winter.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Winter appears to be the snow chasm... terrifying.
ModLuaFileAppend( "data/scripts/biomes/rainforest_dark.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Lukki Lair.. creepy
ModLuaFileAppend( "data/scripts/biomes/vault_frozen.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Like the vault, but way colder, worse, more hisii and with a really rude welcoming
ModLuaFileAppend( "data/scripts/biomes/robobase.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Power Plant
ModLuaFileAppend( "data/scripts/biomes/the_end.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" ) --Heaven & Hell, but for this specific lua file append I'm only adding to hell


--ModLuaFileAppend( "data/scripts/biome_modifiers.lua", "mods/mo_creeps/files/scripts/weather/weather_wet_append.lua" ) --Attempt to insert shaman into biome wet modifier spawn additions. Started eating up too much time.
--If you know how to do this, please let me know. -Conga Lyne

