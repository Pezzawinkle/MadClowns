data:extend(
{
	{
		type = "technology",
		name = "clowns-ore-crushing",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/mechanical-refining.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-crushed"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-crushed"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-crushed"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-crushed"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-crushed"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-crushed"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-crushed"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-crushed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-crushed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-crushed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-crushed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-crushed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-crushed-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-crushed-processing"
			},
		},
		prerequisites = {"ore-crushing"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
			},
			time = 15,
			count = 20
		},
		order = "c-b"
	},
	{
		type = "technology",
		name = "clowns-ore-floatation",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/hydro-refining.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-chunk"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-chunk"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-chunk"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-chunk"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-chunk"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-chunk"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-chunk"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-chunk-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-chunk-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-chunk-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-chunk-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-chunk-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-chunk-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-chunk-processing"
			},
		},
		prerequisites = {"ore-floatation", "clowns-ore-crushing"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30,
			count = 80
		},
		order = "c-b"
	},
	{
		type = "technology",
		name = "clowns-ore-leaching",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/chemical-refining.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-crystal"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-crystal"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-crystal"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-crystal"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-crystal"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-crystal"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-crystal"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-crystal-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-crystal-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-crystal-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-crystal-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-crystal-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-crystal-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-crystal-processing"
			},
		},
		prerequisites = {"ore-leaching", "clowns-ore-floatation"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30,
			count = 80
		},
		order = "c-b"
	},
	{
		type = "technology",
		name = "clowns-ore-refining",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/thermal-refining.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-pure"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-pure"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-pure"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-pure"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-pure"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-pure"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-pure"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore1-pure-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore2-pure-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore3-pure-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore4-pure-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore5-pure-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore6-pure-processing"
			},
			{
				type = "unlock-recipe",
				recipe = "clowns-ore7-pure-processing"
			},
		},
		prerequisites = {"ore-refining", "clowns-ore-leaching"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30,
			count = 80
		},
		order = "c-b"
	}
}
)