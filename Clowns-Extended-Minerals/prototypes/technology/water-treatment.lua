data:extend(
{
	{
		type = "technology",
		name = "water-washing-3",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/washing-plant-tech.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "clowns-resource1-sluicing-advanced"
			},
		},
		prerequisites = {"water-washing-2"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
			},
			time = 30,
			count = 30
		},
		order = "e"
	}
}
)