data:extend(
{
  {
    type = "technology",
    name = "phosphorus-processing-1",
    icon_size = 128,
    icon = "__Clowns-Processing__/graphics/technology/phosphorus-tech.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "crushed-stone-sorting"
      },
      {
        type = "unlock-recipe",
        recipe = "white-phosphorus-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "phosphoric-acid-1"
      },
    },
    prerequisites = {"basic-chemistry-2", "angels-metallurgy-2", "angels-sulfur-processing-1", "ore-crushing"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30,
      count = 50
    },
    order = "e"
  },
	{
			type = "technology",
			name = "phosphorus-processing-2",
			icon_size = 128,
			icon = "__Clowns-Processing__/graphics/technology/phosphorus-tech.png",
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "white-phosphorus-smelting-2"
				},
			},
			prerequisites = {"phosphorus-processing-1", "angels-metallurgy-3"},
			unit =
			{
				ingredients =
				{
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
          {"chemical-science-pack", 1}
				},
				time = 30,
				count = 100
			},
			order = "e"
		},
	}
)
