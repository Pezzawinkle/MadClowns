if not clowns.special_vanilla then
	data:extend(
	{
		{
			type = "recipe",
			name = "manganese-pure-processing",
			category = "angels-ore-sorting-2",
			subgroup = "angels-ore-sorting-advanced",

			allow_decomposition = false,
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="clowns-ore6-crushed", amount=2},
				{type="item", name="angels-ore2-crushed", amount=2},
				{type="item", name="angels-catalysator-brown", amount=1},
			},
			results =
			{
				{type="item", name="angels-manganese-ore", amount=4},
			},
			icons =
			{
				{
					icon = "__Clowns-Processing__/graphics/icons/sorting.png"
				},
				{
					icon = "__angelssmeltinggraphics__/graphics/icons/ore-manganese.png",
					scale = 0.5,
					shift = {8, 8},
				},

			},
			icon_size = 32,
			order = "o-a"--Just after Uranium
		},
		{
			type = "recipe",
			name = "phosphorus-pure-processing",
			category = "angels-ore-sorting",
			subgroup = "angels-ore-sorting-advanced",
			allow_decomposition = false,
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="clowns-ore5-crushed", amount=2},
				{type="item", name="angels-ore6-crushed", amount=2},
				{type="item", name="angels-catalysator-brown", amount=1},
			},
			results =
			{
				{type="item", name="phosphorus-ore", amount=4},
			},
			icons =
			{
				{
					icon = "__Clowns-Processing__/graphics/icons/sorting.png"
				},
				{
					icon = "__Clowns-Processing__/graphics/icons/phosphorus-ore.png",
					scale = 0.5,
					shift = {8, 8},
				},

			},
			icon_size = 32,
			order = "o-a"--Just after Uranium
		},
		{
			type = "recipe",
			name = "chrome-pure-processing",
			category = "angels-ore-sorting-3",
			subgroup = "angels-ore-sorting-advanced",
			allow_decomposition = false,
			enabled = false,
			energy_required = 1.5,
			ingredients =
			{
				{type="item", name="clowns-ore7-crystal", amount=2},
				{type="item", name="angels-ore1-crystal", amount=2},
				{type="item", name="angels-catalysator-orange", amount=1},
			},
			results =
			{
				{type="item", name="angels-chrome-ore", amount=4},
			},
			icons =
			{
				{
					icon = "__Clowns-Processing__/graphics/icons/sorting.png"
				},
				{
					icon = "__angelssmeltinggraphics__/graphics/icons/ore-chrome.png",
					scale = 0.5,
					shift = {8, 8},
				},

			},
			icon_size = 32,
			order = "o-a"--Just after Uranium
		},
		{
			type = "recipe",
			name = "magnesium-pure-processing",
			category = "angels-ore-sorting-2",
			subgroup = "angels-ore-sorting-advanced",
			allow_decomposition = false,
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="clowns-ore4-chunk", amount=2},
				{type="item", name="clowns-resource1", amount=20},
				{type="item",name="angels-ore3-chunk",amount=2},
				{type="item",name="angels-ore4-chunk",amount=2},
				{type="item", name="angels-catalysator-green", amount=1},
			},
			results =
			{
				{type="item", name="magnesium-ore", amount=6},
			},
			icons =
			{
				{
					icon = "__Clowns-Processing__/graphics/icons/sorting.png"
				},
				{
					icon = "__Clowns-Processing__/graphics/icons/magnesium-ore.png",
					scale = 0.5,
					shift = {8, 8},
				},

			},
			icon_size = 32,
			order = "o-a"--Just after Uranium
		},
		{
			type = "recipe",
			name = "platinum-pure-processing",
			category = "angels-ore-sorting-4",
			subgroup = "angels-ore-sorting-advanced",
			allow_decomposition = false,
			enabled = false,
			energy_required = 1.5,
			ingredients =
			{
				{type="item", name="clowns-ore2-pure", amount=2},
				{type="item", name="angels-ore4-pure", amount=2},
				{type="item", name="angels-ore5-pure", amount=2},
				{type="item", name="angels-catalysator-orange", amount=1},
			},
			results =
			{
				{type="item", name="angels-platinum-ore", amount=6},
			},
			icons =
			{
				{
					icon = "__Clowns-Processing__/graphics/icons/sorting.png"
				},
				{
					icon = "__angelssmeltinggraphics__/graphics/icons/ore-platinum.png",
					scale = 0.5,
					shift = {8, 8},
				},

			},
			icon_size = 32,
			order = "o-a"--Just after Uranium
		},
		{
			type = "recipe",
			name = "osmium-pure-processing",
			category = "angels-ore-sorting-4",
			subgroup = "angels-ore-sorting-advanced",
			allow_decomposition = false,
			enabled = false,
			energy_required = 1.5,
			ingredients =
			{
				{type="item", name="clowns-ore1-pure", amount=2},
				{type="item", name="angels-ore1-pure", amount=2},
				{type="item", name="angels-ore4-pure", amount=2},
				{type="item", name="angels-catalysator-orange", amount=1},
			},
			results =
			{
				{type="item", name="osmium-ore", amount=6},
			},
			icons =
			{
				{
					icon = "__Clowns-Processing__/graphics/icons/sorting.png"
				},
				{
					icon = "__Clowns-Processing__/graphics/icons/osmium-ore.png",
					scale = 0.5,
					shift = {8, 8},
				},

			},
			icon_size = 32,
			order = "o-a"--Just after Uranium
		},
	}
)
end

if mods["Clowns-AngelBob-Nuclear"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "thorium-pure-processing",
			category = "angels-ore-sorting-4",
			subgroup = "angels-ore-sorting-advanced",
			allow_decomposition = false,
			enabled = false,
			energy_required = 1.5,
			ingredients =
			{
				{type="item", name="clowns-ore3-crystal", amount=2},
				{type="item", name="angels-ore2-crystal", amount=2},
				{type="item", name="angels-ore5-crystal", amount=2},
				{type="item", name="angels-catalysator-orange", amount=1}
			},
			results =
			{
				{type="item", name="thorium-ore", amount=3}
			},
			icons =
			{
				{
					icon = "__Clowns-Processing__/graphics/icons/sorting.png"
				},
				{
					icon = "__Clowns-Nuclear__/graphics/icons/ore-5.png",
					scale = 0.5,
					shift = {8, 8},
					tint = {r = 1, g = 1, b = 0.25}
				},

			},
			icon_size = 32,
			order = "o-a"--Just after Uranium
		}
	}
)
end
