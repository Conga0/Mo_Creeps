local mm_insert = {
    {
    material="mocreeps_mudman_mud",
    cost=1600,
    },
    {
    material="mocreep_magic_liquid_attunium",
    cost=1600,
    },
}

--[[
for k, v in ipairs(ms_insert) do
table.insert(materials_standard, v)
end
]]--

for k, v in ipairs(mm_insert) do
table.insert(materials_magic, v)
end