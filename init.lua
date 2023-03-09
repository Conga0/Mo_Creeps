dofile("data/scripts/lib/utilities.lua")

local modCompatibilityConjurer = ModSettingGet( "mo_creeps.mod_compat_mode_conjurer" )
local modCompatibilitySpellEvolutions = ModSettingGet( "mo_creeps.mod_compat_mode_spell_evolution" )
local motdSetting = ModSettingGet( "mo_creeps.motd_setting" )
local seasonalSetting = ModSettingGet( "mo_creeps.seasonal_events" )
local spoopyGFXSetting = ModSettingGet( "mo_creeps.spoopy_graphics" )

local seasonalForced_AprilFools = ModSettingGet( "mo_creeps.seasonal_events_forced_april_fools" )
local seasonalForced_Birthday = ModSettingGet( "mo_creeps.seasonal_events_forced_birthday" )
local seasonalForced_Halloween = ModSettingGet( "mo_creeps.seasonal_events_forced_halloween" )
local seasonalForced_Smissmass = ModSettingGet( "mo_creeps.seasonal_events_forced_smissmass" )

local capeSetting = ModSettingGet( "mo_creeps.secret_golden_cape" )

--Debug flag removals, be sure to remove before release!!!
--RemoveFlagPersistent( "mocreeps_card_unlocked_secret_knowledge_of_kings" )
--RemoveFlagPersistent( "mocreeps_card_unlocked_secret_knowledge_of_kings_spell" )

--Spawn Bosses

--This was a coding marathon and a half, huge shoutouts to Horscht for the help on this one.
--And Zathers for making this seductive lua file
--Note: This has been moved lower down for cleaner organisation & implementing mod compatibility




-- Spell Unlock Fixes
-- If someone attains a spell through another mod, twitch integration, etc, this is just to make sure they aren't getting unlocks they shouldn't.
-- They'll still get the spell, it just won't be added to their permanent record
-- Rat bite isn't "verified" because it's a funny spell

