dofile("data/scripts/lib/mod_settings.lua")

function mod_setting_change_callback( mod_id, gui, in_main_menu, setting, old_value, new_value  )
	print( tostring(new_value) )
end

local mod_id = "mo_creeps"
mod_settings_version = 1
mod_settings = 
{
  {
    id = "congacat_cat_immortal",
    ui_name = "Cat immortality",
    ui_description = "Are cats immortal?",
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "fairy_immortality",
    ui_name = "Fairy Immortality",
    ui_description = "Are Keiju immortal?",
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "mod_compat_mode_conjurer",
    ui_name = "Conjurer extra Compatibility mode",
    ui_description = "Some people may have issues with this mod not loading into Conjurer properly. \nIf this happens, try enabling this option and loading conjurer again. \n \nThis option is on by default but can be turned off if you wish to \nhave the pixel scenes & bosses appear in conjurer worlds. \n \nIf Conjurer still fails to load despite having this turned on, although unlikely, \nit may be a mod compatibility issue with something else, \nperhaps try disabling mods to find the troublesome one. \n \nIf nothing else works please let me know to by filing a bug report to me. \nIt would be easiest for me to reach & investigate your report at the discord link below: \nhttps://discord.gg/gtyGnv8Pxk",
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "motd_setting",
    ui_name = "Message of the Day",
    ui_description = "Will a MOTD be displayed at the start of each run? \nMay contain bonus hints for various secrets.",
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "seasonal_events",
    ui_name = "Seasonal Events",
    ui_description = "Are seasonal events enabled? \nFor example, Halloween, More Creep's Birthday, etc.",
    value_default = true,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "boss_health_multiplayer",
    ui_name = "Boss Health Multiplier",
    ui_description = "Multiply all Bosses health by this much. \nFor those who seek extra durable opponents. \nDoes not affect Kolmisilma \n \nFor Modders: \nIf your mod isn't listed in the compatibility section of the mod page, \nthis likely won't boost it, you'll need to add a lua component to your bosses. \nDo not hesitate to contact me for instructions or help if needed. \nIt would be easiest for me to respond to you on discord, Conga Lyne#2452",
    value_default = 100,
    value_min = 100,
    value_max = 1000,
    value_display_multiplier = 1,
    value_display_formatting = " $0% HP",
    scope = MOD_SETTING_SCOPE_RUNTIME_RESTART,
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
