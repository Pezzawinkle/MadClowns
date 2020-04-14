angelsmods.functions.allow_productivity("facility-science-pack-1")
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

if data.raw.recipe["facility-omni-pack"] then
	table.insert(data.raw["technology"]["facility-1"].effects, {type = "unlock-recipe", recipe = "facility-omni-pack"})
end

if settings.startup["allow-space-science-generation"].value == true then
	table.insert(data.raw["technology"]["particle-accelerator-2"].effects, {type = "unlock-recipe", recipe = "particle-accelerator-4"})
end

if mods["omnimatter_science"] and mods["bobplates"] then
	data.raw.recipe["production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
			icon_size=64,
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_1.png",
			icon_size=32,
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}
		}
	}
	data.raw.recipe["alt1-production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
			icon_size=32,
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_2.png",
			icon_size=64,
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}
		}
	}
	data.raw.recipe["alt2-production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
			icon_size=64,
		},
		{
			icon = "__angelsrefining__/graphics/icons/num_3.png",
			icon_size=32,
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}
		}
	}
	data.raw.recipe["facility-production-science-pack"].icons =
	{
		{
			icon = "__omnimatter_science__/graphics/icons/production-science-pack.png",
			icon_size=64,
		},
		{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size=32,
			scale = 0.32,
			shift = {-12, -12}
		}
	}
end


if settings.startup["bobmods-tech-colorupdate"] and settings.startup["bobmods-tech-colorupdate"].value == true and not data.raw.recipe["omni-pack"] then
	data.raw.recipe["facility-science-pack-1"].icons[1] = {icon = "__base__/graphics/icons/utility-science-pack.png",icon_size=64}
	data.raw.recipe["facility-science-pack-2"].icons[1] = {icon = "__base__/graphics/icons/automation-science-pack.png",icon_size=64}
	data.raw.recipe["facility-high-tech-science-pack"].icons[1] = {icon = "__base__/graphics/icons/logistic-science-pack.png",icon_size=64}

	data.raw.recipe["automation-science-pack"].icons[1] = {icon = "__base__/graphics/icons/utility-science-pack.png",icon_size=64}
	data.raw.recipe["alt1-science-pack-1"].icons[1] = {icon = "__base__/graphics/icons/utility-science-pack.png",icon_size=64}
	data.raw.recipe["alt2-science-pack-1"].icons[1] = {icon = "__base__/graphics/icons/utility-science-pack.png",icon_size=64}

	data.raw.recipe["logistic-science-pack"].icons[1] = {icon = "__base__/graphics/icons/automation-science-pack.png",icon_size=64}
	data.raw.recipe["alt1-science-pack-2"].icons[1] = {icon = "__base__/graphics/icons/automation-science-pack.png",icon_size=64}
if data.raw.recipe["utility-science-pack"].icon then
	data.raw.recipe["utility-science-pack"].icon={icon = "__base__/graphics/icons/logistic-science-pack.png",icon_size=64}
else
	data.raw.recipe["utility-science-pack"].icons[1] = {icon = "__base__/graphics/icons/logistic-science-pack.png",icon_size=64}
end
	data.raw.recipe["alt1-high-tech-science-pack"].icons[1] = {icon = "__base__/graphics/icons/logistic-science-pack.png",icon_size=64}
	data.raw.recipe["alt2-high-tech-science-pack"].icons[1] = {icon = "__base__/graphics/icons/logistic-science-pack.png",icon_size=64}
end