do  -- Protect spell progress in case of accidental unlocks
  for _, entry in ipairs({
    "divinebeing",
    "boss_toxic_worm",
    "musical_boss",
    "blob_boss",
    "fire_lukki",
    "cat_secret",
  }) do
    local progressflag = "mocreeps_card_unlocked_" .. entry
    if HasFlagPersistent( progressflag ) then
      AddFlagPersistent( progressflag .. "_spell" )
    else
      RemoveFlagPersistent( progressflag .. "_spell" )
    end
  end
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
perk_mocreeps_ghostly_vision,Ghostly Vision,Призрачное зрение,,,,,,,,霊感,,,,
perk_mocreeps_ghostly_vision_description,You can see things which aren't there.. Without assistance.,"Вы можете видеть вещи, которых тут нет... Без посторонней помощи.",,,,,,,,見てはならないものが見えるようになる,,,,
perk_mocreeps_ghostly_vision,Ghostly Vision,Призрачное зрение,,,,,,,,霊感,,,,
perk_mocreeps_ghostly_vision_description,You can see things which aren't there.. Without assistance.,"Вы можете видеть вещи, которых тут нет... Без посторонней помощи.",,,,,,,,見てはならないものが見えるようになる,,,,
perk_mocreeps_rage_aura,Enraging Aura,Раздражающая аура,,,,,,,,オラオラオーラ,,,,
perk_mocreeps_rage_aura_description,Creatures are sent into a blind rage by your presence.,От вашего присутствия существа впадают в слепую ярость.,,,,,,,,周囲の生物が激怒するようになる。,,,,
book_mocreeps_divine_liquid,Tablet of Apotheosis,Скрижаль Апофеоза,,,,,,,,Tablet of Apotheosis,,,,
book_mocreeps_divine_liquid_description,"Long have been the days since the universe was in union. \nWhen Slime was no different from above and below was no different from slime. \nSome species have adapted to these changes however, excessively, and became attuned to the pinnacles and depths of this world. \nThey must distance themselves with truly divine purpose.","Давно прошли те дни, когда вселенная была в единстве. \nКогда слизь не отличалась от верха, а низ не отличался от слизи. \nНекоторые виды, однако, чрезмерно приспособились к этим изменениям и стали сонастроены с вершинами и глубинами этого мира. \nОни должны отдаляться с истинно божественной целью.",,,,,,,,"Taiko no mukashi, sekai wa hitotsu datta.\nSLIME mo mata, sekai no subete to onajiku, SLIME de atta.\nDaga, hageshiku henka shita mono ga ita.\nSore wa konoyo no takami to fukami to hitotsu to nari,\nSeinaru makoto no michi wo suteta noda.",,,,
book_mocreeps_materia_conversion,Alchemist's Notes,Записи алхимика,,,,,,,,Alchemist's Notes,,,,
book_mocreeps_materia_conversion_description,"Transmutation.. Materia Conversion. \nFor years I've dedicated my life to this art, only to foolishly trick myself. \nFor years I thought Materia Conversion could only be used on solid matter, \nBut only now in my last few days I've come to learn it can be harnessed on magic as well. \nI can only hope the fruits of my labour will not forgotten.","Трансмутация. Превращение материи. \nГодами я посвящал свою жизнь этому искусству, но только для того, чтобы обмануть самого себя. \nДолгие годы я думал, что преобразование материи можно использовать только в твёрдой материи, \nНо только теперь, в последние дни, я узнал, что его можно использовать и в магии. \nОстаётся надеяться, что плоды моего труда не будут забыты.",,,,,,,,"Touka Koukan, sore wa Busshitsu wo henkan suru waza.\nHajime watashi wa sono waza wo waratta.\nYagate, Kotai no henkan wo shitta.\nDaga, Mahou to no kumiawase wo shitta toki,\nWatashi wa hajimete onore ga mi wo sasageta Waza no omomi wo shitta no de aru.",,,,
book_mocreeps_materia_conversion_spell,Alchemist's Notes,Записи алхимика,,,,,,,,Alchemist's Notes,,,,
book_mocreeps_materia_conversion_spell_description,Conversion.. \nRemember these words.... \nFungus \nWorm \nRat \nSpark \nStatus,Превращение... \nЗапомните эти слова.... \nГрибок \nЧервь \nКрыса \nИскровая \nМассовая,,,,,,,,Kono kotoba wo oboete oku youni...\nKinoko \nWorm \nNezumi \nHibana \nSutētasu,,,,
book_mocreeps_trophy_room,Alchemist's Notes,Записи алхимика,,,,,,,,Alchemist's Notes,,,,
book_mocreeps_trophy_room_description,"I have come to learn this Tree was deemed unfitting of.. certain.. accomplishments by the gods. \nCross the lava, descend where you would not normal. \nThere they will humour you.","Я узнал, что боги сочли это Дерево непригодным для... определённых... свершений. \nПересеките лаву, спуститесь туда, куда обычно не спускаются. \nТам они будут над вами насмехаться.",,,,,,,,"Kono ki no hoka nimo shiren no shoumei wa aru to kiku.\nSore wa yougan no mizuumi wo koe, kabe ni sotte orite iku to aru souda.",,,,
book_mocreeps_trophy_room_description_purgatory,"I have come to learn this Tree was deemed unfitting of.. certain.. accomplishments by the gods. \nSpelunk east before you visit their place of worship, cross the fungus, holding the ceiling dear. \nThere they will humour you.","Я узнал, что боги сочли это Дерево непригодным для... определённых... свершений. \nСпешите на Восток, прежде чем посетить место их поклонения, перейдите по грибку, держась за потолок. \nТам они будут над вами насмехаться.",,,,,,,,"Kono ki no hoka nimo shiren no shoumei wa aru to kiku.\nSore wa kinoko no doukutsu wo higashi ni mukai, ue wo miru to aru souda.",,,,
mat_cloth,Cloth,Ткань,,,,,,,,布,,,,
book_mocreeps_cat_rat,Cat Lover's Notes,Записи любителя кошек,,,,,,,,Cat Lover's Notes,,,,
book_mocreeps_cat_rat_description,My Cats seem scared of normal rats.. \nBut have an irresistible hate towards magical rats for some reason. \nIt's kind of cute.. But I can't brush away the feeling they distance themselves with truly divine purpose...,"Мои кошки боятся обычных крыс... \nНо почему-то испытывают непреодолимую ненависть к магическим крысам. \nЭто даже мило... Но я не могу избавиться от ощущения, что они отдаляются от меня с поистине божественной целью...",,,,,,,,"Uchi no neko wa, naze nezumi wo kowagaru no darou.\nKawaii no wa machigai nai ga, moshika suru to...\nMakoto no michi kara nogare you to shite iru no kamo shirenai.",,,,
book_mocreeps_motd,Message of the Day,Сообщение дня,,,,,,,,今日のひとこと,,,,
book_mocreeps_motd_description,Message of the Day \nYou shouldn't be reading this.,Сообщение дня \nВы не должны были это прочесть.,,,,,,,,今日のひとこと\nメッセージは　でないはずだよ\nでたら　おしえてね,,,,
book_mocreeps_motd_description_birthday,Message of the Day \nHappy Birthday More Creeps & Weirdos!,"Сообщение дня \nПоздравлем с днём рождения, More Creeps & Weirdos!",,,,,,,,今日のひとこと\n今日はMODのリリース記念日！ハッピーバースデー！,,,,
book_mocreeps_motd_description_halloween,Message of the Day \nHappy Halloween!,Сообщение дня \nСчастливого Хэллоуина!,,,,,,,,今日のひとこと\nハッピーハロウィン！,,,,
book_mocreeps_motd_description_smissmass,Message of the Day \nHappy Noitmass!,Сообщение дня \nСчастливого Нойтждества!,,,,,,,,今日のひとこと\nメリークリスマス！,,,,
book_mocreeps_motd_description_new_year,"Happy new year! \nThankyou for playing, although you'll only read this once a year, I mean it everytime you play. \nI'm happy seeing people enjoy my projects, and I'm happy making them myself, so sincerely, thankyou. - Conga Lyne.",,,,,,,,,今日のひとこと\nハッピーニューイヤー！\nこのMODをプレイしてくれてありがとう。このメッセージは年に1回しか見られないけどね。\n本当はプレイしてくれる度に言いたいんだけど、それは難しそう。\nでも、これを読んでくれているということは、きっとキミがこのMODを気に入ってくれてるってことだと思う。\n改めて、いつもありがとう。作者より。,,,,
book_mocreeps_motd_description_001,Message of the Day \nAlso try Worse Enemies!,Сообщение дня \nТакже попробуйте мод Worse Enemies!,,,,,,,,今日のひとこと\n作者はWorse Enemies MODもおすすめしているらしい。,,,,
book_mocreeps_motd_description_002,Message of the Day \nHobos love Material Donations,Сообщение дня \nБродяги любят пожертвования в виде денег,,,,,,,,今日のひとこと\n同情するなら金をくれ！,,,,
book_mocreeps_motd_description_003,Message of the Day \nBlood is Fuel.,Сообщение дня \nКровь - это топливо.,,,,,,,,今日のひとこと\n血、血、血。,,,,
book_mocreeps_motd_description_004,Message of the Day \nAlso try Copis Things!,Сообщение дня \nТакже попробуйте мод Copis Things!,,,,,,,,今日のひとこと\n作者はCopis Thingsもおすすめしているらしい。,,,,
book_mocreeps_motd_description_005,Message of the Day \nMeow. Meow. Meow. Meow. Meow.,Сообщение дня \nМяу. Мяу. Мяу. Мяу. Мяу.,,,,,,,,今日のひとこと\nにゃーん。,,,,
book_mocreeps_motd_description_006,Message of the Day \nAlso try Shellcore Command Remastered!,Сообщение дня \nТакже попробуйте мод Shellcore Command Remastered!,,,,,,,,今日のひとこと\n作者はShellcore Command Remasteredもおすすめしているらしい。,,,,
book_mocreeps_motd_description_007,Message of the Day \nMore Creeps & Weirdos successfully initialised.,Сообщение дня \nМод More Creeps & Weirdos успешно инициализирован.,,,,,,,,今日のひとこと\nピピピ……MODノ　導入二　成功　シマシタ……,,,,
book_mocreeps_motd_description_008,Message of the Day \nHey? Can you hear me?! Get out while you still can!! HURRY.,"Сообщение дня \nЭй? Вы меня слышите?! Уходите, пока ещё не поздно!!! СКОРЕЕ.",,,,,,,,今日のひとこと\nここは俺に任せて先に行け！,,,,
book_mocreeps_motd_description_009,Message of the Day \nAlso try Chemical Curiosities!,Сообщение дня \nТакже попробуйте мод Chemical Curiosities!,,,,,,,,今日のひとこと\n作者はChemical Curiosities MODもおすすめしているらしい。,,,,
book_mocreeps_motd_description_010,Message of the Day \nTired of your cute Cats and bright Fairies dying? \nYou can make them immortal in the settings!.,"Сообщение дня \nУстали от того, что ваши милые коты и яркие феи умирают? \nВы можете сделать их бессмертными в настройках!",,,,,,,,今日のひとこと\nネコと妖精は、設定から無敵にできるらしい。,,,,
book_mocreeps_motd_description_011,Message of the Day \nAmazing.,Сообщение дня \nПотрясающе.,,,,,,,,今日のひとこと\nやば。,,,,
book_mocreeps_motd_description_012,Message of the Day \nI have 7 very important lore related questions.,"Сообщение дня \nУ меня есть 7 очень важных вопросов, связанных с сюжетом игры.",,,,,,,,今日のひとこと\nストーリー周りの質問が7個ぐらいあるんだけど、どうすればいい？,,,,
book_mocreeps_motd_description_013,Message of the Day \nAll code is circular bread approved.,Сообщение дня \nВесь код был одобрен круглым хлебом.,,,,,,,,今日のひとこと\nこのMODのソースコードは……そういえば、丸パンっていいよね,,,,
book_mocreeps_motd_description_014,Message of the Day \nEsoteric Beings fear curses.,Сообщение дня \nЭзотерические существа боятся проклятий.,,,,,,,,今日のひとこと\n神殿にいる黒くてヤバいやつは、呪いに弱いらしい。,,,,
book_mocreeps_motd_description_015,Message of the Day \nCan you hear ghosts? \nWithout assistance?,Сообщение дня \nМожете ли вы слышать призраков? \nБез посторонней помощи?,,,,,,,,今日のひとこと\n霊感ってすごいよね。キミはある？,,,,
book_mocreeps_motd_description_016,Message of the Day \nMasters of Trolling like red outlines. \nThey'll fit right in,Сообщение дня \nМастера троллинга любят красные контуры. \nОни отлично впишутся,,,,,,,,今日のひとこと\n赤い魔術師には気を付けよう。心痛の方じゃないよ！,,,,
book_mocreeps_motd_description_017,Message of the Day \nMusical Beings fear more than just stones....,"Сообщение дня \nМузыкальные существа боятся больше, чем просто камней....",,,,,,,,今日のひとこと\n目には目を、歯には歯を。音楽には音楽を。,,,,
book_mocreeps_motd_description_018,Message of the Day \nKnowledge is scattered around the world.. find it.,Сообщение дня \nЗнания разбросаны по всему миру... найдите их.,,,,,,,,今日のひとこと\n世界の秘密だと？探せ！この世の全てをそこに置いてきた！,,,,
book_mocreeps_motd_description_019,Message of the Day \nLukki Lair porings may not be what they seem..,"Сообщение дня \nРазмышления о логове Лукки могут оказаться не тем, чем кажутся...",,,,,,,,今日のひとこと\nルッキの巣にはヘンな敵がいるから、キミも探してみよう！,,,,
book_mocreeps_motd_description_020,Message of the Day \nThe coldest Magical temple may hold vital treasure. \nJust don't descend.,Сообщение дня \nСамый холодный магический храм может содержать жизненно важные сокровища. \nПросто не спускайтесь.,,,,,,,,今日のひとこと\n魔法の神殿には、宝物が隠されているらしい。,,,,
book_mocreeps_motd_description_021,Message of the Day \nAngelings and Devilings distance themselves.,Сообщение дня \nАнгелинги и Демолинги отдаляются друг от друга.,,,,,,,,今日のひとこと\n空と地獄には、それぞれ対応する敵がいるらしい。,,,,
book_mocreeps_motd_description_022,Message of the Day \nWith truly divine purpose.,Сообщение дня \nС поистине божественной целью.,,,,,,,,今日のひとこと\n神の名にかけて。,,,,
book_mocreeps_motd_description_023,Message of the Day \nPerhaps not every creep is a hostile. \nPerhaps not every crystal is a threat.,"Сообщение дня \nПожалуй, не каждый гад - враг. \Возможно, не каждый кристалл является угрозой.",,,,,,,,今日のひとこと\n敵じゃない生物もいる。,,,,
book_mocreeps_motd_description_024,Message of the Day \nAlso try Congas Cats! ...Just not with More Creeps enabled. \nMore Creeps cats override Congas Cats cats... Update your settings!!!,Сообщение дня \nТакже попробуйте мод Congas Cats! ...только не с включенным модом More Creeps. \nКошки из мода More Creeps будут конфликтовать с кошками мода Congas Cats... Обновите настройки!!!,,,,,,,,Conga’s Catsを導入するときは、このMODを同時に入れないようにしましょう。,,,,
book_mocreeps_motd_description_025,"Message of the Day \nFun Fact, Despite this mod releasing on 24/10/2022, \nthe birthday event occurs in July to avoid clashing with Halloween.","Сообщение дня \nПрикольный факт, несмотря на то, что этот мод вышел 10.24.2022, \n праздник дня рождения происходит в ноябре, чтобы избежать столкновения с Хэллоуином.",,,,,,,,今日のひとこと\n実はこのMODのリリース日は10月24日だが、ハロウィンと重ならないためにゲーム内では7月が記念日という事になっている。,,,,
book_mocreeps_motd_description_026,"Message of the Day \nGoodluck and have fun!. \nIf you're feeling frustrated or stressed, remember to take a break.","Сообщение дня \nУдачи и веселья! \nЕсли вы чувствуете разочарование или стресс, не забудьте сделать перерыв.",,,,,,,,今日のひとこと\n疲れた時は休憩しよう。,,,,
book_mocreeps_motd_description_027,Message of the Day \nI believe in you.,Сообщение дня \nЯ верю в вас.,,,,,,,,今日のひとこと\n期待しているよ、プレイヤーくん。,,,,
book_mocreeps_motd_description_028,Message of the Day \nThe pyramid isn't quite so safe anymore. \nBut may hold divine knowledge.,Сообщение дня \nПирамида уже не так безопасна. \nНо может хранить божественные знания.,,,,,,,,今日のひとこと\nピラミッドはもっと危険になっているらしい。,,,,
book_mocreeps_motd_description_029,"Message of the Day \nCross the sea of lava, Go where you would not normal. \nThere I will humour you.","Сообщение дня \nПересеките море лавы, идите туда, где вы не будете нормальными. \nТам я буду насмехаться над вами.",,,,,,,,今日のひとこと\n溶岩湖の向こうには、普通じゃないものがあるらしい。,,,,
book_mocreeps_motd_description_030,"Message of the Day \nHappy today! Good Now, be happy you're still here!","Сообщение дня \nСчастливый день! Счастливо, будьте счастливы, что вы ещё здесь!",,,,,,,,今日のひとこと\n今日も生きててえらい！,,,,
book_mocreeps_motd_description_031,Message of the Day \nDon't visit the Toxic Worm Nest at 3 am.,Сообщение дня \nНе посещайте гнездо токсичных червей в 3 часа ночи.,,,,,,,,今日のひとこと\nこのMODを午前3時にプレイすることはおすすめしません。特に毒虫の棲家は絶対ダメ。,,,,
item_mocreeps_chest_cursed,Pandora's Chest,Сундук Пандоры,,,,,,,,パンドラの箱,,,,
status_mocreep_magicwet_ui,Magical Wetness,Магическая влажность,,,,,,,,魔法の水,,,,
statusdesc_mocreep_magicwet_ui,Wet clothes protect you from fire.,Мокрая одежда защищает вас от огня.,,,,,,,,びしょ濡れの服が、炎から身を守ってくれている。,,,,
status_mocreep_magicfire_ui,Magical Fire,Волшебный огонь,,,,,,,,魔法の火,,,,
statusdesc_mocreep_magicfire_ui,You're on fire! Find water quickly!,Вы горите! Быстро найдите воду!,,,,,,,,熱い、熱い！水はどこだ！,,,,
status_mocreep_magicurine_ui,Magical Jarate,Волшебный Банкате,,,,,,,,魔法の尿,,,,
statusdesc_mocreep_magicurine_ui,Wet clothes protect you from fire. \nYou sense an increased chance of recieving critical strikes.,Мокрая одежда защищает вас от огня. \nВы чувствуете повышенную вероятность получения критических попаданий по себе.,,,,,,,,びしょ濡れなおかげで燃えないが、クリティカルヒットを受けやすくなっている。,,,,
status_mocreep_magicpolymorph_ui,Magical Polymorph,Волшебный полиморфизм,,,,,,,,変異の魔法,,,,
statusdesc_mocreep_magicpolymorph_ui,You have been polymorphed into a vulnerable sheep!,Вы превратились в беззащитную овцу!,,,,,,,,ヒツジに変身してしまった！,,,,
log_mocreep_reality_mutation_00,YOU SENSE THE REALITY HAS SHIFTED,"ВЫ ЧУВСТВУЕТЕ, ЧТО В РЕАЛЬНОСТИ ЧТО-ТО СМЕСТИЛОСЬ",,,,,,,,世界が姿を変えてしまった！,,,,
log_mocreep_reality_mutation_01,YOU FEEL THE WORLD'S CREATURES HAVE CHANGED,"ВЫ ЧУВСТВУЕТЕ, ЧТО СУЩЕСТВА МИРА ИЗМЕНИЛИСЬ",,,,,,,,生物たちが違った姿に見える！,,,,
log_mocreep_reality_mutation_02,THE WORLD'S LIFE HAS BEEN SHAKEN,ЖИЗНЬ МИРА ПОШАТНУЛАСЬ,,,,,,,,生きとし生けるものが揺さぶられている！,,,,
log_mocreep_reality_mutation_03,YOU SENSE THE PATH OF EVOLUTION HAS CHANGED,"ВЫ ЧУВСТВУЕТЕ, ЧТО ПУТЬ ЭВОЛЮЦИИ ИЗМЕНИЛСЯ",,,,,,,,生命の歴史が書き変わった！,,,,
log_mocreep_reality_mutation_04,YOU FEEL REALITY HAS BEEN ALTERED,"ВЫ ЧУВСТВУЕТЕ, ЧТО В РЕАЛЬНОСТИ ЧТО-ТО ИЗМЕНИЛОСЬ",,,,,,,,現実が何かと入れ替わった！,,,,
log_mocreep_reality_mutation_05,YOU FEEL LIFE IN THE COSMOS HAS SHIFTED,"ВЫ ЧУВСТВУЕТЕ, ЧТО ЖИЗНЬ В КОСМОСЕ СДВИНУЛАСЬ",,,,,,,,宇宙の法則が乱れる！,,,,
material_mocreep_meat_irritating,Irritating Meat,Раздражающее мясо,,,,,,,,ウザい肉,,,,
material_mocreep_meat_decaying,Decaying Meat,Разлагающееся мясо,,,,,,,,朽ちる肉,,,,
material_mocreep_meat_feathery,Feathery Meat,Пернатое мясо,,,,,,,,羽毛のような肉,,,,
material_mocreep_meat_centipede,Centipede Meat,Мясо сороконожки,,,,,,,,ムカデの肉,,,,
material_mocreep_sand_pink,Pink Sand,Розовый песок,,,,,,,,桃色の砂,,,,
material_mocreep_sand_red,Red Sand,Синий песок,,,,,,,,赤砂,,,,
material_mocreep_sand_insect_husk,Insect Husk,Шелуха насекомого,,,,,,,,甲虫の外皮,,,,
material_mocreep_mist_poison,Poisonous Mist,Ядовитый туман,,,,,,,,毒々しい肉,,,,
material_mocreep_gem_green,Green Gem,Зелёный самоцвет,,,,,,,,緑の宝玉,,,,
material_mocreep_magic_divine_liquid,Divine Liquid,Божественная жидкость,,,,,,,,聖なる液体,,,,
material_mocreep_spark_orange,Orange Spark,Оранжевая искра,,,,,,,,橙色の火花,,,,
material_mocreep_blood_centipede,Centipede Blood,Кровь сороконожки,,,,,,,,ムカデの血,,,,
spell_mocreep_thrower_disc_name,Giga Disc Projectile Thrower,Метатель гигантских дисков,,,,,,,,ギガディスク・スローワー,,,,
spell_mocreep_thrower_disc_desc,Makes a projectile cast Giga Disc Projectiles in random directions,Снаряд испускает гигантские дисковые снаряды в случайном направлении,,,,,,,,放射物から四方八方にギガディスクが発射されるようになる,,,,
spell_mocreep_thrower_cursed_orb_name,Cursed Orb Thrower,Метатель проклятых сфер,,,,,,,,呪いの球体スローワー,,,,
spell_mocreep_thrower_cursed_orb_desc,Makes a projectile cast Cursed Orbs in random directions,Снаряд испускает проклятые шары в случайном направлении,,,,,,,,放射物から四方八方に呪われたスフィアが発射されるようになる,,,,
spell_mocreep_thrower_tnt_name,Dynamite Thrower,Метатель динамита,,,,,,,,TNTスローワー,,,,
spell_mocreep_thrower_tnt_desc,Makes a projectile cast Dynamite in random directions,Снаряд испускает динамит в случайном направлении,,,,,,,,放射物から四方八方にTNTが発射されるようになる,,,,
spell_mocreep_thrower_ice_ball_name,Ice Ball Thrower,Метатель ледяных шариков,,,,,,,,アイスボール・スローワー,,,,
spell_mocreep_thrower_ice_ball_desc,Makes a projectile cast Ice Balls in random directions,Снаряд испускает ледяные шарики в случайном направлении,,,,,,,,放射物から四方八方に氷の玉が発射されるようになる,,,,
spell_mocreep_thrower_nuke_name,Nuke Thrower,Метатель ядерного оружия,,,,,,,,核爆弾スローワー,,,,
spell_mocreep_thrower_nuke_desc,Are you sure?                               ,Вы уверены?                               ,,,,,,,,本当に詠唱してしまうのか？,,,,
spell_mocreep_thrower_disc_enemy_name,Personal Giga Disc Projectile Thrower,Личный метатель гигантских дисков,,,,,,,,パーソナル・ギガディスク・スローワー,,,,
spell_mocreep_thrower_disc_enemy_desc,Makes a projectile turn the creatures it hits into living Sawblade throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей пил",,,,,,,,放射物が当たった生物から、四方八方にギガディスクが発射されるようになる,,,,
spell_mocreep_thrower_cursed_orb_enemy_name,Personal Cursed Orb Thrower,Личный метатель проклятых сфер,,,,,,,,パーソナル・呪いの球体スローワー,,,,
spell_mocreep_thrower_cursed_orb_enemy_desc,Makes a projectile turn the creatures it hits into living Cursed Orb throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей проклятых сфер",,,,,,,,放射物が当たった生物から、四方八方に呪われたスフィアが発射されるようになる,,,,
spell_mocreep_thrower_ice_ball_enemy_name,Personal Ice Ball Thrower,Личный метатель ледяных шариков,,,,,,,,パーソナル・氷の玉スローワー,,,,
spell_mocreep_thrower_ice_ball_enemy_desc,Makes a projectile turn the creatures it hits into living Ice Ball throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей ледяных шариков",,,,,,,,放射物が当たった生物から、四方八方に呪われたスフィアが発射されるようになる,,,,
spell_mocreep_thrower_tnt_enemy_name,Personal Dynamite Thrower,Личный метатель динамита,,,,,,,,パーソナル・TNTスローワー,,,,
spell_mocreep_thrower_tnt_enemy_desc,Makes a projectile turn the creatures it hits into living Dynamite throwers,"Снаряд превращает существ, с которыми сталкивается, в метателей динамита",,,,,,,,放射物が当たった生物から、四方八方にTNTが発射されるようになる,,,,
spell_mocreep_thrower_nuke_enemy_name,Personal Nuke Thrower,Личный метатель ядерного оружия,,,,,,,,パーソナル・核爆弾スローワー,,,,
spell_mocreep_thrower_nuke_enemy_desc,Makes a projectile turn the creatures it hits into living... Nuke throwers?!?!!,"Снаряд превращает существ, с которыми сталкивается, в... метателей ядерного оружия?!?!!",,,,,,,,放射物が当たった生物から、四方八方に……えっ、核爆弾！？,,,,
spell_mocreep_holy_orb_barrage_name,Holy Orb Barrage,Шквал священных сфер,,,,,,,,聖なる弾幕,,,,
spell_mocreep_holy_orb_barrage_desc,Casts a barrage of 7 holy orbs. Also has some magical properties...,Вызывает шквал из 7 святых шаров. Также обладает некоторыми магическими свойствами...,,,,,,,,7発の神聖な魔法弾を発射する。若干の魔法特性もある。,,,,
spell_mocreep_cursed_orb_barrage_name,Cursed Orb Barrage,Шквал проклятых сфер,,,,,,,,不浄な弾幕,,,,
spell_mocreep_cursed_orb_barrage_desc,Casts a barrage of 7 cursed orbs. Has some noticably destructive properties.,Вызывает шквал из 7 проклятых шаров. Обладает заметными разрушительными свойствами.,,,,,,,,7発の不浄な魔法弾を発射する。若干の魔法特性もある。,,,,
spell_mocreep_giga_bomb_name,Giga Bomb,Большая бомба,,,,,,,,ギガボム,,,,
spell_mocreep_giga_bomb_desc,Explosion!!,Бум!!,,,,,,,,ドーン！,,,,
spell_mocreep_aqua_mine_name,Aqua Mine,Водяная мина,,,,,,,,浮遊機雷,,,,
spell_mocreep_aqua_mine_desc,Creates an explosive Aquamine with subtle homing properties.,Создёет взрывоопасную водяную мину с тонкими свойствами самонаведения.,,,,,,,,機雷を設置する。僅かだがホーミング効果もある。,,,,
spell_mocreep_mass_materia_conversion_name,Mass Materia Conversion,Массовое преобразование материалов,,,,,,,,等価交換,,,,
spell_mocreep_mass_materia_conversion_desc,Cave quid volunt,Cave quid volunt,,,,,,,,Cave quid volunt(己の望みに用心せよ),,,,
spell_mocreep_bungal_shift_name,Fungal Shift,Грибковое смещение,,,,,,,,きのこシフト,,,,
spell_mocreep_bungal_shift_desc,Cave quid volunt                 ,Cave quid volunt                 ,,,,,,,,Cave quid volunt(己の望みに用心せよ),,,,
spell_mocreep_musical_proj_name,Musical Strike,Музыкальный удар,,,,,,,,ミュージック・ストライク,,,,
spell_mocreep_musical_proj_desc,"Fires a powerful musical attack, careful not to loose your creativity","Стреляет мощной музыкальной атакой, стараясь не потерять свой творческий потенциал",,,,,,,,音楽のパワーで攻撃する。芸術は爆発だ。,,,,
spell_mocreep_musical_proj_trig_name,Musical Strike with trigger,Музыкальный удар с активацией,,,,,,,,ミュージック・ストライク(トリガー付き),,,,
spell_mocreep_musical_proj_trig_desc,"Fires a powerful musical attack, casts another spell upon collision","Стреляет мощной музыкальной атакой, при столкновении вызывает другое заклинание",,,,,,,,音楽のパワーで攻撃する。着弾時に後ろの魔法を発動する。,,,,
spell_mocreep_reverberation_name,Reverberation,Реверберация,,,,,,,,波動,,,,
spell_mocreep_reverberation_desc,"Creates a reverberation of sound in the air, slicing anything nearby to pieces.","Создаёт отзвук в воздухе, разрывая на куски всё, что находится поблизости.",,,,,,,,音波による攻撃を行う。周囲のものがバラバラになる。,,,,
spell_mocreep_bite_name,Bite,Укус,,,,,,,,噛みつき,,,,
spell_mocreep_bite_desc,...Magic?,...Волшебство?,,,,,,,,……魔法とは？,,,,
spell_mocreep_bungal_shift_hyper_name,Hyper Fungal Shift,Супергрибковое смещение,,,,,,,,ハイパーきのこシフト,,,,
spell_mocreep_bungal_shift_hyper_desc,Insane....                          ,Безумие....                          ,,,,,,,,とてもやばい,,,,
spell_mocreep_summon_worm_name,Summon Jättimato,Призыв яттимато,,,,,,,,巨大ワーム召喚,,,,
spell_mocreep_summon_worm_desc,Dangerous....                      ,Опасно....                      ,,,,,,,,とても、あぶない,,,,
spell_mocreep_bite_crit_name,Bloody Bite,Кровавый укус,,,,,,,,ブラッディー噛みつき,,,,
spell_mocreep_bite_crit_desc,Magic...............................?       ,Волшебство...............................?       ,,,,,,,,……魔法とは？？？？？？,,,,
spell_mocreep_spells_to_sorako_name,Spells to Cats,Превращение в кошек,,,,,,,,呪文からネコへ,,,,
spell_mocreep_spells_to_sorako_desc,Transforms every projectile currently in the air into Cats; a cute idea.,"Превращает каждый снаряд, находящийся в воздухе, в кошку. Милая идея.",,,,,,,,周囲の放射物をネコにする。かわいい！,,,,
spell_mocreep_split_shot_name,Split Shot,Разделяющийся выстрел,,,,,,,,分裂ショット,,,,
spell_mocreep_split_shot_desc,50% chance to duplicate the next cast.,50% шанс на удвоение при следующем заклинании.,,,,,,,,次に呪文を詠唱する時、50％の確率で2回詠唱できる。,,,,
spell_mocreep_status_drunk_name,Mass Drunk,Массовое пьянство,,,,,,,,ヤシオリ・フィールド,,,,
spell_mocreep_status_drunk_desc,Affects every creature in a large radius with a drunken curse.,Проклятие пьянства действует на каждое существо в большом радиусе.,,,,,,,,周囲の生物が泥酔する,,,,
spell_mocreep_status_wet_name,Mass Wet,Массовая влага,,,,,,,,ウェット・フィールド,,,,
spell_mocreep_status_wet_desc,Soaks every creature in a large radius with a magical wetness.,Пропитывает волшебной влагой всех существ в большом радиусе.,,,,,,,,周囲の生物をびしょ濡れにする,,,,
spell_mocreep_status_fire_name,Mass Fire,Массовый огонь,,,,,,,,ファイアー・フィールド,,,,
spell_mocreep_status_fire_desc,Burns every creature in a large radius with a magical fire.,Сжигает волшебным огнём всех существ в большом радиусе.,,,,,,,,周囲の生物を炎上させる,,,,
spell_mocreep_status_urine_name,Mass Jarate,Массовое Банкате,,,,,,,,ダーティ・フィールド,,,,
spell_mocreep_status_urine_desc,Douses every creature in a large radius with a magical jarate.,Обливает всех существ в большом радиусе волшебным Банкате.,,,,,,,,周囲の生物を尿濡れ状態にする,,,,
spell_mocreep_status_polymorph_name,Mass Polymorph,Массовый полиморфизм,,,,,,,,トランスフォーム・フィールド,,,,
spell_mocreep_status_polymorph_desc,Afflicts every creature in a large radius with a magical polymorphine.,Поражает всех существ в большом радиусе волшебным полиморфизмом.,,,,,,,,周囲の生物を変身させる,,,,
setting_mocreep_catimmortality_name,Cat immortality,Бессмертие кошек,,,,,,,,ネコの無敵化,,,,
setting_mocreep_catimmortality_desc,Are cats immortal?,Являются ли кошки бессмертными?,,,,,,,,オンにすることで、ネコが無敵になります。,,,,
setting_mocreep_fairyimmortality_name,Fairy immortality,Бессмертие фей,,,,,,,,妖精の無敵化,,,,
setting_mocreep_fairyimmortality_desc,Are Keiju immortal?,Являются ли Кейдзю бессмертными?,,,,,,,,オンにすることで、妖精が無敵になります。,,,,
setting_mocreep_motd_name,Message of the Day,Сообщение дня,,,,,,,,今日のひとこと,,,,
setting_mocreep_motd_desc,Will a MOTD be displayed at the start of each run? \nMay contain bonus hints for various secrets.,Будет ли сообщение дня отображаться в начале каждого забега? \nМожет содержать бонусные подсказки с различными секретами.,,,,,,,,オンにすると、ゲーム開始時にヒントが表示されるようになります。,,,,
setting_mocreep_seasonal_name,Seasonal Events,Сезонные события,,,,,,,,季節イベント,,,,
setting_mocreep_seasonal_desc,"Are seasonal events enabled? \nFor example, Halloween, More Creep's Birthday, etc.","Включены ли сезонные события? \nНапример, Хэллоуин, день рождения мода More Creep и т.д.",,,,,,,,オンにすると、季節ごとのイベントが発生するようになります。,,,,
setting_mocreep_bosshealthmultiplier_name,Boss Health Multiplier,Множитель здоровья босса,,,,,,,,ボスの強化,,,,
setting_mocreep_bosshealthmultiplier_desc,"Multiply all Bosses health by this much. \nFor those who seek extra durable opponents. \nDoes not affect Kolmisilma \nMinibosses will also have their health boosted by a partial amount. \nThis can be changed mid-run but may not update for all bosses, remember to restart after updating the multiplier.\n \nFor Modders: \nIf your mod isn't listed in the compatibility section of the mod page, \nthis likely won't boost it, you'll need to add a lua component to your bosses. \nDo not hesitate to contact me for instructions or help if needed. \nIt would be easiest for me to respond to you on discord, Conga Lyne#2452","Умножает здоровье всех боссов на это количество. \nДля тех, кто ищет особо стойких противников. \nНе влияет на Колмисильмяна \nМини-боссы также будут иметь частичное увеличение здоровья. \nЭто можно изменить в середине игры, но не для всех боссов, не забудьте перезапустить игру после обновления множителя.\n \nДля создателей модов: \nЕсли ваш мод не указан в разделе совместимости на странице модов, \nэто скорее всего не поможет, вам придётся добавить lua компонент к вашим боссам. \nНе стесняйтесь обращаться ко мне за инструкциями или помощью, если это необходимо. \nМне будет проще всего ответить вам в discord, Conga Lyne#2452.",,,,,,,,ボスのHPに倍率補正をかける、上級者向けの設定です。\nコルミシルマには効果がありません。\nまた、ピットボスなどの中ボスにも一定程度効果が適用されます。\nプレイ中に設定を変更することも可能ですが、変更時はゲームを再起動してください。\nなお、ワークショップの対応MOD欄に記載されていないMODに登場するボスには効果が適用されません。\n適用させるためには専用のスクリプトが必要です。\n詳しくはDiscordでConga Lyne#2452にDMしてください。,,,,
setting_mocreep_compatmode_conjurer_name,Conjurer extra Compatibility mode,Режим совместимости: Conjurer,,,,,,,,Conjurer連携,,,,
setting_mocreep_compatmode_conjurer_desc,"Some people may have issues with this mod not loading into Conjurer properly. \nIf this happens, try enabling this option and loading conjurer again. \n \nThis option is on by default but can be turned off if you wish to \nhave the pixel scenes & bosses appear in conjurer worlds. \n \nIf Conjurer still fails to load despite having this turned on, although unlikely, \nit may be a mod compatibility issue with something else, \nperhaps try disabling mods to find the troublesome one. \n \nIf nothing else works please let me know to by filing a bug report to me. \nIt would be easiest for me to reach & investigate your report at the discord link below: \nhttps://discord.gg/gtyGnv8Pxk","У некоторых людей могут возникнуть проблемы с тем, что этот мод не загружается вместе с модом Conjurer должным образом. \nЕсли это произошло, попробуйте включить этот параметр и загрузить Conjurer снова. \n \nЭта опция включена по умолчанию, но может быть выключена, если вы хотите, чтобы пиксельные сцены и боссы появлялись в мирах Conjurer. \n \nЕсли Conjurer всё ещё не загружается, несмотря на включение этого параметра, хотя это маловероятно, \nможет быть проблема совместимости мода с чем-то другим, \nвозможно, попробуйте отключить все моды поочерёдно, чтобы найти проблемный. \nЕсли ничего не помогает, пожалуйста, сообщите мне об этом, написав сообщение об ошибке. \nМне будет проще всего связаться и изучить ваше сообщение по ссылке на discord: \nhttps://discord.gg/gtyGnv8Pxk",,,,,,,,Conjurerと同時導入時に発生する不具合が報告されています。\nその場合は、この設定をオンにした上でConjurerを再読み込みしてください。\n \nこの設定は初期状態でオンになっていますが、\nピクセルシーン、ボスなどの要素をConjurer環境でも楽しみたい場合はオフにしてください。\n \nこの設定をオンにしても不具合が直らない場合は、別の原因が考えられます。\nその場合は、MOD一覧から原因となっているMODを無効にしてください。\n \nそれでも回復しない場合は、こちらまで連絡してください。→https://discord.gg/gtyGnv8Pxk,,,,
setting_mocreep_compatmode_spell_evolution_name,Spell Evolution Compatibility Mode,Режим совместимости: Spell Evolution,,,,,,,,Spell Evolution連携,,,,
setting_mocreep_compatmode_spell_evolution_desc,"Turn this setting on if you're playing with the Spell Evolution mod to fix it.\n \nAs far as I can tell, a bug in Spell Evolutions causes it to break if a modded spell \n Uses translation keys for their name and/or description. \n \nUnfortunately there's nothing I can do about this as it's not my mod, \nand I have no intention to remove the translation keys \nas I hope to use them one day in the event \nI'm offered a translation for the mod to another language. \nHowever, I can put a setting in to optionally let you use the spells without \ntranslation keys to get around the issue.","Включите этот параметр, если вы играете с модом Spell Evolution, чтобы исправить ошибки.\n \nНасколько я могу судить, ошибка в Spell Evolutions приводит к тому, что он ломается, если модифицированное заклинание \n использует ключи перевода для своего имени и/или описания. \n \nК сожалению, я ничего не могу с этим поделать, поскольку это не мой мод, \n и у меня нет намерения удалять ключи перевода, \n поскольку я надеюсь использовать их однажды в случае, если мне предложат перевести мод на другие языки. \Однако, я могу сделать настройку, которая позволит вам использовать заклинания без ключей перевода, чтобы обойти эту проблему.",,,,,,,,このMODはSpell Evolutionのスペル強化機能に対応しています。\n \nただし、Spell Evolutionには翻訳キーを用いる魔法を強化した際に\n呪文の名前、説明文がおかしくなる不具合が存在します。\n \nこれに関しては作者の側では対応できませんでした。\nかといって、せっかく作って頂いた翻訳キーをまったく消してしまう訳にもいきません。\n \nこの設定は、翻訳キーを用いないようにすることで、\nSpell Evolution側の不具合を回避するためのものです。,,,,
status_mocreep_duckcurse_name,Duck Curse,Утиное проклятие,,,,,,,,アヒルの呪い,,,,
status_mocreep_duckcurse_desc,Their Quacky visions haunt you,Их утиные взгляды преследуют вас,,,,,,,,アヒルの幻影に冒されてしまった。,,,,
status_mocreep_manadrain_name,Mana Degradation,Разложение маны,,,,,,,,マナドレイン,,,,
status_mocreep_manadrain_desc,You are losing Mana Rapidly!!,Вы стремительно теряете ману!!!,,,,,,,,マナが減少していく！,,,,
status_mocreep_transmute_name,Unstable Transmutation,Нестабильная трансмутация,,,,,,,,不安定等価交換,,,,
status_mocreep_transmute_desc,Your being is transmuting nearby matter uncontrollably!,Ваша сущность бесконтрольно превращается близлежащую материю!,,,,,,,,周囲の物質が次々と変化していく！,,,,
1.1.0 content below,"=====================================================================================================================================================================================================================================================Below here are 1.1.0 translation keys",,,,,,,,,,,,,
item_mocreep_essence_fungus_name,Essence of Fungus,Эссенция грибка,,,,,,,,キノコのエッセンス,,,,
item_mocreep_essence_fungus_desc,Your very being is infecting the environment around it!,Сама ваша сущность заражает окружающую среду!,,,,,,,,周囲の空間が侵食されていく！,,,,
sign_mocreep_welcome_hint,"Hello and Welcome to More Creeps & Weirdos! \nAlthough this may seem inconvinent, please take a moment to view the mod settings page in Options > Mod Settings. \nSome mods need compatibility modes enabled, I did my best but some things are outside my control sadly. Other than that, go nuts and have fun <3","Здравствуйте и добро пожаловать в мод More Creeps & Weirdos! \nХотя это может показаться неубедительным, пожалуйста, уделите время просмотру страницы настроек мода в «Параметры» > «Модификации». \nНекоторые моды требуют включения модов совместимости, я сделал всё возможное, но некоторые вещи, к сожалению, находятся вне моего контроля. В остальном, не сомневайтесь и получайте удовольствие <3",,,,,,,,More Creeps & Weirdos MODにようこそ！\nいきなりですが、初回プレイの前には必ずMOD設定をチェックしましょう。\n一部MODとの連携要素を使用するには、設定から有効にする必要があります。\n完了しましたか？では行ってよし！,,,,
sign_mocreep_aprilfools_intro,Happy April Fools <3,Счастливого дня смеха <3,,,,,,,,エイプリルフール！,,,,
status_mocreep_trip_red_00_name,Blazed,Ломка,,,,,,,,ふらふら,,,,
status_mocreep_trip_red_00_desc,You feel dizzy,Вы чувствуете головокружение,,,,,,,,目まいがする。,,,,
status_mocreep_trip_red_01_name,Somewhat Blazed,Небольшая ломка,,,,,,,,ハイテンション,,,,
status_mocreep_trip_red_01_desc,You feel interlinked with Yggdrasil.,Вы чувствуете связь с Иггдрасилем.,,,,,,,,ユグドラシルとの繋がりを感じる。,,,,
status_mocreep_trip_red_02_name,Really Blazed,Сильная ломка,,,,,,,,トリップ,,,,
status_mocreep_trip_red_02_desc,You feel a pleasant burning sensation build up inside you.,"Вы чувствуете, как внутри вас нарастает приятное жжение.",,,,,,,,めらめらとした衝動が湧き上がってくる。,,,,
status_mocreep_trip_red_03_name,Blazed as Hell,Чертовски сильная ломка,,,,,,,,スーパートリップ,,,,
status_mocreep_trip_red_03_desc,Usual concepts don't apply.,Обычные понятия неприменимы.,,,,,,,,常識が逃げ出していく。,,,,
item_mocreep_fungus_stone_name,Sienenkivi,Сененкиви,,,,,,,,シエネンキヴィ,,,,
item_mocreep_fungus_stone_desc,You feel the world transforming in the palm of your hand.,"Вы чувствуете, как мир преображается у вас на ладони.",,,,,,,,手の中で世界が作り替えられていく。,,,,
item_mocreep_orb_mattereater_name,Hungry Orb,Голодный шар,,,,,,,,はらペコオーブ,,,,
item_mocreep_orb_mattereater_desc,You feel like kicking it...,Вам хочется пнуть его...,,,,,,,,蹴ってみたい衝動に駆られる石。,,,,
item_mocreeps_chest_portals,Dimensional Chest,Пространственный сундук,,,,,,,,高次元チェスト,,,,
item_mocreeps_chest_volcanic,Volcanic Chest,Вулканический сундук,,,,,,,,火山のチェスト,,,,
status_mocreep_haste_name,Haste,Спешка,,,,,,,,スピードアップ,,,,
status_mocreep_haste_desc,You feel Faster,Вы чувствуете себя быстрее,,,,,,,,せっかちになった気がする,,,,
material_mocreep_meat_mana,Enchanting Meat,Очаровательное мясо,,,,,,,,魔力のこもった肉,,,,
material_mocreep_smoke_static_slowburn_name,Dense Smoke,Плотный дым,,,,,,,,濃い煙,,,,
material_mocreep_meat_fire_lukki,Infernal Meat,Адское мясо,,,,,,,,煉獄の肉,,,,
material_mocreep_meat_fire_lukki_rock,Brimstone,Сера,,,,,,,,業火,,,,
material_mocreeps_mudman_mud,Magical Mud,Волшебный ил,,,,,,,,魔法の泥,,,,
material_mocreep_knowledge_of_kings,Yggdrasil's Knowledge,Знания Иггдрасиля,,,,,,,,ユグドラシルの智慧,,,,
spell_mocreep_targetter_name,Targetter,Целеуказатель,,,,,,,,ロックオン,,,,
spell_mocreep_targetter_desc,Fire a projectile which causes irresistable hatred towards anything it hits.,"Выпускает снаряд, который вызывает непреодолимую ненависть ко всему, во что попадает.",,,,,,,,当たった生物が周囲から激しく憎悪されるようになる,,,,
spell_mocreep_firecharge_name,Fire Charge,Огненный заряд,,,,,,,,炎チャージ,,,,
spell_mocreep_firecharge_desc,"Imbues a projectile with a fiery charge, that it will release on impact.","Наделяет снаряд огненным зарядом, который он выпустит при ударе.",,,,,,,,放射物に炎の力を籠める。着弾時に炸裂する。,,,,
spell_mocreep_knowledge_of_kings_name,The Knowledge of Kings,Знание королей,,,,,,,,王者たちの智識,,,,
spell_mocreep_knowledge_of_kings_desc,Casting this spell causes something irreversibly permanent to occur,Использовании этого заклинания происходит нечто необратимо постоянное,,,,,,,,取り返しのつかないことが起きる予感がする,,,,
spell_mocreep_portal_lukki_red_portal_name,Summon Red Portal,Призыв красного портала,,,,,,,,赤いポータルの召喚,,,,
spell_mocreep_portal_lukki_red_portal_desc,"Summons a red tinted portal, Right Click to mark a location for the portal to focus on.","Призыв портала с красным оттенком. Щёлкните правой кнопкой мыши, чтобы отметить место, на котором будет сфокусирован портал.",,,,,,,,赤いポータルを召喚する。右クリックで目的地を指定できる。,,,,
spell_mocreep_portal_lukki_blue_portal_name,Summon Blue Portal,Призыв синего портала,,,,,,,,青いポータルの召喚,,,,
spell_mocreep_portal_lukki_blue_portal_desc,"Summons a blue tinted portal, Right Click to mark a location for the portal to focus on.","Призыв портала с синим оттенком. Щёлкните правой кнопкой мыши, чтобы отметить место, на котором будет сфокусирован портал.",,,,,,,,青いポータルを召喚する。右クリックで目的地を指定できる。,,,,
spell_mocreep_portal_lukki_green_portal_name,Summon Green Portal,Призыв зелёного портала,,,,,,,,緑色のポータルの召喚,,,,
spell_mocreep_portal_lukki_green_portal_desc,"Summons a green tinted portal, Right Click to mark a location for the portal to focus on.","Призыв портала с зелёным оттенком. Щёлкните правой кнопкой мыши, чтобы отметить место, на котором будет сфокусирован портал.",,,,,,,,緑色のポータルを召喚する。右クリックで目的地を指定できる。,,,,
spell_mocreep_alt_fire_teleport_name,Alt Fire Teleport Bolt,Телепортирующая молния (ПКМ),,,,,,,,テレポート/ファイアーボルト,,,,
spell_mocreep_alt_fire_teleport_desc,Right click to fire a teleport bolt for 40 mana.,"Щёлкните правой кнопкой мыши, чтобы запустить телепортационную молнию.",,,,,,,,右クリックすると、40マナを消費して代わりにテレポートボルトを発射することができる,,,,
spell_mocreep_alt_fire_teleport_short_name,Alt Fire Small Teleport Bolt,Малая телепортирующая молния (ПКМ),,,,,,,,近距離テレポート/ファイアーボルト,,,,
spell_mocreep_alt_fire_teleport_short_desc,Right click to fire a small teleport bolt for 20 mana.,"Щёлкните правой кнопкой мыши, чтобы запустить малую телепортационную молнию.",,,,,,,,右クリックすると、20マナを消費して代わりにテレポートボルトを発射することができる,,,,
misc_mocreep_energy_nova,Energy Nova,Энергия Новы,,,,,,,,,,,,
log_mocreep_moon_altar_fungus,AN IRREVERSIBLE CORRUPTION HAS OCCURRED,ПРОИЗОШЛА НЕОБРАТИМАЯ ПОРЧА,,,,,,,,あなたは取り返しのつかないことをしてしまった,,,,
logdesc_mocreep_moon_altar_fungus,WHAT HAVE YOU DONE!?,ЧТО ВЫ НАДЕЛАЛИ!?,,,,,,,,何が起こった！？,,,,
log_mocreep_toxicnest_secret_name,I TOLD YOU NOT TO VISIT THE WORM NEST AT 3AM,Я ЖЕ ГОВОРИЛ ВАМ НЕ ПОСЕЩАТЬ ГНЕЗДО ЧЕРВЕЙ В 3 ЧАСА НОЧИ,,,,,,,,だから午前3時に毒虫の棲家には行くなとあれほど,,,,
status_mocreep_protection_lava_name,Lava Immunity,Стойкость к лаве,,,,,,,,溶岩耐性,,,,
status_mocreep_protection_lava_desc,You take no direct damage from lava or fire.,Вы не получаете прямого урона от лавы или огня.,,,,,,,,溶岩や炎からダメージを受けなくなる,,,,
status_mocreep_explosive_orb_name,Explosive,Взрывчатка,,,,,,,,爆弾体質,,,,
status_mocreep_explosive_orb_desc,You're transmuting magic into explosives!,Вы превращаете магию во взрывчатку!,,,,,,,,爆裂魔法がひとりでに発生している！,,,,
creep_mocreep_boss_fire_lukki_name,Lämmön Esteetikko,,,,,,,,,レッメン・エステーティッコ,,,,
integration_mocreep_RANDOM_CATS_name,Kitty Cats!!,Кошечки!!!,,,,,,,,ネコまつり,,,,
integration_mocreep_RANDOM_CATS_desc,Cat! I'm a kitty cat! And I dance dance dance! And I dance dance dance!!,Кошка!! Я кошечка!! И я танцую туц-туц!! И я танцую танцую танцую танцую!!!,,,,,,,,ねこ！ねこ！ねこ！ねこぅぅうううわぁああああああああああああああああああああああん!!!,,,,
integration_mocreep_RANDOM_CREEPS_name,Random Creeps & Weirdos,Случайные твари и чудики,,,,,,,,Random Creeps & Weirdos,,,,
integration_mocreep_RANDOM_CREEPS_desc,Random Creeps & Weirdos will appear in 5 seconds.,Случайные твари и чудики появятся через 5 секунд.,,,,,,,,5秒後にランダムな生物が出現する,,,,
integration_mocreep_WAND_WONDERS_name,Spawn Wand of Wonders,Создать Жезл чудес,,,,,,,,不思議な杖の召喚,,,,
integration_mocreep_WAND_WONDERS_desc,A wonderful wand capable of anything. Cast It!,"Чудесный жезл, способный на всё. Колдуйте!!",,,,,,,,最強の杖が出現する。使ってみよう！,,,,
integration_mocreep_PANDORA_CHEST_name,Pandora's Chest,Сундук Пандоры,,,,,,,,パンドラの箱,,,,
integration_mocreep_PANDORA_CHEST_desc,Do you dare open?,Осмелитесь ли вы открыть?,,,,,,,,本当に開けますか？,,,,
integration_mocreep_RANDOM_CREEPS_BOSS_name,Random Weirdo Boss,Случайный босс-чудик,,,,,,,,ランダムボス召喚,,,,
integration_mocreep_RANDOM_CREEPS_BOSS_desc,A random More Creeps boss will appear after 10 seconds.,Через 10 секунд появится случайный босс мода More Creeps.,,,,,,,,10秒後にランダムなボスが出現する,,,,
integration_mocreep_STONE_FUNGUS_name,Sienenkivi,Сененкиви,,,,,,,,シエネンキヴィ,,,,
integration_mocreep_STONE_FUNGUS_desc,Fungus Stone,Грибковый камень,,,,,,,,きのこストーン（直訳）,,,,
integration_mocreep_CREATURE_SHIFT_name,Creature Shift,Сдвиг существ,,,,,,,,生体転換,,,,
integration_mocreep_CREATURE_SHIFT_desc,Causes a creature to randomly be shifted with another.,Вызывает случайное смещение одного существа с другим.,,,,,,,,生物がランダムで別の生物に変化する,,,,
integration_mocreep_TRANSFORM_WORMS_name,Spells to Worms,Превращение в червяков,,,,,,,,呪文をワームに,,,,
integration_mocreep_TRANSFORM_WORMS_desc,All projectiles currently in the air turn into worms!,"Все снаряды, находящиеся в воздухе, превращаются в червей!!",,,,,,,,全ての放射物が蠕虫に変化する,,,,
integration_mocreep_MUD_MEN_name,Summon Mud Men,Призыв грязевика,,,,,,,,マッドマン召喚,,,,
integration_mocreep_MUD_MEN_desc,MUD MEN are here to save the day!!,"ГРЯЗЕВИК пришёл, чтобы помочь вам!!!",,,,,,,,マッド(mud)マンがやってきた！これは心強い！,,,,
integration_mocreep_HUNGRY_ORB_name,Hungry Orb,Голодный шар,,,,,,,,はらぺこオーブ,,,,
integration_mocreep_HUNGRY_ORB_desc,???,???,,,,,,,,？？？,,,,
integration_mocreep_DELUSIONAL_name,Delusional Streamer,Стример-шизик,,,,,,,,幻覚モード,,,,
integration_mocreep_DELUSIONAL_desc,Your senses deceive you.,Ваши чувства обманывают вас.,,,,,,,,自分の感覚がアテにならなくなる,,,,
integration_mocreep_CLOWNS_name,CLOWNS,КЛОУНЫ,,,,,,,,クラウン,,,,
integration_mocreep_CLOWNS_desc,"You're not a clown, you're the entire circus!!","Вы не клоун, вы целый цирк!!!",,,,,,,,俺がサーカスだ！,,,,
integration_mocreep_SWAPPER_CURSE_name,Curse of Swapping,Проклятие подмены,,,,,,,,スワッパーの呪い,,,,
integration_mocreep_SWAPPER_CURSE_desc,You feel the blood of Swapper Mages runs through you,"Вы чувствуете, как в вас течёт кровь магов-подменщиков.",,,,,,,,スワッパーの血が体中を流れている,,,,
secretmessage_mocreep_herobrine_01,I see you.,Я тебя вижу.,,,,,,,,み　て　い　る　ぞ,,,,
secretmessage_mocreep_divineorb_name,You discovered an orb of divine knowledge,Вы обнаружили шар божественных знаний,,,,,,,,聖なる知識のオーブを手に入れた,,,,
secretmessage_mocreep_divineorb_desc,Secrets of otherworldy royalty have been unlocked to you.,Вам стали открыты секреты потусторонней королевской власти.,,,,,,,,異界の王者たちが持つ秘密が暴かれた,,,,
secretmessage_mocreep_kingly_alreadydone,You feel the secrets of otherwordly royalty have already been unleashed...,"Вы чувствуете, что секреты потусторонней королевской власти уже раскрыты...",,,,,,,,異界の王者たちが持つ秘密は、既に解かれているようだ,,,,
secretmessage_mocreep_kingly_cheater,You feel the magic is incomplete...,"Вы чувствуете, что волшебство не завершено...",,,,,,,,魔法は完成されていない……？,,,,
secretmessage_mocreep_capeget_name,You feel more.. pretty..?,Вы чувствуете себя более.. симпатичными..?,,,,,,,,自分がなんだか……美しくなった？,,,,
secretmessage_mocreep_capeget_desc,Truly befitting.,Очень удовлетворительно.,,,,,,,,完璧だ。,,,,
secretmessage_mocreep_divineorb_heart_name,You found a familiar orb of divine knowledge,Вы нашли знакомый шар божественных знаний,,,,,,,,聖なる知識のオーブを手に入れた,,,,
book_mocreeps_symbol_centipede_blood,Tuhatjalkainen Veri,Тухатьялкайнен Вери,,,,,,,,Tuhatjalkainen Veri,,,,
book_mocreeps_symbol_centipede_blood_description,"Half a circle, and a spine connected to it. \nThree legs on each side, and the centipede's inner liquid is born.","Половина круга, и к нему присоединяется позвоночник. \nТри ноги с каждой стороны, и рождается внутренняя жидкость сороконожки.",,,,,,,,"Hangetsu, yokosen, sanbon sen\nSorega Mukade no Chi no shirushi.",,,,
book_mocreeps_symbol_redsand,Punainen Hiekka,Пунайнен Хиекка,,,,,,,,Punainen Hiekka,,,,
book_mocreeps_symbol_redsand_description,"Three lines. One Horizonal, two more starting at the edges of the first line which converge upwards to touch each other at their ends. \nWithin this new shape, circles lay. \none. two. and three. \nThese three circles represent the specks of dust, and thus a blazing red powder is born.","Три линии. Одна горизонтальная, две другие, начинающиеся от краёв первой линии, которые сходятся вверх и касаются друг друга своими концами. \nВ этой новой форме лежат круги. \nОдин. два. и три. \nЭти три круга представляют собой пылинки, и таким образом рождается пылающий красный порошок.",,,,,,,,"Sankaku ga hitotsu, naka ni maru ga mittsu\nSore ga Akai Suna no shirushi.",,,,
book_mocreeps_symbol_insecthusk,Hyönteisten Kuori,Хьонтейстен Куори,,,,,,,,Hyönteisten Kuori,,,,
book_mocreeps_symbol_insecthusk_description,"One triangle, and another below facing the other way. \nDraw a line to connect these two formations. \nStart from the center of the first, and draw down until it pierces through the second triangle. \nFrom this new symbol, the husk of insects is born.","Один треугольник, а другой внизу обращён в другую сторону. \nНарисуйте линию, соединяющую эти два образования. \nНачните с центра первого треугольника и проведите линию вниз, пока она не пронзит второй треугольник. \nИз этого нового символа рождается шелуха насекомых.",,,,,,,,"Sankaku ga futatsu, tate sen ga hitotsu\nSore ga Kouchuu no Nukegara no shirushi.",,,,
book_mocreeps_symbol_divineliquid,Jumalallinen Neste,Джумалаллинен Несте,,,,,,,,Jumalallinen Neste,,,,
book_mocreeps_symbol_divineliquid_description,"Place down your brush, and draw nothing less than a perfect circle. \n \nWithin this circle, draw the four elements. \nOne line for fire \nOne for Water \nOne for Earth \nand One for Air. \n \nWhere the elements converge, make another perfect circle, fill it in with purpose. \nWith this, a divine drink is born.","Положите кисть и нарисуйте не менее чем идеальный круг. \n \nВ этом круге нарисуйте четыре элемента. \nОдна линия для огня \nОдна для воды \nОдна для земли \nи одна для воздуха. \nТам, где элементы сходятся, сделайте ещё один идеальный круг, заполните его. \nПосле этого рождается божественный напиток.",,,,,,,,"Ookina maru, juuji no sen, sono chushin ni chiisana maru.\nSore ga Seinaru Ekitai no shirushi.",,,,
book_mocreeps_symbol_pinksand,Vaaleanpunainen Hiekka,Ваалеанпунайнен Хиекка,,,,,,,,Vaaleanpunainen Hiekka,,,,
book_mocreeps_symbol_pinksand_description,"A triangle. Within this, create a line piercing through it's purpose. \nInside this triangle near it's peak, a circle sits. \nThe circle is pierced by the line, and is ready to change shape. \nWith this symbol, the pinkest sand will be born.","Треугольник. Внутри него проведите линию, пронизывающую его насквозь. \nВнутри этого треугольника, около его вершины, сидит круг. \nКруг пронзён линией и готов изменить форму. \nС этим символом родится самый розовый песок.",,,,,,,,"Sankaku no naka ni maru ga hitotsu, chuushin wo tooru tate no sen.\nSore ga Momoiro no Suna no shirushi.",,,,
book_mocreeps_symbol_fungus,Sieni,Сиени,,,,,,,,Sieni,,,,
book_mocreeps_symbol_fungus_description,"Two circles, these are specks of dust. \nBetween these specks, draw a line moving upwards. \nWhere the line stops draw two more moving towards the circles. \nConnect the ends of those lines together with one final line, and a fungal infection is born.","Два круга - это пылинки. \nМежду ними проведите линию, двигающуюся вверх. \nВ месте остановки линии нарисуйте ещё две, двигаясь по направлению к кругам. \nСоедините концы этих линий вместе последней линией, и таким образом родится грибковая инфекция.",,,,,,,,"Futatsu no maru, ue ni sankaku, sono chuushin ni tate no sen.\nSore ga Kinoko no shirushi.",,,,
book_mocreeps_fire_lukki,Scorched Notes,Опалённые записки,,,,,,,,Scorched Notes,,,,
book_mocreeps_fire_lukki_description,"I remember finding a stone, blazing with fire but nothing more than a gentle touch in my hand. \nIt belonged to those fire cretins who hunted me I bet. \n \nWanting to get back at them I threw the stone into the deepest body of lava I could find in those wretched mines.. \nBut that was my fatal mistake. \n \nThe stone seemed to attract... something. \nI dared not look back after hearing the lava stir violently behind me, I feel lucky to be alive. \n \nMy robes were scorched by it's mere presence. \nMy pride reduced to burn marks of what it once was. \nI hope I need never return to that place.","Я помню, как нашёл камень, пылающий огнём, но не более чем легкое прикосновение моей руки. \nНаверняка он принадлежал тем огненным кретинам, которые охотились на меня. \nЖелая отомстить им, я бросил камень в самую глубокую лаву, которую смог найти в этих жалких шахтах. \nНо это была моя роковая ошибка. \n \n Камень, казалось, притягивал... что-то. \nЯ не смел оглянуться, когда услышал, как за спиной яростно зашипела лава. Мне повезло, что я остался жив. \nМоя одежда опалилась от одного его присутствия. \nМоя гордость превратилась в ожоги от того, чем она когда-то была. Надеюсь, я никогда не вернусь в это место.",,,,,,,,"Ishi wo hirotta. Moete iru noni, yasashii nukumori wo kanjiru ishi wo.\nAre wa watashi wo osotta nanika no mono datta no darou.\n \nSonogo, ishi wo watashi wa yougan no mizuumi no naka ni suteta.\nSore wa tada no yatsuatari no tsumori datta.\nDaga, sore wa ookina machigai datta noda.\n \nIshi ga nanika wo yobi dashita.\nWatashi no ushiro de yougan ga ookina uzu wo maita.\n \nDounika nige ooseta ga, yatsu no chikaku ni ita dake dato iu noni, fuku ga kurokoge da.\nWatashi wa tengu ni natte ita no darou.\nNidoto ano basho ni wa mukai taku nai monoda.",,,,
status_mocreep_plagiarize_swapper_name,Curse of Swapping,Проклятие подмены,,,,,,,,スワップの呪い,,,,
status_mocreep_plagiarize_swapper_desc,You feel the blood of Swapper Mages runs through you,"Вы чувствуете, как в вас течёт кровь магов-подменщиков.",,,,,,,,スワッパーの血が体中を流れている,,,,
status_mocreep_delusional_name,Delusional,Галлюцинации,,,,,,,,幻覚,,,,
status_mocreep_delusional_desc,Your senses deceive you.,Ваши чувства обманывают вас.,,,,,,,,自分の感覚がアテにならない,,,,
status_mocreep_creatureshift_cd_name,Unshiftable,Несдвигаемый,,,,,,,,定着,,,,
status_mocreep_creatureshift_cd_desc,The path of evolution is set in stone... For now.,Путь эволюции предначертан... Пока что.,,,,,,,,物質の進化が足を止めた。,,,,
perk_mocreeps_revenge_reflective,Revenge Reflection,Отражение мести,,,,,,,,リフレクション,,,,
perk_mocreeps_revenge_reflective_description,"Reflect copies of enemy projectiles upon taking damage, with a steep damage boost as payback.",Отражение копий вражеских снарядов при получении урона с резким увеличением урона в качестве расплаты.,,,,,,,,ダメージを受けた時に敵の放射物をコピーし、さらに威力を強化して撃ち返す。,,,,
biomemod_mocreeps_smoke_dense,The air feels unusually dense,Воздух кажется необычайно плотным,,,,,,,,重苦しい空気が漂っている,,,,
credits_mocreeps_line_01,a mod made by,"мод, созданный",,,,,,,,a mod made by,,,,
credits_mocreeps_line_04,Main Developer of More Creeps & Weirdos,Главный разработчик More Creeps & Weirdos,,,,,,,,Main Developer of More Creeps & Weirdos,,,,
credits_mocreeps_line_07,Voice Actor of the Cats,Актёр озвучивания кошек,,,,,,,,Voice Actor of the Cats,,,,
credits_mocreeps_line_10,"Creating sprites for the Blobs, Fluffy Cats & Aesthete of Heat boss","Создание спрайтов для сгустка, пушистых кошек и босса эстета тепла",,,,,,,,"Creating sprites for the Blobs, Fluffy Cats & Aesthete of Heat boss",,,,
credits_mocreeps_line_11,Creating the Colossal Blob's Vomit Ball attack,Создание атаки «РВОТНЫЙ ШАР» для колоссального сгустка,,,,,,,,Creating the Colossal Blob's Vomit Ball attack,,,,
credits_mocreeps_line_14,Creator of the Mana Drain Script,Создатель скрипта расхода маны,,,,,,,,Creator of the Mana Drain Script,,,,
credits_mocreeps_line_17,Russian Translator,Перевод на русский,,,,,,,,Russian Translator,,,,
credits_mocreeps_line_20,"Helped with some creature design & mod direction, also helped with alt-fire spells.","Помогал с дизайном существ и направлением мода, также помогал с заклинаниями на ПКМ.",,,,,,,,"Helped with some creature design & mod direction, also helped with alt-fire spells.",,,,
credits_mocreeps_line_22,Special Thanks to,Особая благодарность,,,,,,,,Special Thanks to,,,,
credits_mocreeps_line_39,And many modders of the Noita Discord,И многим создателям модов из Discord-сервера Noita,,,,,,,,And many modders of the Noita Discord,,,,
credits_mocreeps_line_43,"And finally.. you, for giving More Creeps a try and making it this far into the mod!","И наконец.. вам, за то, что попробовали More Creeps и зашли так далеко в этом моде!",,,,,,,,"And finally.. you, for giving More Creeps a try and making it this far into the mod!",,,,
credits_mocreeps_line_44,I hope you enjoyed playing it as much as I enjoyed making it <3,"Надеюсь, вам понравилось играть в него так же, как мне понравилось его создавать <3",,,,,,,,I hope you enjoyed playing it as much as I enjoyed making it <3,,,,
credits_mocreeps_line_45,Best of luck in your future adventures - Conga Lyne,Желаю удачи в ваших будущих приключениях - Conga Lyne,,,,,,,,Best of luck in your future adventures - Conga Lyne,,,,
credits_mocreeps_line_horscht,Provided a ton of help in the mod support channel during development and let me use his credits script.,Оказал тонну помощи в канале поддержки мода во время разработки и позволил мне использовать его скрипт для этого меню.,,,,,,,,Provided a ton of help in the mod support channel during development and let me use his credits script.,,,,
credits_mocreeps_line_discordline,"Japanese Translator","Переводчик японского языка",,,,,,,,"Japanese Translator",,,,
credits_mocreeps_line_speedygonzales,"German Translator","Переводчик немецкого языка",,,,,,,,"German Translator",,,,
spell_mocreeps_status_polymorph_intense_name,"Mass Chaotic Polymorph",Массовый хаотический полиморфин,,,,,,,カオス・トランスフォーム・フィールド,,,,
spell_mocreeps_status_polymorph_intense_desc,"Afflicts every creature in a large radius with a magical chaotic polymorphine.",Поражает всех существ в большом радиусе магическим хаотическим полиморфином.,,,,,,,,周囲にいるすべての生物に、カオス多形液を浴びせかける,,,,
spell_mocreeps_mass_burrow_name,"Mass Burrow",Массовое выкапывание,,,,,,,エクスカベーション・フィールド,,,,
spell_mocreeps_mass_burrow_desc,"Rapidly excavate a large amount of terrain.",Быстрая выёмка большого количества земли.,,,,,,,,広範囲の地形を一気に破壊する,,,,
spell_mocreeps_status_dry_name,"Mass Infiltration",Массовое проникновение,,,,,,,,スタビリゼーション,,,,
spell_mocreeps_status_dry_desc,"Freezes the stains on every creature in a large radius with a magical spell.",Замораживает пятна всех существ в большом радиусе с помощью магического заклинания.,,,,,,,,周囲にいる生物の濡れ状態を固定化する,,,,
spell_mocreeps_dry_spell_name,"Infiltrated",Проникновение,,,,,,,,固定化,,,,
spell_mocreeps_dry_spell_desc,"Your stains are set in stone, nothing can be removed and nothing can be added.","Ваши пятна застыли на месте, ничего нельзя убрать и ничего нельзя добавить.",,,,,,,,体に付いた液体が固着している。この状態では、新たに液体で濡れることも、液体を剥がすこともできない。,,,,
spell_mocreeps_alt_fire_cov_name,"Alt Fire Circle of Vigour","Круг жизненной силы (ПКМ)",,,,,,,,,,,,
spell_mocreeps_alt_fire_cov_desc,"Right click to cast a Circle of Vigour for 80 mana","Щелкните правой кнопкой мыши, чтобы наложить заклинание Круг бодрости за 80 маны",,,,,,,,,,,,
spell_mocreeps_critical_drunk_name,"Critical on Drunk","Критика по пьяни",,,,,,,,,,,,
spell_mocreeps_critical_drunk_desc,"Make a projectile always do a critical hit on drunk enemies","Сделайте так, чтобы снаряд всегда наносил критический удар по пьяным врагам",,,,,,,,,,,,
]])


