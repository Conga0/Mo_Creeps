dofile("data/scripts/lib/utilities.lua")

local modCompatibilityConjurer = ModSettingGet( "mo_creeps.mod_compat_mode_conjurer" )
local modCompatibilitySpellEvolutions = ModSettingGet( "mo_creeps.mod_compat_mode_spell_evolution" )
local motdSetting = ModSettingGet( "mo_creeps.motd_setting" )
local seasonalSetting = ModSettingGet( "mo_creeps.seasonal_events" )

--Spawn Bosses

--This was a coding marathon and a half, huge shoutouts to Horscht for the help on this one.
--And Zathers for making this seductive lua file
--Note: This has been moved lower down for cleaner organisation & implementing mod compatibility




-- Spell Unlock Fixes
-- If someone attains a spell through another mod, twitch integration, etc, this is just to make sure they aren't getting unlocks they shouldn't.
-- They'll still get the spell, it just won't be added to their permanent record
-- Rat bite isn't "verified" because it's a funny spell

if HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" ) then
  AddFlagPersistent( "mocreeps_card_unlocked_divinebeing_spell" )
else
  RemoveFlagPersistent( "mocreeps_card_unlocked_divinebeing_spell" )
end

if HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" ) then
  AddFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm_spell" )
else
  RemoveFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm_spell" )
end

if HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" ) then
  AddFlagPersistent( "mocreeps_card_unlocked_musical_boss_spell" )
else
  RemoveFlagPersistent( "mocreeps_card_unlocked_musical_boss_spell" )
end

if HasFlagPersistent( "mocreeps_card_unlocked_blob_boss" ) then
  AddFlagPersistent( "mocreeps_card_unlocked_blob_boss_spell" )
else
  RemoveFlagPersistent( "mocreeps_card_unlocked_blob_boss_spell" )
end

if HasFlagPersistent( "mocreeps_card_unlocked_cat_secret" ) then
  AddFlagPersistent( "mocreeps_card_unlocked_cat_secret_spell" )
else
  RemoveFlagPersistent( "mocreeps_card_unlocked_cat_secret_spell" )
end






-- If Conjurer is enabled, disable this for a fix.
if modCompatibilityConjurer == true then
  if ModIsEnabled("raksa") == false then
    if ModIsEnabled("purgatory") then
      dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_purgatory.lua" )
      --dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_purgatory_NGPlus.lua" )
    elseif ModIsEnabled("noitavania") then
      dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_noitavania.lua" )
    else
      dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list.lua" )
      dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_NGPlus.lua" )
    end
  end
else
  if ModIsEnabled("purgatory") then
    dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_purgatory.lua" )
    --dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_purgatory_NGPlus.lua" )
  elseif ModIsEnabled("noitavania") then
    dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_noitavania.lua" )
  else
    dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list.lua" )
    dofile_once( "mods/mo_creeps/files/scripts/pixelscenes/scene_list_NGPlus.lua" )
  end
end





--Description fix for Ghostly Vision Perk
--Wow, I've come a long way since then.
--Thankyou for all the help, gamers!

