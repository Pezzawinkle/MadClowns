data:extend(
{
	{
		type = "technology",
		name = "advanced-magnesium-smelting",
		icon_size = 128,
		icon = "__Clowns-Processing__/graphics/technology/smelting-magnesium.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "magnesium-ore-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "magnesium-processed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "magnesium-pellet-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "molten-magnesium-smelting"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-plate-magnesium"
			},
		},
		prerequisites = {"ore-processing-3", "water-treatment-4"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1}
			},
			time = 30,
			count = 100
		},
		order = "e"
	},
}
)