--Yggdrasil's Knowledge (The knowledge of life)





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


--[[
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
]]--

ModLuaFileAppend( "data/scripts/gun/gun_actions.lua", "mods/mo_creeps/files/actions.lua" )


--Custom Materials
ModMaterialsFileAdd( "mods/mo_creeps/files/scripts/materials/custom_materials.xml" )



--Custom Potion Spawns
--[[
]]--
function OnMagicNumbersAndWorldSeedInitialized()
		ModLuaFileAppend( "data/scripts/items/potion.lua", "mods/mo_creeps/files/scripts/potions/potion_appends.lua" )
end


do  -- Global Spawns
  --DO NOT INCLUDE ANYTHING TOWER RELATED HERE, they're... "special" and need to be done in their own unique way
  for _, append in ipairs({
    { -- General
      script = "global_populator",
      biomes = {
        "wizardcave",       --Wizard's Den, aside from the darkness it's pretty habitable. Polymorph liquid is scarier, I can't shield that.
        "coalmine",         --Coal Mine, first area, goodluck on your run
        "desert",           --Desert above ground, careful not to die to any Stendari
        "crypt",            --Temple of the Arts.. who died here?
        "pyramid",          --Presumably everything below the entrance to the pyramid
        "fungicave",        --BUNGUS!! cave, west side of area 2 for example
        "coalmine_alt",     --Coalmine but to the west side near damp cave
        "pyramid_hallway",  --Pyramid entrance, presumably
        "excavationsite",   --Coal Pits, area 2
        "fungiforest",      --Overgrowth
        "snowcave",         --Snowy Depths
        "wandcave",         --Magical temple.. huh
        "sandcave",         --Desert sand cave, I don't think it includes desert chasm
        "winter",           --Winter appears to be the snow chasm... terrifying. Also line 69!
        "rainforest",       --Jungle
        "rainforest_dark",  --Lukki Lair.. creepy
        "liquidcave",       --Abandoned Alchemy Lab
      }
    },
    { -- No Magic
      script = "global_populator_no_magic",
      biomes = {
        "the_end",          --Heaven, or Hell, your choice. Either are The Work.
        "vault",            --The Vault
        "robot_egg",        --I'm sure you can guess
        "vault_frozen",     --Like the vault, but way colder, worse, more hisii and with a really rude welcoming
        "snowcastle",       --Hisii Base... Interesting name.. I won't judge.. too much, I've used some really weird inengine names myself in the past
        "robobase",         --Power Plant
      }
    },
    { -- Small Only
      script = "global_populator_smallonly",
      biomes = {
        "clouds",           --Cloudscapes
        "hills",            --Hills, aka forest.
      }
    },
  }) do
    -- Generate append script file path
    local appendpath = table.concat({"mods/mo_creeps/files/scripts/biomes/", append.script, ".lua"})
    -- Iterate over all biomes for the path
    for _, biome in ipairs(append.biomes) do
      -- Generate biome file path
      local biomepath = table.concat({"data/scripts/biomes/", biome, ".lua"})
      -- Add the stuff
      ModLuaFileAppend(biomepath, appendpath)
    end
  end
