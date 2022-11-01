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
local boss_health_multiplayer_desc = "Multiply all Bosses health by this much. \nFor those who seek extra durable opponents. \nDoes not affect Kolmisilma \nMinibosses will also have their health boosted by a partial amount. \nThis can be changed mid-run but may not update for all bosses, remember to restart after updating the multiplier.\n \nFor Modders: \nIf your mod isn't listed in the compatibility section of the mod page, \nthis likely won't boost it, you'll need to add a lua component to your bosses. \nDo not hesitate to contact me for instructions or help if needed. \nIt would be easiest for me to respond to you on discord, Conga Lyne#2452"
local mod_compat_mode_conjurer_name = "Conjurer extra Compatibility mode"
local mod_compat_mode_conjurer_desc = "Some people may have issues with this mod not loading into Conjurer properly. \nIf this happens, try enabling this option and loading conjurer again. \n \nThis option is on by default but can be turned off if you wish to \nhave the pixel scenes & bosses appear in conjurer worlds. \n \nIf Conjurer still fails to load despite having this turned on, although unlikely, \nit may be a mod compatibility issue with something else, \nperhaps try disabling mods to find the troublesome one. \n \nIf nothing else works please let me know to by filing a bug report to me. \nIt would be easiest for me to reach & investigate your report at the discord link below: \nhttps://discord.gg/gtyGnv8Pxk"
local mod_compat_mode_spell_evolution_name = "Spell Evolution Compatibility Mode"
local mod_compat_mode_spell_evolution_desc = "Turn this setting on if youre playing with the Spell Evolution mod to fix it.\n \nAs far as I can tell, a bug in Spell Evolutions causes it to break if a modded spell \nUses translation keys for their name and/or description. \n \nUnfortunately there's nothing I can do about this as it's not my mod, \nand I have no intention to remove the translation keys \nas I hope to use them one day in the event \nIm offered a translation for the mod to another language. \nHowever, I can put a setting in to optionally let you use the spells without \ntranslation keys to get around the issue."


--[[if currentLang == "русский" then

  congacat_cat_immortal_name = "RUSSIA"

end]]-- Russia Lang translations go here

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
    value_display_formatting = " $0% HP",
    scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
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
