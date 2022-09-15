
table.insert(status_effects,
{
    id="MOCREEPS_PROTECTION_RADIOACTIVITY_TEMPORARY",
    ui_name="$perk_protection_radioactivity",
    ui_description="$perkdesc_protection_radioactivity",
    ui_icon="data/ui_gfx/status_indicators/toxic_immunity_status.png",
    protects_from_fire=true,
    effect_entity="data/entities/misc/effect_protection_radioactivity.xml",
})
table.insert(status_effects,
{
    id="MOCREEPS_DUCK_CURSE",
    ui_name="Duck Curse",
    ui_description="Their Quacky visions haunt you",
    ui_icon="data/ui_gfx/status_indicators/duck_curse.png",
    protects_from_fire=false,
    effect_entity="mods/mo_creeps/files/entities/misc/duck_curse.xml",
})
table.insert(status_effects,
{
    id="MOCREEPS_MANA_DEGRADATION",
    ui_name="Mana Degradation",
    ui_description="You are loosing Mana Rapidly!!",
    ui_icon="data/ui_gfx/status_indicators/mana_degradation.png",
    effect_entity="mods/mo_creeps/files/entities/misc/effect_mana_degradation.xml",
})
table.insert(status_effects,
{
    id="MOCREEPS_UNSTABLE_TRANSMUTATION",
    ui_name="Unstable Transmutation",
    ui_description="Your being is transmuting nearby matter uncontrollably!",
    ui_icon="mods/mo_creeps/files/ui_gfx/status_indicators/transmutation_unstable.png",
    effect_entity="mods/mo_creeps/files/entities/misc/orb_transmutation_effect.xml",
})