end


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
--Deprecated, now down through a spawner w/ pixelscenes

--[[
if ModIsEnabled("purgatory") then
  ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/purgatory/statue_room_populator.lua" ) 
else
  ModLuaFileAppend( "data/scripts/biomes/mountain/mountain_hall.lua", "mods/mo_creeps/files/scripts/biomes/boss_spawns/statue_room_populator.lua" ) 
end
]]--





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
    ModLuaFileAppend( "data/scripts/biomes/mod/snowvillage.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/hisiivillage_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/frozen_passages.lua", "mods/mo_creeps/files/scripts/biomes/snowcave_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/catacombs.lua", "mods/mo_creeps/files/scripts/biomes/wandcave_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/tomb.lua", "mods/mo_creeps/files/scripts/biomes/sandcave_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/robofactory.lua", "mods/mo_creeps/files/scripts/biomes/vault_populator.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/swamp.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/swamp_populator.lua" ) --Jungle, could probably include bonus fungus here
    ModLuaFileAppend( "data/scripts/biomes/mod/rainforest_wormy.lua", "mods/mo_creeps/files/scripts/biomes/mod_compatibility/alt_biomes/wormtunnels_populator.lua" )
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
    
    --Dark Areas
    ModLuaFileAppend( "data/scripts/biomes/mod/irradiated_mines.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/tomb.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/conduit.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" )
    ModLuaFileAppend( "data/scripts/biomes/mod/the_void.lua", "mods/mo_creeps/files/scripts/biomes/suspicious.lua" )

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

  local content = ModTextFileGetContent("data/entities/animals/hisii_minecart_weak.xml")
  local xml = nxml.parse(content)
  xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_worse_weak.xml"
  xml:first_of("Base"):first_of("AnimalAIComponent").attr.attack_ranged_entity_file = "data/entities/projectiles/fireball_buckshot.xml"
  ModTextFileSetContent("data/entities/animals/hisii_minecart_weak.xml", tostring(xml))

  --Bat Illusion Fix
  local content = ModTextFileGetContent("data/entities/animals/psychotic/bat.xml")
  local xml = nxml.parse(content)
  xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "data/enemies_gfx/worse/bat.xml"
  ModTextFileSetContent("data/entities/animals/psychotic/bat.xml", tostring(xml))

  --Illusion Shotgunner Hisii Fix
  local content = ModTextFileGetContent("data/entities/animals/psychotic/shotgunner.xml")
  local xml = nxml.parse(content)
  xml:first_of("Base"):first_of("AnimalAIComponent").attr.attack_ranged_entity_file = "mods/mo_creeps/files/entities/projectiles/psychotic/meteor_green.xml"
  ModTextFileSetContent("data/entities/animals/psychotic/shotgunner.xml", tostring(xml))

