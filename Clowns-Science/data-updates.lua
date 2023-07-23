
if data.raw.recipe["facility-omni-pack"] then
	table.insert(data.raw["technology"]["facility-1"].effects, {type = "unlock-recipe", recipe = "facility-omni-pack"})
end

if settings.startup["allow-space-science-generation"].value == true then
	table.insert(data.raw["technology"]["particle-accelerator-2"].effects, {type = "unlock-recipe", recipe = "particle-accelerator-4"})
end