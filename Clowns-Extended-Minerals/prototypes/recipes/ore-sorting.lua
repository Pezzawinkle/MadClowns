local rawmulti = angelsmods.marathon.rawmulti

data:extend(
{

	--TIER 1
	
	{
		type = "recipe",
		name = "clowns-ore1-crushed-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t1",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore1-crushed", 4}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="iron-ore", amount=2},
				{type="item", name="tin-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore1-crushed", 6 * rawmulti}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="iron-ore", amount=2},
				{type="item", name="tin-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/crushed.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-crushed-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t1",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore2-crushed", 4}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="tin-ore", amount=2},
				{type="item", name="lithium-chloride", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = {{"clowns-ore2-crushed", 6 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="tin-ore", amount=2},
				{type="item", name="lithium-chloride", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/crushed.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-crushed-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t1",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore3-crushed", 4}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="lead-ore", amount=2},
				{type="item", name="solid-calcium-sulfate", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = {{"clowns-ore3-crushed", 6 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="lead-ore", amount=2},
				{type="item", name="solid-calcium-sulfate", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/crushed.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-crushed-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t1",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore4-crushed", 4}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="manganese-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = {{"clowns-ore4-crushed", 6 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="manganese-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/crushed.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-crushed-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t1",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore5-crushed", 4}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="phosphorus-ore", amount=2},
				{type="item", name="solid-limestone", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = {{"clowns-ore5-crushed", 6 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="phosphorus-ore", amount=2},
				{type="item", name="solid-limestone", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/crushed.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-crushed-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t1",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore6-crushed", 4}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="manganese-ore", amount=2},
				{type="item", name="quartz", amount=1},
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = {{"clowns-ore6-crushed", 6 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="manganese-ore", amount=2},
				{type="item", name="quartz", amount=1},
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/crushed.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "f",
	},	
	{
		type = "recipe",
		name = "clowns-ore7-crushed-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t1",
		enabled = false,
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients ={{"clowns-ore7-crushed", 4}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="lead-ore", amount=1},
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = {{"clowns-ore7-crushed", 6 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="lead-ore", amount=1},
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/crushed.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "g",
	},
	
	--TIER 2

	{
		type = "recipe",
		name = "clowns-ore1-chunk-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t2",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients ={{"clowns-ore1-chunk", 5}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="iron-ore", amount=2},
				{type="item", name="tin-ore", amount=1},
				{type="item", name="fluorite-ore", amount=1},
			}
		},
		expensive =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients = {{"clowns-ore1-chunk", 9 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="iron-ore", amount=2},
				{type="item", name="tin-ore", amount=1},
				{type="item", name="fluorite-ore", amount=1},
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/chunk.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-chunk-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t2",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients ={{"clowns-ore2-chunk", 5}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="tin-ore", amount=2},
				{type="item", name="lithium-chloride", amount=1},
				{type="item", name="nickel-ore", amount=1}
			}
		},
		expensive =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients = {{"clowns-ore2-chunk", 9 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="tin-ore", amount=2},
				{type="item", name="lithium-chloride", amount=1},
				{type="item", name="nickel-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/chunk.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-chunk-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t2",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients ={{"clowns-ore3-chunk", 6}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="lead-ore", amount=2},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="silver-ore", amount=1},
				{type="item", name="zinc-ore", amount=1}
			}
		},
		expensive =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients = {{"clowns-ore3-chunk", 9 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="lead-ore", amount=2},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="silver-ore", amount=1},
				{type="item", name="zinc-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/chunk.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-chunk-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t2",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients ={{"clowns-ore4-chunk", 6}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="manganese-ore", amount=1},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="zinc-ore", amount=1}
			}
		},
		expensive =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients = {{"clowns-ore4-chunk", 9 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="manganese-ore", amount=1},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="zinc-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/chunk.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-chunk-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t2",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients ={{"clowns-ore5-chunk", 6}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="phosphorus-ore", amount=2},
				{type="item", name="solid-limestone", amount=1},
				{type="item", name="iron-ore", amount=1},
				{type="item", name="lead-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients = {{"clowns-ore5-chunk", 9 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="phosphorus-ore", amount=2},
				{type="item", name="solid-limestone", amount=1},
				{type="item", name="iron-ore", amount=1},
				{type="item", name="lead-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/chunk.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-chunk-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t2",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients ={{"clowns-ore6-chunk", 6}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="manganese-ore", amount=2},
				{type="item", name="quartz", amount=1},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="fluorite-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients = {{"clowns-ore6-chunk", 9 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="manganese-ore", amount=2},
				{type="item", name="quartz", amount=1},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="fluorite-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/chunk.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "clowns-ore7-chunk-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t2",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients ={{"clowns-ore7-chunk", 6}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="cobalt-ore", amount=1},
				{type="item", name="chrome-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients = {{"clowns-ore7-chunk", 9 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=2},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="cobalt-ore", amount=1},
				{type="item", name="chrome-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/chunk.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "g",
	},

	--TIER 3

	{
		type = "recipe",
		name = "clowns-ore1-crystal-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t3",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore1-crystal", 8}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="iron-ore", amount=3},
				{type="item", name="tin-ore", amount=1},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="rutile-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore1-crystal", 10 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="iron-ore", amount=3},
				{type="item", name="tin-ore", amount=1},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="rutile-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/crystal.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-crystal-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t3",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore2-crystal", 7}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="tin-ore", amount=3},
				{type="item", name="lithium-chloride", amount=1},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="bauxite-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore2-crystal", 10 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="tin-ore", amount=3},
				{type="item", name="lithium-chloride", amount=1},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="bauxite-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/crystal.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-crystal-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t3",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore3-crystal", 8}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="lead-ore", amount=3},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="silver-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="thorium-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore3-crystal", 10 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="lead-ore", amount=3},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="silver-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="thorium-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/crystal.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-crystal-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t3",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore4-crystal", 8}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=3},
				{type="item", name="manganese-ore", amount=1},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="gold-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore4-crystal", 10 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=3},
				{type="item", name="manganese-ore", amount=1},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="gold-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/crystal.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-crystal-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t3",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore5-crystal", 8}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="phosphorus-ore", amount=3},
				{type="item", name="solid-limestone", amount=1},
				{type="item", name="iron-ore", amount=1},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="uranium-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore5-crystal", 10 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="phosphorus-ore", amount=3},
				{type="item", name="solid-limestone", amount=1},
				{type="item", name="iron-ore", amount=1},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="uranium-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/crystal.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-crystal-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t3",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore6-crystal", 8}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="manganese-ore", amount=3},
				{type="item", name="quartz", amount=1},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="phosphorus-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore6-crystal", 10 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="manganese-ore", amount=3},
				{type="item", name="quartz", amount=1},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="phosphorus-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/crystal.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "clowns-ore7-crystal-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t3",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore7-crystal", 8}},
			results=
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=3},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="cobalt-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="thorium-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore7-crystal", 10 * rawmulti}},
			results =
			{
				{type="item", name="slag", amount=1},
				{type="item", name="copper-ore", amount=3},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="cobalt-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="thorium-ore", amount=1},
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/crystal.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "g",
	},
	
	--TIER 4
	
	{
		type = "recipe",
		name = "clowns-ore1-pure-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t4",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore1-pure", 9}},
			results=
			{
				{type="item", name="iron-ore", amount=3},
				{type="item", name="tin-ore", amount=2},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="rutile-ore", amount=1},
				{type="item", name="osmium-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore1-pure", 13 * rawmulti}},
			results =
			{
				{type="item", name="iron-ore", amount=3},
				{type="item", name="tin-ore", amount=2},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="rutile-ore", amount=1},
				{type="item", name="osmium-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/pure.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-pure-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t4",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore2-pure", 9}},
			results=
			{
				{type="item", name="tin-ore", amount=3},
				{type="item", name="lithium-chloride", amount=2},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="bauxite-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="platinum-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore2-pure", 13 * rawmulti}},
			results =
			{
				{type="item", name="tin-ore", amount=3},
				{type="item", name="lithium-chloride", amount=2},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="bauxite-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="platinum-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/pure.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-pure-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t4",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore3-pure", 9}},
			results=
			{
				{type="item", name="lead-ore", amount=3},
				{type="item", name="solid-calcium-sulfate", amount=2},
				{type="item", name="silver-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="thorium-ore", amount=1},
				{type="item", name="uranium-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore3-pure", 13 * rawmulti}},
			results =
			{
				{type="item", name="lead-ore", amount=3},
				{type="item", name="solid-calcium-sulfate", amount=2},
				{type="item", name="silver-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="thorium-ore", amount=1},
				{type="item", name="uranium-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/pure.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-pure-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t4",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore4-pure", 9}},
			results=
			{
				{type="item", name="copper-ore", amount=3},
				{type="item", name="manganese-ore", amount=2},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="gold-ore", amount=1},
				{type="item", name="tungsten-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore4-pure", 13 * rawmulti}},
			results =
			{
				{type="item", name="copper-ore", amount=3},
				{type="item", name="manganese-ore", amount=2},
				{type="item", name="nickel-ore", amount=1},
				{type="item", name="zinc-ore", amount=1},
				{type="item", name="gold-ore", amount=1},
				{type="item", name="tungsten-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/pure.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-pure-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t4",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients ={{"clowns-ore5-pure", 9}},
			results=
			{
				{type="item", name="phosphorus-ore", amount=3},
				{type="item", name="solid-limestone", amount=2},
				{type="item", name="iron-ore", amount=1},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="uranium-ore", amount=1},
				{type="item", name="thorium-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore5-pure", 13 * rawmulti}},
			results =
			{
				{type="item", name="phosphorus-ore", amount=3},
				{type="item", name="solid-limestone", amount=2},
				{type="item", name="iron-ore", amount=1},
				{type="item", name="lead-ore", amount=1},
				{type="item", name="uranium-ore", amount=1},
				{type="item", name="thorium-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/pure.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-pure-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t4",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore6-pure", 9}},
			results=
			{
				{type="item", name="manganese-ore", amount=3},
				{type="item", name="quartz", amount=2},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="phosphorus-ore", amount=1},
				{type="item", name="rutile-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore6-pure", 13 * rawmulti}},
			results =
			{
				{type="item", name="manganese-ore", amount=3},
				{type="item", name="quartz", amount=2},
				{type="item", name="solid-calcium-sulfate", amount=1},
				{type="item", name="fluorite-ore", amount=1},
				{type="item", name="phosphorus-ore", amount=1},
				{type="item", name="rutile-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/pure.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "clowns-ore7-pure-processing",
		category = "ore-sorting",
		subgroup = "clowns-ore-sorting-t4",
		allow_decomposition = false,
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore7-pure", 9}},
			results=
			{
				{type="item", name="copper-ore", amount=3},
				{type="item", name="lead-ore", amount=2},
				{type="item", name="cobalt-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="thorium-ore", amount=1},
				{type="item", name="platinum-ore", amount=1}
			},
		},
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients = {{"clowns-ore7-pure", 13 * rawmulti}},
			results =
			{
				{type="item", name="copper-ore", amount=3},
				{type="item", name="lead-ore", amount=2},
				{type="item", name="cobalt-ore", amount=1},
				{type="item", name="chrome-ore", amount=1},
				{type="item", name="thorium-ore", amount=1},
				{type="item", name="platinum-ore", amount=1}
			},
		},
		icons =
		{
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"
			},
			{
				icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/pure.png",
				scale = 0.5,
				shift = {-8, 8},
			}
		},
		icon_size = 32,
		order = "g",
	},
}
)