end

-- Noita Toether compatibility, allows items like the new tablets, Fungus Stone & Hungry Orb to be added to the item bank
--This is done... weirdly
--[[
if ModIsEnabled("noita-together") then
  ModLuaFileAppend( "mods/noita-together/files/scripts/item_list.lua", "mods/mo_creeps/files/scripts/mod_compatibility/nt_itemlist_populator.lua" )
end
]]--




-- Custom Perk support injection

ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/mo_creeps/files/scripts/perks/custom_perks.lua" )


-- Custom Status support injection

ModLuaFileAppend( "data/scripts/status_effects/status_list.lua", "mods/mo_creeps/files/scripts/status_effects/status_effects.lua" )


-- Custom Audio Support

ModRegisterAudioEventMappings("mods/mo_creeps/files/audio/GUIDs.txt")



-- Misc

--Twitch Integration
ModLuaFileAppend( "data/scripts/streaming_integration/event_list.lua", "mods/mo_creeps/files/scripts/streaming_integration/event_list_populator.lua" )


--Musicstone tag addition
dofile_once( "mods/mo_creeps/files/scripts/magic/music_magic_tag_nxml.lua" )

if HasFlagPersistent( "action_mocreeps_aqua_mine" ) or HasFlagPersistent( "action_mocreeps_bomb_giga" ) then
  AddFlagPersistent( "mocreeps_card_unlocked_welcome_hint" )
