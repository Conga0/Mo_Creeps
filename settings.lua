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
    value_default = false,
    scope = MOD_SETTING_SCOPE_NEW_GAME,
  },
  {
    id = "fairy_immortality",
    ui_name = "Fairy Immortality",
    ui_description = "Are Keiju immortal?",
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
