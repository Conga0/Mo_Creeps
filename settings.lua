dofile("data/scripts/lib/mod_settings.lua")

function mod_setting_change_callback( mod_id, gui, in_main_menu, setting, old_value, new_value  )
	print( tostring(new_value) )
end

local currentLang = GameTextGetTranslatedOrNot("$current_language")

local congacat_cat_immortal_name = "Cat immortality"
local congacat_cat_immortal_desc = "Are cats immortal?"
local fairy_immortality_name = "Fairy immortality"
local fairy_immortality_desc = "Are Keiju immortal?"
local motd_setting_name = "Message of the Day"
local motd_setting_desc = "Will a MOTD be displayed at the start of each run? \nMay contain bonus hints for various secrets."
local seasonal_events_name = "Seasonal Events"
local seasonal_events_desc = "Are seasonal events enabled? \nFor example, Halloween, More Creep's Birthday, etc."
local boss_health_multiplayer_name = "Boss Health Multiplier"
local boss_health_multiplayer_formatting = " $0% HP"
local boss_health_multiplayer_desc = "Multiply all Bosses health by this much. \nFor those who seek extra durable opponents. \nDoes not affect Kolmisilma \nMinibosses will also have their health boosted by a partial amount. \nThis can be changed mid-run but may not update for all bosses, \nremember to restart after updating the multiplier.\n \nFor Modders: \nIf your mod isn't listed in the compatibility section of the mod page, \nthis likely won't boost it, you'll need to add a lua component to your bosses. \nDo not hesitate to contact me for instructions or help if needed. \nIt would be easiest for me to respond to you on discord, Conga Lyne#2452"
local particle_reduction_name = "Minimal Particles"
local particle_reduction_desc = "Reduce the number of particles spawned by certain spells. \nThis should help reduce lag if your computer's reaching it's limit."
local mod_compat_mode_conjurer_name = "Conjurer extra Compatibility Mode"
local mod_compat_mode_conjurer_desc = "Some people may have issues with this mod not loading into Conjurer properly. \nIf this happens, try enabling this option and loading conjurer again. \n \nThis option is on by default but can be turned off if you wish to \nhave the pixel scenes & bosses appear in conjurer worlds. \n \nIf Conjurer still fails to load despite having this turned on, although unlikely, \nit may be a mod compatibility issue with something else, \nperhaps try disabling mods to find the troublesome one. \n \nIf nothing else works please let me know to by filing a bug report to me. \nIt would be easiest for me to reach & investigate your report at the discord link below: \nhttps://discord.gg/gtyGnv8Pxk"
local mod_compat_mode_spell_evolution_name = "Spell Evolution Compatibility Mode"
local mod_compat_mode_spell_evolution_desc = "Turn this setting on if youre playing with the Spell Evolution mod to fix it.\n \nAs far as I can tell, a bug in Spell Evolutions causes it to break if a modded spell \nUses translation keys for their name and/or description. \n \nUnfortunately there's nothing I can do about this as it's not my mod, \nand I have no intention to remove the translation keys \nas I hope to use them one day in the event \nIm offered a translation for the mod to another language. \nHowever, I can put a setting in to optionally let you use the spells without \ntranslation keys to get around the issue."


  --Russian Translations
if currentLang == "русский" then

  congacat_cat_immortal_name = "Бессмертие кошек"
  congacat_cat_immortal_desc = "Являются ли кошки бессмертными?"
  fairy_immortality_name = "Бессмертие фей"
  fairy_immortality_desc = "Являются ли Кейдзю бессмертными?"
  motd_setting_name = "Сообщение дня"
  motd_setting_desc = "Будет ли сообщение дня отображаться в начале каждого забега? \nМожет содержать бонусные подсказки с различными секретами."
  seasonal_events_name = "Сезонные события"
  seasonal_events_desc = "Включены ли сезонные события? \nНапример, Хэллоуин, день рождения мода More Creep и т.д."
  boss_health_multiplayer_name = "Множитель здоровья босса"
  boss_health_multiplayer_formatting = " $0% ОЗ"
  boss_health_multiplayer_desc = "Умножает здоровье всех боссов на это количество. \nДля тех, кто ищет особо стойких противников. \nНе влияет на Колмисильмяна \nМини-боссы также будут иметь частичное увеличение здоровья. \nЭто можно изменить в середине игры, но не для всех боссов, \n не забудьте перезапустить игру после обновления множителя.\n \nДля создателей модов: \nЕсли ваш мод не указан в разделе совместимости на странице \n модов, это скорее всего не поможет, вам придётся добавить \n lua-компонент кода к вашим боссам. \nНе стесняйтесь обращаться ко мне за инструкциями или \n помощью, если это необходимо. \nМне будет проще всего ответить вам в \n Discord, Conga Lyne#2452. [ТОЛЬКО НА АНГЛИЙСКОМ]"
  mod_compat_mode_conjurer_name = "Режим совместимости: Conjurer"
  mod_compat_mode_conjurer_desc = "У некоторых людей могут возникнуть проблемы с тем, что этот мод \n не загружается вместе с модом Conjurer должным образом. \nЕсли это произошло, попробуйте включить этот параметр и загрузить \n мод Conjurer снова. \n \nЭта опция включена по умолчанию, но может быть выключена, если вы хотите, \n чтобы пиксельные сцены и боссы появлялись в мирах Conjurer. \n \nЕсли Conjurer всё ещё не загружается, несмотря на включение этого параметра, \n хотя это маловероятно, может быть проблема совместимости мода с чем-то \n другим, возможно, попробуйте отключить все моды поочерёдно, \n чтобы найти проблемный. \nЕсли ничего не помогает, пожалуйста, сообщите мне об этом, написав \n сообщение об ошибке. \nМне будет проще всего связаться и изучить ваше сообщение из discord: \n https://discord.gg/gtyGnv8Pxk \n [ТОЛЬКО НА АНГЛИЙСКОМ]"
  mod_compat_mode_spell_evolution_name = "Режим совместимости: Spell Evolution"
  mod_compat_mode_spell_evolution_desc = "Включите этот параметр, если вы играете с модом Spell Evolution, \n чтобы исправить ошибки в нём.\n \nНасколько я могу судить, ошибка в Spell Evolutions приводит к тому, \n что он ломается, если модифицированное заклинание \n использует ключи перевода для своего имени и/или описания. \n \nК сожалению, я ничего не могу с этим поделать, поскольку это не мой \n мод, и у меня нет намерения удалять ключи перевода, поскольку \n я надеюсь использовать их однажды в случае, если мне \n предложат перевести мод на другие языки. \nОднако, я могу сделать настройку, которая позволит вам \n использовать заклинания без ключей перевода, чтобы обойти эту \n проблему."