end

--MOTD & Welcome Hint
if ModIsEnabled("raksa") == false then
  local flag_status = HasFlagPersistent( "mocreeps_card_unlocked_welcome_hint" )
  if motdSetting == true then
    dofile_once( "mods/mo_creeps/files/scripts/misc/motd_list.lua" )
  elseif flag_status == false then
    if ModIsEnabled("purgatory") then
      dofile_once( "mods/mo_creeps/files/scripts/misc/welcome_hint_purgatory.lua" )
    elseif ModIsEnabled("noitavania") then
      dofile_once( "mods/mo_creeps/files/scripts/misc/welcome_hint_noitavania.lua" )
    else
      dofile_once( "mods/mo_creeps/files/scripts/misc/welcome_hint.lua" )
    end
  end
end

--Allows hisii to jump into minecarts
local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
if ModIsEnabled("Ride Minecart") == false then
  local content = ModTextFileGetContent("data/entities/props/physics_minecart.xml")
  local xml = nxml.parse(content)
  xml.attr.name = "minecart_hisii_hopin"
  ModTextFileSetContent("data/entities/props/physics_minecart.xml", tostring(xml))
  ModTextFileSetContent("data/entities/props/physics/minecart.xml", tostring(xml))
end

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
local content = ModTextFileGetContent("data/entities/animals/shotgunner_weak.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
    <LuaComponent
        script_source_file="mods/mo_creeps/files/scripts/buildings/hisii_minecart_hopin_weak.lua"
        execute_every_n_frame="60"
        >
    </LuaComponent>
]]))
ModTextFileSetContent("data/entities/animals/shotgunner_weak.xml", tostring(xml))

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