local content = ModTextFileGetContent("data/translations/common.csv")
ModTextFileSetContent("data/translations/common.csv", content .. [[
perk_mocreeps_ghostly_vision,Ghostly Vision,Призрачное зрение,,,,,,,,,,,,
perk_mocreeps_ghostly_vision_description,You can see things which aren't there.. Without assistance.,"Вы можете видеть вещи, которых тут нет... Без посторонней помощи.",,,,,,,,,,,,
perk_mocreeps_ghostly_vision,Ghostly Vision,Призрачное зрение,,,,,,,,,,,,
perk_mocreeps_ghostly_vision_description,You can see things which aren't there.. Without assistance.,"Вы можете видеть вещи, которых тут нет... Без посторонней помощи.",,,,,,,,,,,,
perk_mocreeps_rage_aura,Enraging Aura,Раздражающая аура,,,,,,,,,,,,
perk_mocreeps_rage_aura_description,Creatures are sent into a blind rage by your presence.,От вашего присутствия существа впадают в слепую ярость.,,,,,,,,,,,,
book_mocreeps_divine_liquid,Tablet of Apotheosis,Скрижаль Апофеоза,,,,,,,,,,,,
book_mocreeps_divine_liquid_description,"Long have been the days since the universe was in union. \nWhen Slime was no different from above and below was no different from slime. \nSome species have adapted to these changes however, excessively, and became attuned to the pinnacles and depths of this world. \nThey must distance themselves with truly divine purpose.","Давно прошли те дни, когда вселенная была в единстве. \nКогда слизь не отличалась от верха, а низ не отличался от слизи. \nНекоторые виды, однако, чрезмерно приспособились к этим изменениям и стали сонастроены с вершинами и глубинами этого мира. \nОни должны отдаляться с истинно божественной целью.",,,,,,,,,,,,
book_mocreeps_materia_conversion,Alchemist's Notes,Записи алхимика,,,,,,,,,,,,
book_mocreeps_materia_conversion_description,"Transmutation.. Materia Conversion. \nFor years I've dedicated my life to this art, only to foolishly trick myself. \nFor years I thought Materia Conversion could only be used on solid matter, \nBut only now in my last few days I've come to learn it can be harnessed on magic as well. \nI can only hope the fruits of my labour will not forgotten.","Трансмутация. Превращение материи. \nГодами я посвящал свою жизнь этому искусству, но только для того, чтобы обмануть самого себя. \nДолгие годы я думал, что преобразование материи можно использовать только в твёрдой материи, \nНо только теперь, в последние дни, я узнал, что его можно использовать и в магии. \nОстаётся надеяться, что плоды моего труда не будут забыты.",,,,,,,,,,,,
book_mocreeps_materia_conversion_spell,Alchemist's Notes,Записи алхимика,,,,,,,,,,,,
book_mocreeps_materia_conversion_spell_description,Conversion.. \nRemember these words.... \nFungus \nWorm \nRat,Превращение... \nЗапомните эти слова.... \nГрибок \nЧервь \nКрыса,,,,,,,,,,,,
book_mocreeps_trophy_room,Alchemist's Notes,Записи алхимика,,,,,,,,,,,,
book_mocreeps_trophy_room_description,"I have come to learn this Tree was deemed unfitting of.. certain.. accomplishments by the gods. \nCross the lava, descend where you would not normal. \nThere they will humour you.","Я узнал, что боги сочли это Дерево непригодным для... определённых... свершений. \nПересеките лаву, спуститесь туда, куда обычно не спускаются. \nТам они будут над вами насмехаться.",,,,,,,,,,,,
book_mocreeps_trophy_room_description_purgatory,"I have come to learn this Tree was deemed unfitting of.. certain.. accomplishments by the gods. \nSpelunk east before you visit their place of worship, cross the fungus, holding the ceiling dear. \nThere they will humour you.","Я узнал, что боги сочли это Дерево непригодным для... определённых... свершений. \nСпешите на Восток, прежде чем посетить место их поклонения, перейдите по грибку, держась за потолок. \nТам они будут над вами насмехаться.",,,,,,,,,,,,
mat_cloth,Cloth,Ткань,,,,,,,,,,,,
book_mocreeps_cat_rat,Cat Lover's Notes,Записи любителя кошек,,,,,,,,,,,,
book_mocreeps_cat_rat_description,My Cats seem scared of normal rats.. \nBut have an irresistible hate towards magical rats for some reason. \nIt's kind of cute.. But I can't brush away the feeling they distance themselves with truly divine purpose...,"Мои кошки боятся обычных крыс... \nНо почему-то испытывают непреодолимую ненависть к магическим крысам. \nЭто даже мило... Но я не могу избавиться от ощущения, что они отдаляются от меня с поистине божественной целью...",,,,,,,,,,,,
book_mocreeps_motd,Message of the Day,Сообщение дня,,,,,,,,,,,,
book_mocreeps_motd_description,Message of the Day \nYou shouldn't be reading this.,Сообщение дня \nВы не должны были это прочесть.,,,,,,,,,,,,
book_mocreeps_motd_description_birthday,Message of the Day \nHappy Birthday More Creeps & Weirdos!,"Сообщение дня \nПоздравлем с днём рождения, More Creeps & Weirdos!",,,,,,,,,,,,
book_mocreeps_motd_description_halloween,Message of the Day \nHappy Halloween!,Сообщение дня \nСчастливого Хэллоуина!,,,,,,,,,,,,
book_mocreeps_motd_description_smissmass,Message of the Day \nHappy Noitmass!,Сообщение дня \nСчастливого Нойтждества!,,,,,,,,,,,,
book_mocreeps_motd_description_001,Message of the Day \nAlso try Worse Enemies!,Сообщение дня \nТакже попробуйте мод Worse Enemies!,,,,,,,,,,,,
book_mocreeps_motd_description_002,Message of the Day \nHobos love Material Donations,Сообщение дня \nБродяги любят пожертвования в виде денег,,,,,,,,,,,,
book_mocreeps_motd_description_003,Message of the Day \nBlood is Fuel.,Сообщение дня \nКровь - это топливо.,,,,,,,,,,,,
book_mocreeps_motd_description_004,Message of the Day \nAlso try Copis Things!,Сообщение дня \nТакже попробуйте мод Copis Things!,,,,,,,,,,,,
book_mocreeps_motd_description_005,Message of the Day \nMeow. Meow. Meow. Meow. Meow.,Сообщение дня \nМяу. Мяу. Мяу. Мяу. Мяу.,,,,,,,,,,,,
book_mocreeps_motd_description_006,Message of the Day \nAlso try Shellcore Command Remastered!,Сообщение дня \nТакже попробуйте мод Shellcore Command Remastered!,,,,,,,,,,,,
book_mocreeps_motd_description_007,Message of the Day \nMore Creeps & Weirdos successfully initialised.,Сообщение дня \nМод More Creeps & Weirdos успешно инициализирован.,,,,,,,,,,,,
book_mocreeps_motd_description_008,Message of the Day \nHey? Can you hear me?! Get out while you still can!! HURRY.,"Сообщение дня \nЭй? Вы меня слышите?! Уходите, пока ещё не поздно!!! СКОРЕЕ.",,,,,,,,,,,,
book_mocreeps_motd_description_009,Message of the Day \nAlso try Chemical Curiosities!,Сообщение дня \nТакже попробуйте мод Chemical Curiosities!,,,,,,,,,,,,
book_mocreeps_motd_description_010,Message of the Day \nTired of your cute Cats and bright Fairies dying? \nYou can make them immortal in the settings!.,"Сообщение дня \nУстали от того, что ваши милые коты и яркие феи умирают? \nВы можете сделать их бессмертными в настройках!",,,,,,,,,,,,
book_mocreeps_motd_description_011,Message of the Day \nAmazing.,Сообщение дня \nПотрясающе.,,,,,,,,,,,,
book_mocreeps_motd_description_012,Message of the Day \nI have 7 very important lore related questions.,"Сообщение дня \nУ меня есть 7 очень важных вопросов, связанных с сюжетом игры.",,,,,,,,,,,,
book_mocreeps_motd_description_013,Message of the Day \nAll code is circular bread approved.,Сообщение дня \nВесь код был одобрен круглым хлебом.,,,,,,,,,,,,
book_mocreeps_motd_description_014,Message of the Day \nEsoteric Beings fear curses.,Сообщение дня \nЭзотерические существа боятся проклятий.,,,,,,,,,,,,
book_mocreeps_motd_description_015,Message of the Day \nCan you hear ghosts? \nWithout assistance?,Сообщение дня \nМожете ли вы слышать призраков? \nБез посторонней помощи?,,,,,,,,,,,,
book_mocreeps_motd_description_016,Message of the Day \nMasters of Trolling like red outlines. \nThey'll fit right in,Сообщение дня \nМастера троллинга любят красные контуры. \nОни отлично впишутся,,,,,,,,,,,,
book_mocreeps_motd_description_017,Message of the Day \nMusical Beings fear more than just stones....,"Сообщение дня \nМузыкальные существа боятся больше, чем просто камней....",,,,,,,,,,,,
book_mocreeps_motd_description_018,Message of the Day \nKnowledge is scattered around the world.. find it.,Сообщение дня \nЗнания разбросаны по всему миру... найдите их.,,,,,,,,,,,,
book_mocreeps_motd_description_019,Message of the Day \nLukki Lair porings may not be what they seem..,"Сообщение дня \nРазмышления о логове Лукки могут оказаться не тем, чем кажутся...",,,,,,,,,,,,
book_mocreeps_motd_description_020,Message of the Day \nThe coldest Magical temple may hold vital treasure. \nJust don't descend.,Сообщение дня \nСамый холодный магический храм может содержать жизненно важные сокровища. \nПросто не спускайтесь.,,,,,,,,,,,,
book_mocreeps_motd_description_021,Message of the Day \nAngelings and Devilings distance themselves.,Сообщение дня \nАнгелинги и Демолинги отдаляются друг от друга.,,,,,,,,,,,,
book_mocreeps_motd_description_022,Message of the Day \nWith truly divine purpose.,Сообщение дня \nС поистине божественной целью.,,,,,,,,,,,,
book_mocreeps_motd_description_023,Message of the Day \nPerhaps not every creep is a hostile. \nPerhaps not every crystal is a threat.,"Сообщение дня \nПожалуй, не каждый гад - враг. \Возможно, не каждый кристалл является угрозой.",,,,,,,,,,,,
book_mocreeps_motd_description_024,Message of the Day \nAlso try Congas Cats! ...Just not with More Creeps enabled. \nMore Creeps cats override Congas Cats cats... Update your settings!!!,Сообщение дня \nТакже попробуйте мод Congas Cats! ...только не с включенным модом More Creeps. \nКошки из мода More Creeps будут конфликтовать с кошками мода Congas Cats... Обновите настройки!!!,,,,,,,,,,,,
book_mocreeps_motd_description_025,"Message of the Day \nFun Fact, Despite this mod releasing on 24/10/2022, \nthe birthday event occurs in November to avoid clashing with Halloween.","Сообщение дня \nПрикольный факт, несмотря на то, что этот мод вышел 24.10.2022, \n событие дня рождения происходит в ноябре, чтобы избежать столкновения с Хэллоуином.",,,,,,,,,,,,
book_mocreeps_motd_description_026,"Message of the Day \nGoodluck and have fun!. \nIf you're feeling frustrated or stressed, remember to take a break.","Сообщение дня \nУдачи и веселья! \nЕсли вы чувствуете разочарование или стресс, не забудьте сделать перерыв.",,,,,,,,,,,,
book_mocreeps_motd_description_027,Message of the Day \nI believe in you.,Сообщение дня \nЯ верю в вас.,,,,,,,,,,,,
book_mocreeps_motd_description_028,Message of the Day \nThe pyramid isn't quite so safe anymore. \nBut may hold divine knowledge.,Сообщение дня \nПирамида уже не так безопасна. \nНо может хранить божественные знания.,,,,,,,,,,,,
book_mocreeps_motd_description_029,"Message of the Day \nCross the sea of lava, Go where you would not normal. \nThere I will humour you.","Сообщение дня \nПересеките море лавы, идите туда, где вы не будете нормальными. \nТам я буду насмехаться над вами.",,,,,,,,,,,,
book_mocreeps_motd_description_030,"Message of the Day \nHappy today! Good Now, be happy you're still here!","Сообщение дня \nСчастливый день! Счастливо, будьте счастливы, что вы ещё здесь!",,,,,,,,,,,,
book_mocreeps_motd_description_031,Message of the Day \nDon't visit the Toxic Worm Nest at 3 am.,Сообщение дня \nНе посещайте гнездо токсичных червей в 3 часа ночи.,,,,,,,,,,,,
item_mocreeps_chest_cursed,Pandora's Chest,Сундук Пандоры,,,,,,,,,,,,
status_mocreep_magicwet_ui,Magical Wetness,Магическая влажность,,,,,,,,,,,,
statusdesc_mocreep_magicwet_ui,Wet clothes protect you from fire.,Мокрая одежда защищает вас от огня.,,,,,,,,,,,,
status_mocreep_magicfire_ui,Magical Fire,Волшебный огонь,,,,,,,,,,,,
statusdesc_mocreep_magicfire_ui,You're on fire! Find water quickly!,Вы горите! Быстро найдите воду!,,,,,,,,,,,,
status_mocreep_magicurine_ui,Magical Jarate,Волшебный Банкате,,,,,,,,,,,,
statusdesc_mocreep_magicurine_ui,Wet clothes protect you from fire. \nYou sense an increased chance of recieving critical strikes.,Мокрая одежда защищает вас от огня. \nВы чувствуете повышенную вероятность получения критических попаданий по себе.,,,,,,,,,,,,
status_mocreep_magicpolymorph_ui,Magical Polymorph,Волшебный полиморфизм,,,,,,,,,,,,
statusdesc_mocreep_magicpolymorph_ui,You have been polymorphed into a vulnerable sheep!,Вы превратились в беззащитную овцу!,,,,,,,,,,,,
log_mocreep_reality_mutation_00,YOU SENSE THE REALITY HAS SHIFTED,"ВЫ ЧУВСТВУЕТЕ, ЧТО В РЕАЛЬНОСТИ ЧТО-ТО СМЕСТИЛОСЬ",,,,,,,,,,,,
log_mocreep_reality_mutation_01,YOU FEEL THE WORLD'S CREATURES HAVE CHANGED,"ВЫ ЧУВСТВУЕТЕ, ЧТО СУЩЕСТВА МИРА ИЗМЕНИЛИСЬ",,,,,,,,,,,,
log_mocreep_reality_mutation_02,THE WORLD'S LIFE HAS BEEN SHAKEN,ЖИЗНЬ МИРА ПОШАТНУЛАСЬ,,,,,,,,,,,,
log_mocreep_reality_mutation_03,YOU SENSE THE PATH OF EVOLUTION HAS CHANGED,"ВЫ ЧУВСТВУЕТЕ, ЧТО ПУТЬ ЭВОЛЮЦИИ ИЗМЕНИЛСЯ",,,,,,,,,,,,
log_mocreep_reality_mutation_04,YOU FEEL REALITY HAS BEEN ALTERED,"ВЫ ЧУВСТВУЕТЕ, ЧТО В РЕАЛЬНОСТИ ЧТО-ТО ИЗМЕНИЛОСЬ",,,,,,,,,,,,
log_mocreep_reality_mutation_05,YOU FEEL LIFE IN THE COSMOS HAS SHIFTED,"ВЫ ЧУВСТВУЕТЕ, ЧТО ЖИЗНЬ В КОСМОСЕ СДВИНУЛАСЬ",,,,,,,,,,,,
material_mocreep_meat_irritating,Irritating Meat,Раздражающее мясо,,,,,,,,,,,,
material_mocreep_meat_decaying,Decaying Meat,Разлагающееся мясо,,,,,,,,,,,,
material_mocreep_meat_feathery,Feathery Meat,Пернатое мясо,,,,,,,,,,,,
material_mocreep_meat_centipede,Centipede Meat,Мясо сороконожки,,,,,,,,,,,,
material_mocreep_sand_pink,Pink Sand,Розовый песок,,,,,,,,,,,,
material_mocreep_sand_red,Red Sand,Синий песок,,,,,,,,,,,,
material_mocreep_sand_insect_husk,Insect Husk,Шелуха насекомого,,,,,,,,,,,,
material_mocreep_mist_poison,Poisonous Mist,Ядовитый туман,,,,,,,,,,,,
material_mocreep_gem_green,Green Gem,Зелёный самоцвет,,,,,,,,,,,,
material_mocreep_magic_divine_liquid,Divine Liquid,Божественная жидкость,,,,,,,,,,,,
material_mocreep_spark_orange,Orange Spark,Оранжевая искра,,,,,,,,,,,,
material_mocreep_blood_centipede,Centipede Blood,Кровь сороконожки,,,,,,,,,,,,
spell_mocreep_thrower_disc_name,Giga Disc Projectile Thrower,Метатель гигантских дисков,,,,,,,,,,,,
spell_mocreep_thrower_disc_desc,Makes a projectile cast Giga Disc Projectiles in random directions,Снаряд испускает гигантские дисковые снаряды в случайном направлении,,,,,,,,,,,,
spell_mocreep_thrower_cursed_orb_name,Cursed Orb Thrower,Метатель проклятых сфер,,,,,,,,,,,,
spell_mocreep_thrower_cursed_orb_desc,Makes a projectile cast Cursed Orbs in random directions,Снаряд испускает проклятые шары в случайном направлении,,,,,,,,,,,,
spell_mocreep_thrower_tnt_name,Dynamite Thrower,Метатель динамита,,,,,,,,,,,,
spell_mocreep_thrower_tnt_desc,Makes a projectile cast Dynamite in random directions,Снаряд испускает динамит в случайном направлении,,,,,,,,,,,,
spell_mocreep_thrower_ice_ball_name,Ice Ball Thrower,Метатель ледяных шариков,,,,,,,,,,,,
spell_mocreep_thrower_ice_ball_desc,Makes a projectile cast Ice Balls in random directions,Снаряд испускает ледяные шарики в случайном направлении,,,,,,,,,,,,
spell_mocreep_thrower_nuke_name,Nuke Thrower,Метатель ядерного оружия,,,,,,,,,,,,
spell_mocreep_thrower_nuke_desc,Are you sure?                               ,Вы уверены?                               ,,,,,,,,,,,,
spell_mocreep_thrower_disc_enemy_name,Personal Giga Disc Projectile Thrower,Личный метатель гигантских дисков,,,,,,,,,,,,
spell_mocreep_thrower_disc_enemy_desc,Makes a projectile turn the creatures it hits into living Sawblade throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей пил",,,,,,,,,,,,
spell_mocreep_thrower_cursed_orb_enemy_name,Personal Cursed Orb Thrower,Личный метатель проклятых сфер,,,,,,,,,,,,
spell_mocreep_thrower_cursed_orb_enemy_desc,Makes a projectile turn the creatures it hits into living Cursed Orb throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей проклятых сфер",,,,,,,,,,,,
spell_mocreep_thrower_ice_ball_enemy_name,Personal Ice Ball Thrower,Личный метатель ледяных шариков,,,,,,,,,,,,
spell_mocreep_thrower_ice_ball_enemy_desc,Makes a projectile turn the creatures it hits into living Ice Ball throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей ледяных шариков",,,,,,,,,,,,
spell_mocreep_thrower_tnt_enemy_name,Personal Dynamite Thrower,Личный метатель динамита,,,,,,,,,,,,
spell_mocreep_thrower_tnt_enemy_desc,Makes a projectile turn the creatures it hits into living Dynamite throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей динамита",,,,,,,,,,,,
spell_mocreep_thrower_nuke_enemy_name,Personal Nuke Thrower,Личный метатель ядерного оружия,,,,,,,,,,,,
spell_mocreep_thrower_nuke_enemy_desc,Makes a projectile turn the creatures it hits into living... Nuke throwers?!?!!,"Снаряд превращает существ, с которыми сталкивается, в... метателей ядерного оружия?!?!!",,,,,,,,,,,,
spell_mocreep_holy_orb_barrage_name,Holy Orb Barrage,Шквал священных сфер,,,,,,,,,,,,
spell_mocreep_holy_orb_barrage_desc,Casts a barrage of 7 holy orbs. Also has some magical properties...,Вызывает шквал из 7 святых шаров. Также обладает некоторыми магическими свойствами...,,,,,,,,,,,,
spell_mocreep_cursed_orb_barrage_name,Cursed Orb Barrage,Шквал проклятых сфер,,,,,,,,,,,,
spell_mocreep_cursed_orb_barrage_desc,Casts a barrage of 7 cursed orbs. Has some noticably destructive properties.,Вызывает шквал из 7 проклятых шаров. Обладает заметными разрушительными свойствами.,,,,,,,,,,,,
spell_mocreep_giga_bomb_name,Giga Bomb,Большая бомба,,,,,,,,,,,,
spell_mocreep_giga_bomb_desc,Explosion!!,Бум!!,,,,,,,,,,,,
spell_mocreep_aqua_mine_name,Aqua Mine,Водяная мина,,,,,,,,,,,,
spell_mocreep_aqua_mine_desc,Creates an explosive Aquamine with subtle homing properties.,Создёет взрывоопасную водяную мину с тонкими свойствами самонаведения.,,,,,,,,,,,,
spell_mocreep_mass_materia_conversion_name,Mass Materia Conversion,Массовое преобразование материалов,,,,,,,,,,,,
spell_mocreep_mass_materia_conversion_desc,Cave quid volunt,Cave quid volunt,,,,,,,,,,,,
spell_mocreep_bungal_shift_name,Fungal Shift,Грибковое смещение,,,,,,,,,,,,
spell_mocreep_bungal_shift_desc,Cave quid volunt                 ,Cave quid volunt                 ,,,,,,,,,,,,
spell_mocreep_musical_proj_name,Musical Strike,Музыкальный удар,,,,,,,,,,,,
spell_mocreep_musical_proj_desc,"Fires a powerful musical attack, careful not to loose your creativity","Стреляет мощной музыкальной атакой, стараясь не потерять свой творческий потенциал",,,,,,,,,,,,
spell_mocreep_musical_proj_trig_name,Musical Strike with trigger,Музыкальный удар с активацией,,,,,,,,,,,,
spell_mocreep_musical_proj_trig_desc,"Fires a powerful musical attack, casts another spell upon collision","Стреляет мощной музыкальной атакой, при столкновении вызывает другое заклинание",,,,,,,,,,,,
spell_mocreep_reverberation_name,Reverberation,Реверберация,,,,,,,,,,,,
spell_mocreep_reverberation_desc,"Creates a reverberation of sound in the air, slicing anything nearby to pieces.","Создаёт отзвук в воздухе, разрывая на куски всё, что находится поблизости.",,,,,,,,,,,,
spell_mocreep_bite_name,Bite,Укус,,,,,,,,,,,,
spell_mocreep_bite_desc,...Magic?,...Волшебство?,,,,,,,,,,,,
spell_mocreep_bungal_shift_hyper_name,Hyper Fungal Shift,Супергрибковое смещение,,,,,,,,,,,,
spell_mocreep_bungal_shift_hyper_desc,Insane....                      ,Безумие....                      ,,,,,,,,,,,,
spell_mocreep_summon_worm_name,Summon Jättimato,Призыв яттимато,,,,,,,,,,,,
spell_mocreep_summon_worm_desc,Dangerous....                      ,Опасно....                      ,,,,,,,,,,,,
spell_mocreep_bite_crit_name,Bloody Bite,Кровавый укус,,,,,,,,,,,,
spell_mocreep_bite_crit_desc,Magic...............................?       ,Волшебство...............................?       ,,,,,,,,,,,,
spell_mocreep_spells_to_sorako_name,Spells to Cats,Превращение в кошек,,,,,,,,,,,,
spell_mocreep_spells_to_sorako_desc,Transforms every projectile currently in the air into Cats; a cute idea.,"Превращает каждый снаряд, находящийся в воздухе, в кошку. Милая идея.",,,,,,,,,,,,
spell_mocreep_split_shot_name,Split Shot,Разделяющийся выстрел,,,,,,,,,,,,
spell_mocreep_split_shot_desc,50% chance to duplicate the next cast.,50% шанс на удвоение при следующем заклинании.,,,,,,,,,,,,
spell_mocreep_status_drunk_name,Mass Drunk,Массовое пьянство,,,,,,,,,,,,
spell_mocreep_status_drunk_desc,Affects every creature in a large radius with a drunken curse.,Проклятие пьянства действует на каждое существо в большом радиусе.,,,,,,,,,,,,
spell_mocreep_status_wet_name,Mass Wet,Массовая влага,,,,,,,,,,,,
spell_mocreep_status_wet_desc,Soaks every creature in a large radius with a magical wetness.,Пропитывает волшебной влагой всех существ в большом радиусе.,,,,,,,,,,,,
spell_mocreep_status_fire_name,Mass Fire,Массовый огонь,,,,,,,,,,,,
spell_mocreep_status_fire_desc,Burns every creature in a large radius with a magical fire.,Сжигает волшебным огнём всех существ в большом радиусе.,,,,,,,,,,,,
spell_mocreep_status_urine_name,Mass Jarate,Массовое Банкате,,,,,,,,,,,,
spell_mocreep_status_urine_desc,Douses every creature in a large radius with a magical jarate.,Обливает всех существ в большом радиусе волшебным Банкате.,,,,,,,,,,,,
spell_mocreep_status_polymorph_name,Mass Polymorph,Массовый полиморфизм,,,,,,,,,,,,
spell_mocreep_status_polymorph_desc,Afflicts every creature in a large radius with a magical polymorphine.,Поражает всех существ в большом радиусе волшебным полиморфизмом.,,,,,,,,,,,,
setting_mocreep_catimmortality_name,Cat immortality,Бессмертие кошек,,,,,,,,,,,,
setting_mocreep_catimmortality_desc,Are cats immortal?,Являются ли кошки бессмертными?,,,,,,,,,,,,
setting_mocreep_fairyimmortality_name,Fairy immortality,Бессмертие фей,,,,,,,,,,,,
setting_mocreep_fairyimmortality_desc,Are Keiju immortal?,Являются ли Кейдзю бессмертными?,,,,,,,,,,,,
setting_mocreep_motd_name,Message of the Day,Сообщение дня,,,,,,,,,,,,
setting_mocreep_motd_desc,Will a MOTD be displayed at the start of each run? \nMay contain bonus hints for various secrets.,Будет ли сообщение дня отображаться в начале каждого забега? \nМожет содержать бонусные подсказки с различными секретами.,,,,,,,,,,,,
setting_mocreep_seasonal_name,Seasonal Events,Сезонные события,,,,,,,,,,,,
setting_mocreep_seasonal_desc,"Are seasonal events enabled? \nFor example, Halloween, More Creep's Birthday, etc.","Включены ли сезонные события? \nНапример, Хэллоуин, день рождения мода More Creep и т.д.",,,,,,,,,,,,
setting_mocreep_bosshealthmultiplier_name,Boss Health Multiplier,Множитель здоровья босса,,,,,,,,,,,,
setting_mocreep_bosshealthmultiplier_desc,"Multiply all Bosses health by this much. \nFor those who seek extra durable opponents. \nDoes not affect Kolmisilma \nMinibosses will also have their health boosted by a partial amount. \nThis can be changed mid-run but may not update for all bosses, remember to restart after updating the multiplier.\n \nFor Modders: \nIf your mod isn't listed in the compatibility section of the mod page, \nthis likely won't boost it, you'll need to add a lua component to your bosses. \nDo not hesitate to contact me for instructions or help if needed. \nIt would be easiest for me to respond to you on discord, Conga Lyne#2452","Умножает здоровье всех боссов на это количество. \nДля тех, кто ищет особо стойких противников. \nНе влияет на Колмисильмяна \nМини-боссы также будут иметь частичное увеличение здоровья. \nЭто можно изменить в середине игры, но не для всех боссов, не забудьте перезапустить игру после обновления множителя.\n \nДля создателей модов: \nЕсли ваш мод не указан в разделе совместимости на странице модов, \nэто скорее всего не поможет, вам придётся добавить lua компонент к вашим боссам. \nНе стесняйтесь обращаться ко мне за инструкциями или помощью, если это необходимо. \nМне будет проще всего ответить вам в discord, Conga Lyne#2452.",,,,,,,,,,,,
setting_mocreep_compatmode_conjurer_name,Conjurer extra Compatibility mode,Режим совместимости: Conjurer,,,,,,,,,,,,
setting_mocreep_compatmode_conjurer_desc,"Some people may have issues with this mod not loading into Conjurer properly. \nIf this happens, try enabling this option and loading conjurer again. \n \nThis option is on by default but can be turned off if you wish to \nhave the pixel scenes & bosses appear in conjurer worlds. \n \nIf Conjurer still fails to load despite having this turned on, although unlikely, \nit may be a mod compatibility issue with something else, \nperhaps try disabling mods to find the troublesome one. \n \nIf nothing else works please let me know to by filing a bug report to me. \nIt would be easiest for me to reach & investigate your report at the discord link below: \nhttps://discord.gg/gtyGnv8Pxk","У некоторых людей могут возникнуть проблемы с тем, что этот мод не загружается вместе с модом Conjurer должным образом. \nЕсли это произошло, попробуйте включить этот параметр и загрузить Conjurer снова. \n \nЭта опция включена по умолчанию, но может быть выключена, если вы хотите, чтобы пиксельные сцены и боссы появлялись в мирах Conjurer. \n \nЕсли Conjurer всё ещё не загружается, несмотря на включение этого параметра, хотя это маловероятно, \nможет быть проблема совместимости мода с чем-то другим, \nвозможно, попробуйте отключить все моды поочерёдно, чтобы найти проблемный. \nЕсли ничего не помогает, пожалуйста, сообщите мне об этом, написав сообщение об ошибке. \nМне будет проще всего связаться и изучить ваше сообщение по ссылке на discord: \nhttps://discord.gg/gtyGnv8Pxk",,,,,,,,,,,,
setting_mocreep_compatmode_spell_evolution_name,Spell Evolution Compatibility Mode,Режим совместимости: Spell Evolution,,,,,,,,,,,,
setting_mocreep_compatmode_spell_evolution_desc,"Turn this setting on if you're playing with the Spell Evolution mod to fix it.\n \nAs far as I can tell, a bug in Spell Evolutions causes it to break if a modded spell \n Uses translation keys for their name and/or description. \n \nUnfortunately there's nothing I can do about this as it's not my mod, \nand I have no intention to remove the translation keys \nas I hope to use them one day in the event \nI'm offered a translation for the mod to another language. \nHowever, I can put a setting in to optionally let you use the spells without \ntranslation keys to get around the issue.","Включите этот параметр, если вы играете с модом Spell Evolution, чтобы исправить ошибки.\n \nНасколько я могу судить, ошибка в Spell Evolutions приводит к тому, что он ломается, если модифицированное заклинание \n использует ключи перевода для своего имени и/или описания. \n \nК сожалению, я ничего не могу с этим поделать, поскольку это не мой мод, \n и у меня нет намерения удалять ключи перевода, \n поскольку я надеюсь использовать их однажды в случае, если мне предложат перевести мод на другие языки. \Однако, я могу сделать настройку, которая позволит вам использовать заклинания без ключей перевода, чтобы обойти эту проблему.",,,,,,,,,,,,
status_mocreep_duckcurse_name,Duck Curse,Утиное проклятие,,,,,,,,,,,,
status_mocreep_duckcurse_desc,Their Quacky visions haunt you,Их утиные взгляды преследуют вас,,,,,,,,,,,,
status_mocreep_manadrain_name,Mana Degradation,Разложение маны,,,,,,,,,,,,
status_mocreep_manadrain_desc,You are loosing Mana Rapidly!!,Вы стремительно теряете ману!!!,,,,,,,,,,,,
status_mocreep_transmute_name,Unstable Transmutation,Нестабильная трансмутация,,,,,,,,,,,,
status_mocreep_transmute_desc,Your being is transmuting nearby matter uncontrollably!,Ваша сущность бесконтрольно превращается близлежащую материю!,,,,,,,,,,,,
DEVTESTDEVTESTDEVTEST,"=====================================================================================================================================================================================================================================================",,,,,,,,,,,,,
item_mocreep_essence_fungus_name,"Essence of Fungus",,,,,,,,,,,,,
item_mocreep_essence_fungus_desc,"Your very being is infecting the environment around it!",,,,,,,,,,,,,
sign_mocreep_welcome_hint,"Hello and Welcome to More Creeps & Weirdos! \nAlthough this may seem inconvinent, please take a moment to view the mod settings page in Options > Mod Settings. \nSome mods need compatibility modes enabled, I did I best but some things are outside my control sadly. Other than that, go nuts and have fun <3",,,,,,,,,,,,,
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


if modCompatibilitySpellEvolutions == true then
  local currentLang = GameTextGetTranslatedOrNot("$current_language")
  if currentLang == "русский" then
    ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mo_creeps/files/actions_untranslated_RUSSIAN.lua" )
  else
    ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mo_creeps/files/actions_UNTRANSLATED.lua" )
  end
else
  ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mo_creeps/files/actions.lua" )
end



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
      --dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/boss_spawn_list_NGPLUS.lua" )
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/blob_cave_spawn_list.lua" )
      --dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/blob_cave_spawn_list_NGPlus.lua" )
    elseif ModIsEnabled("noitavania") then
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list_noitavania.lua" )
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/blob_cave_spawn_list_noitavania.lua" )
    else
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list.lua" )
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list_NGPLUS.lua" )
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/blob_cave_spawn_list.lua" )
      dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/blob_cave_spawn_list_NGPlus.lua" )
    end
  end
else
  if ModIsEnabled("purgatory") then
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/boss_spawn_list.lua" )
    --dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/boss_spawn_list_NGPLUS.lua" )
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/blob_cave_spawn_list.lua" )
    --dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/blob_cave_spawn_list_NGPlus.lua" )
  elseif ModIsEnabled("noitavania") then
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list_noitavania.lua" )
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/blob_cave_spawn_list_noitavania.lua" )
  else
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list.lua" )
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/boss_spawn_list_NGPLUS.lua" )
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/blob_cave_spawn_list.lua" )
    dofile_once( "mods/mo_creeps/files/scripts/biomes/boss_spawns/blob_cave_spawn_list_NGPlus.lua" )
  end
end



--Spawns statues in the trophy room

--This is a infinite rat duplication exploit, and I know why, but it takes time to fix it the proper way..
--Too tired right now
if ModIsEnabled("purgatory") then
  ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/statue_room_populator.lua" ) 
else
  ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/statue_room_populator.lua" ) 
end




--Modded compatibility

--New Biomes & Secrets
if ModIsEnabled("New Biomes + Secrets") then

    --Normal Spawns
	ModLuaFileAppend( "data/scripts/biomes/SEWER.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/SEWER_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/radioactive_pits.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/radioactive_pits_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/gascave_left.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/gascave_middle_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/gascave_middle.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/gascave_middle_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/gascave_right.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/gascave_middle_populator.lua" )
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
	ModLuaFileAppend( "mods/sewer_updated/files/sewer_biome/sewer.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/SEWER_populator.lua" )

    --Global Spawns
	ModLuaFileAppend( "mods/sewer_updated/files/sewer_biome/sewer.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )

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


--Noitavania, inserts enemies into various biome pools
if ModIsEnabled("noitavania") then

    --Normal Spawns
	ModLuaFileAppend( "data/scripts/biomes/nv_hills.lua", "mods/mo_creeps/files/scripts/biomes/hills_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_volcano/inside.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/volcano_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/sewer.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/SEWER_populator.lua" )
	--ModLuaFileAppend( "data/scripts/biomes/nv_cursed.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/cursed_populator.lua" ) -- I don't have any enemies which would fit this area as of now
  ModLuaFileAppend( "data/scripts/biomes/nv_space.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/space_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/landing.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/LANDING_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/outpost.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/outpost_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_castle/maze.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/castle_maze_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_castle/main.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/castle_main_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_radioactive.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/nv_radioactive_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/snowcastle_cavern.lua", "mods/mo_creeps/files/scripts/biomes/nv_snowcastle_cavern_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_gascave/left.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/gascave_middle_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_gascave/middle.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/gascave_middle_populator.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_gascave/right.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/gascave_middle_populator.lua" )

    --Global Spawns
	ModLuaFileAppend( "data/scripts/biomes/nv_hills.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/nv_volcano/inside.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/sewer.lua", "mods/mo_creeps/files/scripts/biomes/global_populator.lua" )
	ModLuaFileAppend( "data/scripts/biomes/nv_cursed.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_space.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  ModLuaFileAppend( "data/scripts/biomes/landing.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
	ModLuaFileAppend( "data/scripts/biomes/outpost.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_castle/maze.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_castle/main.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_radioactive.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  -- ModLuaFileAppend( "data/scripts/biomes/snowcastle_cavern.lua", "mods/mo_creeps/files/scripts/biomes/nv_snowcastle_cavern_populator.lua" ) -- no creature spawns to append to
  ModLuaFileAppend( "data/scripts/biomes/nv_gascave/left.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_gascave/middle.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )
  ModLuaFileAppend( "data/scripts/biomes/nv_gascave/right.lua", "mods/mo_creeps/files/scripts/biomes/global_populator_smallonly.lua" )


end




-- Conjurer Mod, adds enemies, buildings and wands to a custom tab
if ModIsEnabled("raksa") then
  ModLuaFileAppend( "mods/raksa/files/scripts/lists/entity_categories.lua", "mods/mo_creeps/files/scripts/mod_compatibility/conjurer_populator.lua" )
end



--Worse Enemies, Overrides Hisii Minecart visuals & attacks to match those from the mod
if ModIsEnabled("worse_enemies") then

  local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
  local content = ModTextFileGetContent("data/entities/animals/hisii_minecart_tnt.xml")
  local xml = nxml.parse(content)
  xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_worse_tnt.xml"
  xml:first_of("Base"):first_of("AnimalAIComponent").attr.attack_ranged_entity_file = "data/entities/projectiles/cocktail_gunpowder.xml"
  ModTextFileSetContent("data/entities/animals/hisii_minecart_tnt.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/hisii_minecart.xml")
  local xml = nxml.parse(content)
  xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_worse.xml"
  xml:first_of("Base"):first_of("AnimalAIComponent").attr.attack_ranged_entity_file = "data/entities/projectiles/meteor_green.xml"
  xml:add_child(nxml.parse([[
    <SpriteComponent 
      _tags="character" 
      image_file="mods/mo_creeps/files/enemies_gfx/hisii_minecart_worse_emissive.xml"
      offset_x="0"
      offset_y="0"
      alpha="1" 
      emissive="1"
      additive="1">
	</SpriteComponent>
]]))
  ModTextFileSetContent("data/entities/animals/hisii_minecart.xml", tostring(xml))

  --Bat Illusion Fix
  local content = ModTextFileGetContent("data/entities/animals/psychotic/bat.xml")
  local xml = nxml.parse(content)
  xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "data/enemies_gfx/worse/bat.xml"
  ModTextFileSetContent("data/entities/animals/psychotic/bat.xml", tostring(xml))

end





-- Custom Perk support injection

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
if ModIsEnabled("raksa") == false then
  local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_welcome_hint" )
  if motdSetting == true then
    if ModIsEnabled("purgatory") then
      dofile_once( "mods/mo_creeps/files/scripts/misc/motd_list_purgatory.lua" )
    else
      dofile_once( "mods/mo_creeps/files/scripts/misc/motd_list.lua" )
    end
  elseif flag_status == false then
    if ModIsEnabled("purgatory") then
      dofile_once( "mods/mo_creeps/files/scripts/misc/welcome_hint_purgatory.lua" )
    else
      dofile_once( "mods/mo_creeps/files/scripts/misc/welcome_hint.lua" )
    end
  end
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

--Same thing but for weak hisii
local content = ModTextFileGetContent("data/entities/animals/shotgunner.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
    <LuaComponent
        script_source_file="mods/mo_creeps/files/scripts/buildings/hisii_minecart_hopin_weak.lua"
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



-- Stendari magic wetness fix
local content = ModTextFileGetContent("data/entities/animals/firemage.xml")
local xml = nxml.parse(content)
local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
attrs.materials_that_damage = attrs.materials_that_damage .. ",water_fading"
attrs.materials_how_much_damage = attrs.materials_how_much_damage .. ",0.0005"
ModTextFileSetContent("data/entities/animals/firemage.xml", tostring(xml))

-- Gazer magic wetness fix
local content = ModTextFileGetContent("data/entities/animals/gazer.xml")
local xml = nxml.parse(content)
local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
attrs.materials_that_damage = attrs.materials_that_damage .. ",water,water_fading"
attrs.materials_how_much_damage = attrs.materials_how_much_damage .. ",0.0005,0.0005"
ModTextFileSetContent("data/entities/animals/gazer.xml", tostring(xml))

-- Burning Skull magic wetness fix
local content = ModTextFileGetContent("data/entities/animals/fireskull.xml")
local xml = nxml.parse(content)
local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
attrs.materials_that_damage = attrs.materials_that_damage .. ",water_fading"
attrs.materials_how_much_damage = attrs.materials_how_much_damage .. ",0.0005"
ModTextFileSetContent("data/entities/animals/fireskull.xml", tostring(xml))

-- Spit Monster magic wetness fix
local content = ModTextFileGetContent("data/entities/animals/spitmonster.xml")
local xml = nxml.parse(content)
local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
attrs.materials_that_damage = attrs.materials_that_damage .. ",water,water_fading"
attrs.materials_how_much_damage = attrs.materials_how_much_damage .. ",0.0005,0.0005"
ModTextFileSetContent("data/entities/animals/spitmonster.xml", tostring(xml))





--Boss health multiplier insertion
dofile_once( "mods/mo_creeps/files/scripts/mod_compatibility/boss_health_multiplier_plug.lua" )


  









--Master of Masters master spawner insertion, allows him to spawn Master of Mallards & Master of Immortality too.. He doesn't appreciate Master of Trolling too much to invite him in
--Note, this has been moved to a file override






-- Seasonal
local year, month, day = GameGetDateAndTimeLocal()


if seasonalSetting == true then

  -- Halloween Event
  if ( month == 10 ) and ( day >= 22 ) then
    ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Coal Mine, first area, goodluck on your run
    ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Coalmine but to the west side near damp cave
    ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Coal Pits, area 2
    ModLuaFileAppend( "data/scripts/biomes/pyramid.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/halloween.lua" ) --Presumably everything below the entrance to the pyramid

    local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
    local content = ModTextFileGetContent("data/entities/animals/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_halloween.xml"
    xml:first_of("Base"):first_of("DamageModelComponent").attr.ragdoll_filenames_file = "mods/Mo_Creeps/files/ragdolls/poring_halloween/filenames.txt"
    ModTextFileSetContent("data/entities/animals/poring.xml", tostring(xml))

    local content = ModTextFileGetContent("data/entities/animals/coal_mines/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_halloween_weak.xml"
    xml:first_of("Base"):first_of("DamageModelComponent").attr.ragdoll_filenames_file = "mods/Mo_Creeps/files/ragdolls/poring_halloween_weak/filenames.txt"
    ModTextFileSetContent("data/entities/animals/coal_mines/poring.xml", tostring(xml))

    local content = ModTextFileGetContent("data/entities/animals/psychotic/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_halloween.xml"
    xml:first_of("Base"):first_of("DamageModelComponent").attr.ragdoll_filenames_file = "mods/Mo_Creeps/files/ragdolls/poring_halloween/filenames.txt"
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

    if ModIsEnabled("worse_enemies") then
      local content = ModTextFileGetContent("data/entities/animals/hisii_minecart.xml")
      local xml = nxml.parse(content)
      xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_worse_smissmass.xml"
      ModTextFileSetContent("data/entities/animals/hisii_minecart.xml", tostring(xml))
    else
      local content = ModTextFileGetContent("data/entities/animals/hisii_minecart.xml")
      local xml = nxml.parse(content)
      xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_smissmass.xml"
      ModTextFileSetContent("data/entities/animals/hisii_minecart.xml", tostring(xml))
    end

    local content = ModTextFileGetContent("data/entities/animals/hisii_minecart_weak.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_weak_smissmass.xml"
    ModTextFileSetContent("data/entities/animals/hisii_minecart_weak.xml", tostring(xml))

    local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
    local content = ModTextFileGetContent("data/entities/animals/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_santa.xml"
    ModTextFileSetContent("data/entities/animals/poring.xml", tostring(xml))

    local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
    local content = ModTextFileGetContent("data/entities/animals/coal_mines/poring.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/poring_santa_weak.xml"
    ModTextFileSetContent("data/entities/animals/coal_mines/poring.xml", tostring(xml))

  end

  -- Birthday Event
  -- Update to be centered on 21/07/2022, this is when the first enemy was created and development officially began. Should be a fair trade off between not being the official release date but also not clashing with Halloween
  if ( month == 7 ) and (( day >= 20 ) and ( day <= 22 )) then
    ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" ) --Coal Mine, first area, goodluck on your run
    ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" ) --Coalmine but to the west side near damp cave
    ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" ) --Coal Pits, area 2
    ModLuaFileAppend( "data/scripts/biomes/snowcave.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" ) --Presumably everything below the entrance to the pyramid
    ModLuaFileAppend( "data/scripts/biomes/snowcastle.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" )
    ModLuaFileAppend( "data/scripts/biomes/desert.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" )
    ModLuaFileAppend( "data/scripts/biomes/rainforest.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" )
    ModLuaFileAppend( "data/scripts/biomes/vault.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" )
  end

  --Update global_populator & global_populator_small too, wand tinkering crystal

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
