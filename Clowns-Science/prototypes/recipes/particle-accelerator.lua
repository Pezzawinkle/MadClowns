--PARAMETERS
local energy = 4
local multi = clowns.tables.multi_pack

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
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png", icon_size = 32
			},
		}, 1 , clowns.icon_tint),
		ingredients = {},
		results = multi[1]
	},
	{
		type = "recipe",
		name = "particle-accelerator-2",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy*2,
		subgroup = "particle-accelerator-recipes",
		order = "b",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png", icon_size = 32
			},
		}, 2 , clowns.icon_tint),
		ingredients = {},
		results = multi[2]
	},
	{
		type = "recipe",
		name = "particle-accelerator-3",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy*3,
		subgroup = "particle-accelerator-recipes",
		order = "c",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png", icon_size = 32
			},
		}, 3 , clowns.icon_tint),
		ingredients = {},
		results = multi[3]
	},
	{
		type = "recipe",
		name = "particle-accelerator-4",
		category = "particle-accelerator",
		enabled = false,
		energy_required = energy*4,
		subgroup = "particle-accelerator-recipes",
		order = "d",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/multi-science.png", icon_size = 32
			},
		}, 4 , clowns.icon_tint),
		ingredients = {},
		results = multi[4]
	}
}
)
