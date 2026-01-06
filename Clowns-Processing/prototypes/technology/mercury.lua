data:extend(
{
	{
		type = "technology",
		name = "mercury-processing-1",
		icon_size = 128,
		icon = "__Clowns-Processing__/graphics/technology/mercury-tech.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "angels-thermal-filtering-mercury"
			},
		},
		prerequisites = {"angels-thermal-water-extraction-2"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30,
			count = 50
		},
		order = "e"
	},
}
)
if mods["angelsbioprocessing"] then
  data:extend(
  {

    {
      type = "technology",
      name = "mercury-processing-2",
      icon_size = 128,
      icon = "__Clowns-Processing__/graphics/technology/mercury-tech.png",
      effects =
      {
        {
          type = "unlock-recipe",
          recipe = "algae-violet"
        },
        {
          type = "unlock-recipe",
          recipe = "methylmercury-algae"
        },
        {
          type = "unlock-recipe",
          recipe = "dimethylmercury-synthesis"
        }, 
        {
          type = "unlock-recipe",
          recipe = "neurotoxin-capsule"
        },
      },
      prerequisites = {"mercury-processing-1", "bio-processing-blue", "military-3"},
      unit =
      {
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
          {"military-science-pack", 1},
        },
        time = 30,
        count = 50
      },
      order = "e"
    },
  }
  )
end