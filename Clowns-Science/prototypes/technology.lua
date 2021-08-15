--COMPILE LIST OF PREREQUISITES FOR PARTICLE ACCELERATOR
local prereqs =
{
	"military-2",
	"advanced-electronics",
	"advanced-electronics-2",
	"advanced-material-processing-2",
}

if data.raw.recipe["advanced-logistic-science-pack"] then
	table.insert(prereqs, "logistics-3")
end
if mods["angelspetrochem"] then --i may also activate these with pyanodons
data:extend(
{
	{
		type = "technology",
		name = "facility-1",
		icon = "__Clowns-Science__/graphics/technology/facility.png",
		icon_size = 128,
		prerequisites = {},
		unit =
		{
			count = 20,
			time = 30,
			ingredients =
			{
				{"automation-science-pack", 1}
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "facility-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "automation-science-pack-facility"
			},
			{
				type = "unlock-recipe",
				recipe = "logistic-science-pack-facility"
			}
		}
	},

	{
		type = "technology",
		name = "facility-2",
		icon = "__Clowns-Science__/graphics/technology/facility.png",
		icon_size = 128,
		prerequisites = {"facility-1", "advanced-electronics"},
		unit =
		{
			count = 40,
			time = 30,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1}
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "facility-mk2"
			},
		}
	},

	{
		type = "technology",
		name = "facility-3",
		icon = "__Clowns-Science__/graphics/technology/facility.png",
		icon_size = 128,
		prerequisites = {"facility-2", "advanced-electronics-2"},
		unit =
		{
			count = 60,
			time = 30,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "facility-mk3"
			},
		}
	},
}
)
end
data:extend(
{
	{
		type = "technology",
		name = "particle-accelerator-1",
		icon = "__Clowns-Science__/graphics/technology/particle-accelerator.png",
		icon_size = 128,
		prerequisites = prereqs,
		unit =
		{
			count = 100,
			time = 30,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "particle-accelerator-mk1"
			},
			{
				type = "unlock-recipe",
				recipe = "particle-accelerator-1"
			},
			{
				type = "unlock-recipe",
				recipe = "particle-accelerator-2"
			},
			{
				type = "unlock-recipe",
				recipe = "particle-accelerator-3"
			},
		},
	},
	{
		type = "technology",
		name = "particle-accelerator-2",
		icon = "__Clowns-Science__/graphics/technology/particle-accelerator.png",
		icon_size = 128,
		prerequisites = {"particle-accelerator-1", "rocket-silo"},
		unit =
		{
			count = 200,
			time = 30,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1}
			},
		},
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "particle-accelerator-mk2"
			},
		},
	}
}
)