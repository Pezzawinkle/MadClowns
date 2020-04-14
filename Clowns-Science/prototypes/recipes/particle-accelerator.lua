--PARAMETERS
local energy = 2
local amount_param = 1

--BUILD RESULTS

local results_1 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_1, {type="item", name="omni-pack", amount=amount_param, probability=0.4})
end
table.insert(results_1, {type="item", name="automation-science-pack", amount=amount_param, probability=0.4})
table.insert(results_1, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.4})
table.insert(results_1, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.4})


local results_2 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_2, {type="item", name="omni-pack", amount=amount_param, probability=0.3})
end
table.insert(results_2, {type="item", name="automation-science-pack", amount=amount_param, probability=0.3})
table.insert(results_2, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.3})
table.insert(results_2, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.3})
table.insert(results_2, {type="item", name="military-science-pack", amount=amount_param, probability=0.3})
table.insert(results_2, {type="item", name="production-science-pack", amount=amount_param, probability=0.3})

local results_3 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_3, {type="item", name="omni-pack", amount=amount_param, probability=0.2})
end
table.insert(results_3, {type="item", name="automation-science-pack", amount=amount_param, probability=0.2})
table.insert(results_3, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.2})
table.insert(results_3, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.2})
table.insert(results_3, {type="item", name="military-science-pack", amount=amount_param, probability=0.2})
table.insert(results_3, {type="item", name="production-science-pack", amount=amount_param, probability=0.2})
if data.raw.recipe["advanced-logistic-science-pack"] then
	table.insert(results_3, {type="item", name="advanced-logistic-science-pack", amount=amount_param, probability=0.2})
end
table.insert(results_3, {type="item", name="utility-science-pack", amount=amount_param, probability=0.2})

local results_4 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_4, {type="item", name="omni-pack", amount=amount_param, probability=0.1})
end
table.insert(results_4, {type="item", name="automation-science-pack", amount=amount_param, probability=0.1})
table.insert(results_4, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.1})
table.insert(results_4, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.1})
table.insert(results_4, {type="item", name="military-science-pack", amount=amount_param, probability=0.1})
table.insert(results_4, {type="item", name="production-science-pack", amount=amount_param, probability=0.1})
if data.raw.recipe["advanced-logistic-science-pack"] then
	table.insert(results_4, {type="item", name="advanced-logistic-science-pack", amount=amount_param, probability=0.1})
end
table.insert(results_4, {type="item", name="utility-science-pack", amount=amount_param, probability=0.1})
table.insert(results_4, {type="item", name="space-science-pack", amount=amount_param, probability=0.1})

--RECIPES

data:extend(
{
	{
		type = "recipe",
		name = "particle-accelerator-1",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy,
		subgroup = "particle-accelerator-recipes",
		order = "a",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_1.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients = {},
		results = results_1
	},
	{
		type = "recipe",
		name = "particle-accelerator-2",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy,
		subgroup = "particle-accelerator-recipes",
		order = "b",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_2.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients = {},
		results = results_2
	},
	{
		type = "recipe",
		name = "particle-accelerator-3",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy,
		subgroup = "particle-accelerator-recipes",
		order = "c",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_3.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients = {},
		results = results_3
	},
	{
		type = "recipe",
		name = "particle-accelerator-4",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy,
		subgroup = "particle-accelerator-recipes",
		order = "d",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_4.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		ingredients = {},
		results = results_4
	}
}
)