-- Creature shift fix upon reloading world
function OnPlayerSpawned( player_entity )
	local x, y = EntityGetTransform( player_entity ) --This was just "player" by default but I feel like something broke.. I hope not
	EntityLoad("mods/mo_creeps/files/entities/special/entity_shift_refresh_fixer.xml", x, y)

  --[[
    if ModIsEnabled("Ride Minecart") == true then
    GamePrint("Error, could not initialise hopping into minecarts because of [Ride Minecarts], Mo Creeps should function as normal otherwise though.")
  end
  ]]--
end

--Allows for essence of fungus to be turned into a stone
local content = ModTextFileGetContent("data/entities/buildings/essence_eater.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
	<LuaComponent
		execute_every_n_frame="-1"
		script_death="mods/mo_creeps/files/scripts/essence/away_modded.lua"
		remove_after_executed="0"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/buildings/essence_eater.xml", tostring(xml))

--Allows for moon shenanigans involving essences at the Sky Moon
local content = ModTextFileGetContent("data/entities/buildings/moon_altar.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
	<LuaComponent 
    _enabled="1" 
    execute_every_n_frame="70"
    script_source_file="mods/mo_creeps/files/scripts/magic/moon_altar_modded.lua" 
    >
  </LuaComponent>
]]))
ModTextFileSetContent("data/entities/buildings/moon_altar.xml", tostring(xml))

--Allows for moon shenanigans involving essences at the Dark Moon
local content = ModTextFileGetContent("data/entities/buildings/dark_moon_altar.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
	<LuaComponent 
    _enabled="1" 
    execute_every_n_frame="70"
    script_source_file="mods/mo_creeps/files/scripts/magic/dark_moon_altar_modded.lua" 
    >
  </LuaComponent>
]]))
ModTextFileSetContent("data/entities/buildings/dark_moon_altar.xml", tostring(xml))

--Allows for Pandora Chest rain to occur if you bring a Pandora's Chest to the mountain altar
ModLuaFileAppend( "data/scripts/magic/altar_tablet_magic.lua", "mods/mo_creeps/files/scripts/magic/mountain_altar_appends.lua" )



