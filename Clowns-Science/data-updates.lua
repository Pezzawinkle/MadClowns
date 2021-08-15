for _,tech in pairs(clowns.tables.tech_unlock) do
  log(serpent.block(tech))
  table.insert(data.raw["technology"][tech[1] .."-science-pack"].effects,{type = "unlock-recipe", recipe = tech[1].."-science-pack-alt"..tech[2]})
end
--[[angelsmods.functions.allow_productivity("facility-science-pack-1")
angelsmods.functions.allow_productivity("facility-science-pack-2")
angelsmods.functions.allow_productivity("facility-science-pack-3")
angelsmods.functions.allow_productivity("facility-production-science-pack")
angelsmods.functions.allow_productivity("facility-military-science-pack")
angelsmods.functions.allow_productivity("facility-high-tech-science-pack")

if data.raw.recipe["omni-pack"] then
	angelsmods.functions.allow_productivity("facility-omni-pack")
end
if data.raw.recipe["logistic-science-pack"] then
	angelsmods.functions.allow_productivity("facility-logistic-science-pack")
	angelsmods.functions.allow_productivity("alt1-logistic-science-pack")
end

if data.raw.recipe["alt2-military-science-pack"] then
	angelsmods.functions.allow_productivity("alt2-military-science-pack")
end

angelsmods.functions.allow_productivity("alt1-science-pack-1")
angelsmods.functions.allow_productivity("alt2-science-pack-1")
angelsmods.functions.allow_productivity("alt1-science-pack-2")
angelsmods.functions.allow_productivity("alt1-science-pack-3")
angelsmods.functions.allow_productivity("alt2-science-pack-3")
angelsmods.functions.allow_productivity("alt1-production-science-pack")
angelsmods.functions.allow_productivity("alt2-production-science-pack")
angelsmods.functions.allow_productivity("alt1-high-tech-science-pack")
angelsmods.functions.allow_productivity("alt2-high-tech-science-pack")
angelsmods.functions.allow_productivity("alt1-military-science-pack")
]]
if data.raw.recipe["facility-omni-pack"] then
	table.insert(data.raw["technology"]["facility-1"].effects, {type = "unlock-recipe", recipe = "facility-omni-pack"})
end

if settings.startup["allow-space-science-generation"].value == true then
	table.insert(data.raw["technology"]["particle-accelerator-2"].effects, {type = "unlock-recipe", recipe = "particle-accelerator-4"})
end