end

local mod_id = "mo_creeps"
mod_settings_version = 1
mod_settings = 
{
  {
    image_filename = "mods/mo_creeps/files/ui_gfx/interface_gfx/sunlight.png",
    ui_fn = mod_setting_image,
  },
  {
    id = "congacat_cat_immortal",
    ui_name = congacat_cat_immortal_name,
    ui_description = congacat_cat_immortal_desc,
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "fairy_immortality",
    ui_name = fairy_immortality_name,
    ui_description = fairy_immortality_desc,
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "motd_setting",
    ui_name = motd_setting_name,
    ui_description = motd_setting_desc,
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "seasonal_events",
    ui_name = seasonal_events_name,
    ui_description = seasonal_events_desc,
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "boss_health_multiplayer",
    ui_name = boss_health_multiplayer_name,
    ui_description = boss_health_multiplayer_desc,
    value_default = 100,
    value_min = 100,
    value_max = 1000,
    value_display_multiplier = 1,
    value_display_formatting = boss_health_multiplayer_formatting,
    scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
  },
  {
    id = "particle_reduction",
    ui_name = particle_reduction_name,
    ui_description = particle_reduction_desc,
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "mod_compat_mode_conjurer",
    ui_name = mod_compat_mode_conjurer_name,
    ui_description = mod_compat_mode_conjurer_desc,
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "mod_compat_mode_spell_evolution",
    ui_name = mod_compat_mode_spell_evolution_name,
    ui_description = mod_compat_mode_spell_evolution_desc,
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },

}

--statue settings unlocks
local statue_count = 0

--1.0.0
if HasFlagPersistent( "mocreeps_card_unlocked_divinebeing" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreeps_card_unlocked_boss_toxic_worm" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreeps_card_unlocked_musical_boss" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreeps_card_unlocked_blob_boss" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreeps_card_unlocked_divine_liquid" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreeps_card_unlocked_donated_beggar" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreeps_card_unlocked_rage_aura" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreeps_card_unlocked_cat_secret" ) then
  statue_count = statue_count + 1
end

--1.1.0
if HasFlagPersistent( "mocreeps_essence_fungus" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreep_moon_fungus_unlock" ) then
  statue_count = statue_count + 1
end
if HasFlagPersistent( "mocreep_misc_pandora_chest_rain" ) then
  statue_count = statue_count + 1
end

--Todo: add translation keys for these, these aren't finished yet though, not even attainable as of writing, so I'll decide if I want to keep it or not later

if statue_count >= 12 then
  table.insert(mod_settings,
  {
    category_id = "seasonal_events_forced",
    ui_name = "Forced Seasonal Events",
    ui_description = "A list of Seasonal Events which can be forced",
    settings = {
      {
        id = "seasonal_events_forced_april_fools",
        ui_name = "Forced April Fools",
        ui_description = "Is the April Fools holiday forcefully enabled?",
        value_default = false,
        scope = MOD_SETTING_SCOPE_NEW_GAME,
      },
      {
        id = "seasonal_events_forced_birthday",
        ui_name = "Forced Birthday",
        ui_description = "Is the More Creeps Birthday holiday forcefully enabled?",
        value_default = false,
        scope = MOD_SETTING_SCOPE_NEW_GAME,
      },
      {
        id = "seasonal_events_forced_halloween",
        ui_name = "Forced Halloween",
        ui_description = "Is Halloween forcefully enabled?",
        value_default = false,
        scope = MOD_SETTING_SCOPE_NEW_GAME,
      },
      {
        id = "seasonal_events_forced_smissmass",
        ui_name = "Forced Smissmass",
        ui_description = "Is the Smissmass holiday forcefully enabled?",
        value_default = false,
        scope = MOD_SETTING_SCOPE_NEW_GAME,
      }
    }
  })
end

function ModSettingsUpdate( init_scope )
	local old_version = mod_settings_get_version( mod_id )
	mod_settings_update( mod_id, mod_settings, init_scope )
end

function ModSettingsGuiCount()
	return mod_settings_gui_count( mod_id, mod_settings )
end

function ModSettingsGui( gui, in_main_menu )
	mod_settings_gui( mod_id, mod_settings, gui, in_main_menu )
end