--Nightmare & Purgatory fixes for bubbles so they don't spew out infinite liquid everywhere
--I forgot nightmare/purgatory naturally reduces blood multipliers by default anyways.. oops
--[[
if ModIsEnabled("purgatory") or ModIsEnabled("nightmare") then

  local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
  local content = ModTextFileGetContent("data/entities/animals/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "20"
  ModTextFileSetContent("data/entities/animals/bubble_liquid.xml", tostring(xml))

  local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
  local content = ModTextFileGetContent("data/entities/animals/bubbles/acid/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "20"
  ModTextFileSetContent("data/entities/animals/bubbles/acid/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/freezing_liquid/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "30"
  ModTextFileSetContent("data/entities/animals/bubbles/freezing_liquid/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/cursed_liquid/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "10"
  ModTextFileSetContent("data/entities/animals/bubbles/cursed_liquid/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/ambrosia/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "20"
  ModTextFileSetContent("data/entities/animals/bubbles/ambrosia/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/alchemicprecursor/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "15"
  ModTextFileSetContent("data/entities/animals/bubbles/alchemicprecursor/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/healthium/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "15"
  ModTextFileSetContent("data/entities/animals/bubbles/healthium/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/unstablePandorium/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "10"
  ModTextFileSetContent("data/entities/animals/bubbles/unstablePandorium/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/pandorium/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "10"
  ModTextFileSetContent("data/entities/animals/bubbles/pandorium/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/stophittingyourself/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "10"
  ModTextFileSetContent("data/entities/animals/bubbles/stophittingyourself/bubble_liquid.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/animals/bubbles/sliceLiquid/bubble_liquid.xml")
  local xml = nxml.parse(content)
  local attrs = xml:first_of("Base"):first_of("DamageModelComponent").attr
  attrs.blood_multiplier = "10"
  ModTextFileSetContent("data/entities/animals/bubbles/sliceLiquid/bubble_liquid.xml", tostring(xml))
  
end
]]--

--Resets Blob Boss kill reward to prevent cheesing multiple "reward events" per kill
ModLuaFileAppend( "data/scripts/newgame_plus.lua", "mods/mo_creeps/files/scripts/newgame_plus_appends.lua" )
--GameRemoveFlagRun( "mocreeps_blob_boss_slain" )

--Adds custom enlightened alchemist types
--Could instead have a script that has a 2 in 6 chance to occur, and if it does make the alchemist one of the new varients, and append all this as a script on the englightened alch entity that runs after the vanilla init occurs
local content = ModTextFileGetContent("mods/mo_creeps/files/scripts/mod_compatibility/vanilla_enlightened_alchemist_init_append.lua")
ModTextFileSetContent( "data/scripts/animals/enlightened_alchemist_init.lua", tostring(content) )
--ModLuaFileAppend( "data/scripts/animals/enlightened_alchemist_init.lua", "mods/mo_creeps/files/scripts/mod_compatibility/vanilla_enlightened_alchemist_init_append.lua" )

-- Adds musical_stone tag to the worm projectile, not to make musical ghosts appear but rather to make it double for a "spells to worms" effect
local content = ModTextFileGetContent("data/entities/projectiles/deck/worm_shot.xml")
local xml = nxml.parse(content)
xml.attr.tags = xml.attr.tags .. ",musical_stone"
ModTextFileSetContent("data/entities/projectiles/deck/worm_shot.xml", tostring(xml))

-- Adds various powders to dissolve powders perk
local content = ModTextFileGetContent("data/entities/misc/perks/dissolve_powders.xml")
local xml = nxml.parse(content)
local attrs = xml:first_of("CellEaterComponent").attr
attrs.materials = attrs.materials .. ",mocreeps_insect_husk,mocreeps_sand_pink,templebrick_static_broken_mocreepsoft"
ModTextFileSetContent("data/entities/misc/perks/dissolve_powders.xml", tostring(xml))

-- Adds various liquids to freeze charge modifier
local content = ModTextFileGetContent("data/entities/particles/freeze_charge.xml")
local xml = nxml.parse(content)
local attrs = xml:all_of("MagicConvertMaterialComponent")
attrs[2].attr.from_material_array = attrs[2].attr.from_material_array .. ",mocreeps_water_fading_fast,water_fading"
attrs[2].attr.to_material_array = attrs[2].attr.to_material_array .. ",ice_static,ice_static"
ModTextFileSetContent("data/entities/particles/freeze_charge.xml", tostring(xml))

-- Adds various liquids to circle of stillness
local content = ModTextFileGetContent("data/entities/projectiles/deck/freeze_field.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
	<MagicConvertMaterialComponent
      kill_when_finished="0"
      from_material="water_fading"
      steps_per_frame="5"
      to_material="ice_static"
      is_circle="1"
      radius="72" >
    </MagicConvertMaterialComponent>
]]))
ModTextFileSetContent("data/entities/projectiles/deck/freeze_field.xml", tostring(xml))

-- Adds various liquids to freeze field perk
local content = ModTextFileGetContent("data/entities/misc/perks/freeze_field.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
	<MagicConvertMaterialComponent
      kill_when_finished="0"
      from_material="mocreeps_water_fading_fast"
      steps_per_frame="5"
      to_material="ice_static"
      is_circle="1"
      radius="72" >
    </MagicConvertMaterialComponent>
]]))
ModTextFileSetContent("data/entities/misc/perks/freeze_field.xml", tostring(xml))

--Adds Vulnerability immunity check to Master of Vulnerability's attack
local content = ModTextFileGetContent("data/entities/misc/effect_weaken.xml")
local xml = nxml.parse(content)
xml:add_child(nxml.parse([[
	<LuaComponent
		script_source_file="mods/mo_creeps/files/scripts/status_effects/weaken_immunity_check.lua"
		execute_every_n_frame="2"
		>
	</LuaComponent>
]]))
ModTextFileSetContent("data/entities/misc/effect_weaken.xml", tostring(xml))





--Boss health multiplier insertion
dofile_once( "mods/mo_creeps/files/scripts/mod_compatibility/boss_health_multiplier_plug.lua" )

--Boss vulnerability immunity insertion
dofile_once( "mods/mo_creeps/files/scripts/mod_compatibility/boss_vulnerability_immune_plug.lua" )

--Overrides some creep's settings for spoopy's alternate graphics
if spoopyGFXSetting == true then

  --Esoteric Being
  local content = ModTextFileGetContent("data/entities/animals/esoteric_being.xml")
  local xml = nxml.parse(content)
  xml:first_of("Base"):first_of("AnimalAIComponent").attr.attack_ranged_action_frame = "2"
  xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/esoteric_being_alt.xml"
  xml:first_of("SpriteComponent").attr.offset_x = "18.5"
  xml:first_of("SpriteComponent").attr.offset_y = "17.5"
  ModTextFileSetContent("data/entities/animals/esoteric_being.xml", tostring(xml))

  local content = ModTextFileGetContent("data/entities/buildings/esoteric_being_asleep.xml")
  local xml = nxml.parse(content)
  xml:first_of("SpriteComponent").attr.image_file = "mods/mo_creeps/files/enemies_gfx/esoteric_being_alt_asleep.xml"
  ModTextFileSetContent("data/entities/buildings/esoteric_being_asleep.xml", tostring(xml))

  local content = ModTextFileGetContent("mods/mo_creeps/files/scripts/animals/angel_holy_beam_calldown_alt.lua")
  ModTextFileSetContent("mods/mo_creeps/files/scripts/animals/angel_holy_beam_calldown.lua", content)

end






  














--Master of Masters master spawner insertion, allows him to spawn Master of Mallards & Master of Immortality too.. He doesn't appreciate Master of Trolling too much to invite him in
--Note, this has been moved to a file override






-- Seasonal
local year, month, day, hour, minute = GameGetDateAndTimeLocal()


if seasonalSetting == true then

  -- Halloween Event
  if (( month == 10 ) and ( day >= 15 )) or seasonalForced_Halloween then
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
  if (( month == 12 ) and ( day >= 15 )) or seasonalForced_Smissmass then

    local nxml = dofile_once("mods/mo_creeps/lib/nxml.lua")
    local content = ModTextFileGetContent("data/entities/animals/hisii_minecart_tnt.xml")
    local xml = nxml.parse(content)
    xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_tnt_santa.xml"
    xml:first_of("Base"):first_of("AnimalAIComponent").attr.attack_ranged_entity_file = "data/entities/projectiles/present.xml"
    xml:add_child(nxml.parse([[
      <LuaComponent
          script_source_file="mods/mo_creeps/files/scripts/animals/esoteric_being_shifted_smoke.lua"
          execute_every_n_frame="1"
          remove_after_executed="1"
          >
      </LuaComponent>
      ]]))
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

    if ModIsEnabled("worse_enemies") then
      local content = ModTextFileGetContent("data/entities/animals/hisii_minecart_weak.xml")
      local xml = nxml.parse(content)
      xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_worse_weak_smissmass.xml"
      ModTextFileSetContent("data/entities/animals/hisii_minecart_weak.xml", tostring(xml))
    else
      local content = ModTextFileGetContent("data/entities/animals/hisii_minecart_weak.xml")
      local xml = nxml.parse(content)
      xml:first_of("Base"):first_of("SpriteComponent").attr.image_file = "mods/Mo_Creeps/files/enemies_gfx/hisii_minecart_weak_smissmass.xml"
      ModTextFileSetContent("data/entities/animals/hisii_minecart_weak.xml", tostring(xml))
    end

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
  --Remember Update global_populator & global_populator_small too, wand tinkering crystal spawns are inside.
  if (( month == 7 ) and (( day >= 20 ) and ( day <= 22 ))) or seasonalForced_Birthday then
    ModLuaFileAppend( "data/scripts/biomes/hills.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" ) --Hills slightly below ground
    ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" ) --Coal Mine, first area, goodluck on your run
    ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" ) --Coalmine but to the west side near damp cave
    ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" ) --Coal Pits, area 2
    ModLuaFileAppend( "data/scripts/biomes/snowcave.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" ) --Hiisi Base
    ModLuaFileAppend( "data/scripts/biomes/snowcastle.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" )
    ModLuaFileAppend( "data/scripts/biomes/desert.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday.lua" )
    ModLuaFileAppend( "data/scripts/biomes/rainforest.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" )
    ModLuaFileAppend( "data/scripts/biomes/vault.lua", "mods/mo_creeps/files/scripts/biomes/seasonal/birthday_rare.lua" )
  end


  -- April Fools Event
  if (( month == 4 ) and (( day >= 1 ) and ( day <= 3 ))) or seasonalForced_AprilFools then
    do  --Replace all hisii hobos with clowns.
        local content = ModTextFileGetContent("data/entities/animals/seasonal/hisii_hobo.xml")
        ModTextFileSetContent("data/entities/animals/hisii_hobo.xml", content)
    end
    do  --Replace small fairies with lethal versions.
        local content = ModTextFileGetContent("data/entities/animals/seasonal/fairy_cheap.xml")
        ModTextFileSetContent("data/entities/animals/fairy_cheap.xml", content)
    end
    do  --Replace big fairies with non-lethal versions.
      local content = ModTextFileGetContent("data/entities/animals/seasonal/fairy_big.xml")
      ModTextFileSetContent("data/entities/animals/fairy_big.xml", content)
    end

    --Randomly cause a fungal shift/creature shift at any time, at random.
    function OnPlayerSpawned( player_entity )
      local x, y = EntityGetTransform( player_entity )
      cid = EntityLoad("mods/mo_creeps/files/entities/misc/essence/moon_fungus_curse_slow.xml", x, y)
      EntityAddChild( player_entity, cid )
      cid = EntityLoad("mods/mo_creeps/files/entities/misc/essence/moon_creature_curse_slow.xml", x, y)
      EntityAddChild( player_entity, cid )
      cid = EntityLoad("mods/mo_creeps/files/entities/misc/essence/creature_shift_april_fools_bootup.xml", x, y) --20 random creature shifts at the start of the run
      EntityAddChild( player_entity, cid )
    end
    local randomCap = 10

    SetRandomSeed( hour + minute, hour + day )
    --10% chance for any main path biome to become weird in April Fools
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/vault.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/fungicave.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/rainforest.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/snowcastle.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/snowcave.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/coalmine_alt.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end
    if Random(1,randomCap) == 1 then
      ModLuaFileAppend( "data/scripts/biomes/coalmine.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )
      randomCap = randomCap + 1
    end

    --100% chance for the Temple of the Art to be spawn everything
    ModLuaFileAppend( "data/scripts/biomes/crypt.lua", "mods/mo_creeps/files/scripts/biomes/global_everything_populator.lua" )


    --Happy april fools <3
    function OnPlayerSpawned()
      GamePrint("$sign_mocreep_aprilfools_intro")
    end

    --Remember to check global spawn files, pandora's chest spawnrate boost is managed there

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


--Secret



do  -- Player Editor
  local path = "data/entities/player_base.xml"
  local xml = nxml.parse(ModTextFileGetContent(path))
  --Adds Biome tracker script to the player character, it will update their current biome difficulty and save the highest one they've ever achieved, maxing out at 7 in Heaven/Hell
  xml:add_child(nxml.parse([[
    <LuaComponent
      script_source_file="mods/mo_creeps/files/scripts/magic/biome_difficulty_tracker.lua"
      execute_every_n_frame="600"
      execute_times="-1"
      remove_after_executed="0"
      >
    </LuaComponent>
  ]]))
  if HasFlagPersistent( "mocreeps_card_unlocked_secret_knowledge_of_kings" ) and capeSetting then
    --Adds Golden Cape if check is successful
    xml:add_child(nxml.parse([[
      <LuaComponent
        script_source_file="data/mocreeps_gfx/player_cape_colour_append.lua"
        execute_every_n_frame="1"
        execute_times="1"
        remove_after_executed="1"
        >
      </LuaComponent>
    ]]))
  end
  ModTextFileSetContent("data/entities/player_base.xml", tostring(xml))
end




--10% chance for Coal Pits to have dense smoke in a run, 100% if first run with More Creeps reaching the coal pits
if ModIsEnabled("raksa") == false then
  SetRandomSeed( hour + minute, hour + day )
  if (HasFlagPersistent( "mocreeps_card_unlocked_coalpits_dense_smoke" ) ~= true) or (Random(1,10) == 1) then
    
    local filepc = "data/biome/_pixel_scenes.xml"
    if ModIsEnabled("purgatory") then
      filepc = "mods/purgatory/files/biome/_pixel_scenes.xml"
      local content = ModTextFileGetContent(filepc)
      local xml = nxml.parse(content)
      xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
          <PixelScene pos_x="1003" pos_y="111" just_load_an_entity="data/entities/buildings/smoke_dense_creator_mocreep_message.xml" />
      ]]))
      ModTextFileSetContent(filepc, tostring(xml))
    elseif ModIsEnabled("noitavania") then
      filepc = "mods/noitavania/data/biome/_pixel_scenes.xml"
      local content = ModTextFileGetContent(filepc)
      local xml = nxml.parse(content)
      xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
          <PixelScene pos_x="192" pos_y="1635" just_load_an_entity="data/entities/buildings/smoke_dense_creator_mocreep_message.xml" />
      ]]))
      ModTextFileSetContent(filepc, tostring(xml))
    else
      local content = ModTextFileGetContent(filepc)
      local xml = nxml.parse(content)
      xml:first_of("mBufferedPixelScenes"):add_child(nxml.parse([[
          <PixelScene pos_x="192" pos_y="1635" just_load_an_entity="data/entities/buildings/smoke_dense_creator_mocreep_message.xml" />
      ]]))
      ModTextFileSetContent(filepc, tostring(xml))
    end


    ModLuaFileAppend( "data/scripts/biomes/excavationsite.lua", "mods/mo_creeps/files/scripts/biomes/excavationsite_populator_densesmoke.lua" )
  end
end

do -- gsub new wizards into Master of Master's spawn table
  local path = "data/entities/animals/boss_wizard/spawn_wizard.lua"
  local content = ModTextFileGetContent(path)
  content = content:gsub([[local opts = { "wizard_tele", "wizard_dark", "wizard_poly", "wizard_homing", "wizard_weaken", "wizard_twitchy", "wizard_neutral", "wizard_hearty", "wizard_returner" }]], [[local opts = { "wizard_ambrosia", "wizard_duck", "wizard_jackofalltrades", "wizard_manaeater", "wizard_transmutation", "wizard_tele", "wizard_dark", "wizard_poly", "wizard_homing", "wizard_weaken", "wizard_twitchy", "wizard_neutral", "wizard_hearty", "wizard_returner" }

  if ModIsEnabled("new_enemies") then
    opts = { "wizard_random", "wizard_time", "wizard_toxic", "wizard_trip", "wizard_earthquake", "wizard_water", "wizard_ambrosia", "wizard_duck", "wizard_jackofalltrades", "wizard_manaeater", "wizard_transmutation", "wizard_tele", "wizard_dark", "wizard_poly", "wizard_homing", "wizard_weaken", "wizard_twitchy", "wizard_neutral", "wizard_hearty", "wizard_returner" }
  else
    opts = { "wizard_ambrosia", "wizard_duck", "wizard_jackofalltrades", "wizard_manaeater", "wizard_transmutation", "wizard_tele", "wizard_dark", "wizard_poly", "wizard_homing", "wizard_weaken", "wizard_twitchy", "wizard_neutral", "wizard_hearty", "wizard_returner" }
  end]])
  ModTextFileSetContent(path, content)
end


do -- Kill all projectiles on screen if there's too many wands & the game is at risk of crashing
  local content = ModTextFileGetContent("data/entities/animals/boss_pit/boss_pit.xml")
  local xml = nxml.parse(content)
  xml:add_child(nxml.parse([[
      <LuaComponent
      script_damage_received="data/entities/animals/boss_pit/boss_pit_apotheosis_proj_failsafe.lua"
      script_death="data/entities/animals/boss_pit/boss_pit_apotheosis_proj_failsafe.lua"
      execute_times="-1"
      execute_every_n_frame="-1"
      remove_after_executed="0"
      >
      </LuaComponent>
  ]]))
  ModTextFileSetContent("data/entities/animals/boss_pit/boss_pit.xml", tostring(xml))
end