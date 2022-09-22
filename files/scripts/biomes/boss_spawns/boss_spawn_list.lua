
--- Boss Spawns

local inilisationCheck

if (inilisationCheck ~= 2) then

    --Spawns Toxic Worm boss after filling the dragon egg with toxic sludge
    --This was the original intent, now the Toxic Worm spawns inside of a "nest" area of sorts with an egg, approach it and get got!
    local entity = EntityLoad( "data/entities/buildings/toxic_worm_nest_populator.xml", 2292, 2286 )


    --Spawns the Abandoned Orchestra in the sandcaves.
    local entity = EntityLoad( "data/entities/buildings/boss_musical_ghost_sandcave_populator.xml", 11796, 7028 )


    --Spawns a Magic Devourer inside the Abandoned Alchemy Lab to show off its' gimmick, only one though, and the only one with cell eater capabilities in the entire game!
    local entity = EntityLoad( "data/entities/buildings/devourer_magic_liquidcave_populator.xml", -2484, 764 )


    --Spawns a wand editting crystal inside the pyramid, this will provide people incentive to go there and wander around the actual pyramid part for a bit before rushing either the boss or the orb.
    local entity = EntityLoad( "data/entities/buildings/wandedit_crystal.xml", 11036, -26 )

    local entity = EntityLoad( "data/entities/buildings/pyramid_wandedit_crystal_book_populator.xml", 11062, -80 )
    

    --Deletes polymorph crystal surrounding the entrance to the Temple of the Art. Wouldn't want to get cockblocked by a poly crystal covering the entrance and a tentacler camping right behind the wall.
    local entity = EntityLoad( "data/entities/buildings/polymorphcrystal_deleter.xml", 191, 10699 )


    --Spawns a Hisii Beggar near the essence of earth, hopefully demonstrates or at least hints towards how to interact with them
    local entity = EntityLoad( "data/entities/buildings/hisii_beggar_populator.xml", 16226, -1600 )


    --Spawns Wand of Wonders & Pouch inside the wand cave
    local entity = EntityLoad( "data/entities/buildings/wand_cave_populator.xml", 12200, -4202 )


    --Spawns Kitty Cats at the start of the game, Cat, I'm a Kitty Cat! And I dance dance dance and I dance dance dance!! Nyaaa!!
    local entity = EntityLoad( "data/entities/buildings/intro_kitty_populator.xml", 676, -106 )


    --Spawns a book hinting towards Materia Converting Fungal Shift
    local entity = EntityLoad( "data/entities/buildings/materia_conversion_book_spawner.xml", 2515, 7428 )


    --Spawns a book hinting towards which spells to use Mass Materia Conversion on
    local entity = EntityLoad( "data/entities/buildings/materia_conversion_spell_book_spawner.xml", -1111, -1234 )

    inilisationCheck = 2

end