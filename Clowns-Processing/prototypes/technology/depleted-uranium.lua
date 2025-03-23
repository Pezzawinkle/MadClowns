if settings.startup["depleted-uranium"].value then
	data:extend(
	{
		{
			type = "technology",
			name = "advanced-depleted-uranium-smelting-1",
			icon_size = 128,
			icon = "__Clowns-Processing__/graphics/technology/smelting-depleted-uranium.png",
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "depleted-uranium-ore-processing"
				},
				{
					type = "unlock-recipe",
					recipe = "depleted-uranium-processed-processing"
				},
				{
					type = "unlock-recipe",
					recipe = "depleted-uranium-pellet-smelting"
				},
				{
					type = "unlock-recipe",
					recipe = "casting-powder-depleted-uranium-1"
				},
				{
					type = "unlock-recipe",
					recipe = "clowns-plate-depleted-uranium"
				},
			},
			prerequisites = {"nuclear-power", "powder-metallurgy-4", "ore-processing-3"},
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
				count = 100
			},
			order = "e"
		},
		{
			type = "technology",
			name = "advanced-depleted-uranium-smelting-2",
			icon_size = 128,
			icon = "__Clowns-Processing__/graphics/technology/smelting-depleted-uranium.png",
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "casting-powder-depleted-uranium-2"
				},
				{
					type = "unlock-recipe",
					recipe = "casting-powder-depleted-uranium-3"
				},
				{
					type = "unlock-recipe",
					recipe = "casting-powder-depleted-uranium-4"
				},
			},
			prerequisites = {"advanced-depleted-uranium-smelting-1", "advanced-osmium-smelting", "powder-metallurgy-5", "angels-aluminium-smelting-2"},
			unit =
			{
				ingredients =
				{
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 1},
          {"production-science-pack", 1},
					{"utility-science-pack", 1}
				},
				time = 30,
				count = 100
			},
			order = "e"
		},
	}
	)
end
