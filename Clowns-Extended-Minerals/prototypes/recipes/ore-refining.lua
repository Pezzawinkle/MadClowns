local rawmulti = angelsmods.marathon.rawmulti

data:extend(
{
	--TIER 1
	{
		type = "recipe",
		name = "clowns-ore1-crushed",
		category = "ore-sorting-t1",
		subgroup = "clowns-ore-processing-a",
		energy_required = 1,
		enabled = false,
		allow_decomposition = false,
		ingredients ={{"clowns-ore1", 2}},
		results=
		{
			{"clowns-ore1-crushed", 2},
			{"stone-crushed", 1}
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/crushed.png",
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-crushed",
		category = "ore-sorting-t1",
		subgroup = "clowns-ore-processing-a",
		energy_required = 1,
		enabled = false,
		allow_decomposition = false,
		ingredients ={{"clowns-ore2", 2}},
		results=
		{
			{"clowns-ore2-crushed", 2},
			{"stone-crushed", 1}
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/crushed.png",
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-crushed",
		category = "ore-sorting-t1",
		subgroup = "clowns-ore-processing-a",
		energy_required = 1,
		enabled = false,
		allow_decomposition = false,
		ingredients ={{"clowns-ore3", 2}},
		results=
		{
			{"clowns-ore3-crushed", 2},
			{"stone-crushed", 1}
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/crushed.png",
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-crushed",
		category = "ore-sorting-t1",
		subgroup = "clowns-ore-processing-a",
		energy_required = 1,
		enabled = false,
		allow_decomposition = false,
		ingredients ={{"clowns-ore4", 2}},
		results=
		{
			{"clowns-ore4-crushed", 2},
			{"stone-crushed", 1}
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/crushed.png",
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-crushed",
		category = "ore-sorting-t1",
		subgroup = "clowns-ore-processing-a",
		energy_required = 1,
		enabled = false,
		allow_decomposition = false,
		ingredients ={{"clowns-ore5", 2}},
		results=
		{
			{"clowns-ore5-crushed", 2},
			{"stone-crushed", 1}
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/crushed.png",
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-crushed",
		category = "ore-sorting-t1",
		subgroup = "clowns-ore-processing-a",
		energy_required = 1,
		enabled = false,
		allow_decomposition = false,
		ingredients ={{"clowns-ore6", 2}},
		results=
		{
			{"clowns-ore6-crushed", 2},
			{"stone-crushed", 1}
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/crushed.png",
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "clowns-ore7-crushed",
		category = "ore-sorting-t1",
		subgroup = "clowns-ore-processing-a",
		energy_required = 1,
		enabled = false,
		allow_decomposition = false,
		ingredients ={{"clowns-ore7", 2}},
		results=
		{
			{"clowns-ore7-crushed", 2},
			{"stone-crushed", 1}
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/crushed.png",
		icon_size = 32,
		order = "g",
	},
	
	--TIER 2
	{
		type = "recipe",
		name = "clowns-ore1-chunk",
		category = "ore-sorting-t2",
		subgroup = "clowns-ore-processing-b",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore1-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="clowns-ore1-chunk", amount=2},
			{type="fluid", name="water-greenyellow-waste", amount=50},
			{type="item", name="geode-purple", amount=1, probability=0.5},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/chunk.png",
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-chunk",
		category = "ore-sorting-t2",
		subgroup = "clowns-ore-processing-b",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore2-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="clowns-ore2-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-lightgreen", amount=1, probability=0.5},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/chunk.png",
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-chunk",
		category = "ore-sorting-t2",
		subgroup = "clowns-ore-processing-b",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore3-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="clowns-ore3-chunk", amount=2},
			{type="fluid", name="water-red-waste", amount=50},
			{type="item", name="geode-red", amount=1, probability=0.5},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/chunk.png",
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-chunk",
		category = "ore-sorting-t2",
		subgroup = "clowns-ore-processing-b",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore4-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="clowns-ore4-chunk", amount=2},
			{type="fluid", name="water-green-waste", amount=50},
			{type="item", name="geode-lightgreen", amount=1, probability=0.5},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/chunk.png",
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-chunk",
		category = "ore-sorting-t2",
		subgroup = "clowns-ore-processing-b",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{type="item", name="clowns-ore5-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="clowns-ore5-chunk", amount=2},
			{type="fluid", name="water-red-waste", amount=50},
			{type="item", name="geode-yellow", amount=1, probability=0.5},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/chunk.png",
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-chunk",
		category = "ore-sorting-t2",
		subgroup = "clowns-ore-processing-b",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{type="item", name="clowns-ore6-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="clowns-ore6-chunk", amount=2},
			{type="fluid", name="water-yellow-waste", amount=50},
			{type="item", name="geode-cyan", amount=1, probability=0.5},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/chunk.png",
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "clowns-ore7-chunk",
		category = "ore-sorting-t2",
		subgroup = "clowns-ore-processing-b",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore7-crushed", amount=2},
			{type="fluid", name="water-purified", amount=50},
		},
		results=
		{
			{type="item", name="clowns-ore7-chunk", amount=2},
			{type="fluid", name="water-greenyellow-waste", amount=50},
			{type="item", name="geode-blue", amount=1, probability=0.5},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/chunk.png",
		icon_size = 32,
		order = "f",
	},
	
	--TIER 3
	
	{
		type = "recipe",
		name = "clowns-ore1-crystal",
		category = "ore-sorting-t3",
		subgroup = "clowns-ore-processing-c",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore1-chunk", amount=2},
			--Acid
		},
		results=
		{
			{type="item", name="clowns-ore1-crystal", amount=2},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/crystal.png",
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-crystal",
		category = "ore-sorting-t3",
		subgroup = "clowns-ore-processing-c",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore2-chunk", amount=2},
			--Acid
		},
		results=
		{
			{type="item", name="clowns-ore2-crystal", amount=2},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/crystal.png",
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-crystal",
		category = "ore-sorting-t3",
		subgroup = "clowns-ore-processing-c",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore3-chunk", amount=2},
			--Acid
		},
		results=
		{
			{type="item", name="clowns-ore3-crystal", amount=2},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/crystal.png",
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-crystal",
		category = "ore-sorting-t3",
		subgroup = "clowns-ore-processing-c",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore4-chunk", amount=2},
			--Acid
		},
		results=
		{
			{type="item", name="clowns-ore4-crystal", amount=2},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/crystal.png",
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-crystal",
		category = "ore-sorting-t3",
		subgroup = "clowns-ore-processing-c",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore5-chunk", amount=2},
			--Acid
		},
		results=
		{
			{type="item", name="clowns-ore5-crystal", amount=2},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/crystal.png",
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-crystal",
		category = "ore-sorting-t3",
		subgroup = "clowns-ore-processing-c",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore6-chunk", amount=2},
			--Acid
		},
		results=
		{
			{type="item", name="clowns-ore6-crystal", amount=2},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/crystal.png",
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "clowns-ore7-crystal",
		category = "ore-sorting-t3",
		subgroup = "clowns-ore-processing-c",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore7-chunk", amount=2},
			--Acid
		},
		results=
		{
			{type="item", name="clowns-ore7-crystal", amount=2},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/crystal.png",
		icon_size = 32,
		order = "g",
	},
	
	--TIER 4
	
	{
		type = "recipe",
		name = "clowns-ore1-pure",
		category = "ore-sorting-t4",
		subgroup = "clowns-ore-processing-d",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore1-crystal", amount=4},
		},
		results=
		{
			{type="item", name="clowns-ore1-pure", amount=4},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore1/pure.png",
		icon_size = 32,
		order = "a",
	},
	{
		type = "recipe",
		name = "clowns-ore2-pure",
		category = "ore-sorting-t4",
		subgroup = "clowns-ore-processing-d",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore2-crystal", amount=4},
		},
		results=
		{
			{type="item", name="clowns-ore2-pure", amount=4},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore2/pure.png",
		icon_size = 32,
		order = "b",
	},
	{
		type = "recipe",
		name = "clowns-ore3-pure",
		category = "ore-sorting-t4",
		subgroup = "clowns-ore-processing-d",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore3-crystal", amount=4},
		},
		results=
		{
			{type="item", name="clowns-ore3-pure", amount=4},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore3/pure.png",
		icon_size = 32,
		order = "c",
	},
	{
		type = "recipe",
		name = "clowns-ore4-pure",
		category = "ore-sorting-t4",
		subgroup = "clowns-ore-processing-d",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore4-crystal", amount=4},
		},
		results=
		{
			{type="item", name="clowns-ore4-pure", amount=4},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore4/pure.png",
		icon_size = 32,
		order = "d",
	},
	{
		type = "recipe",
		name = "clowns-ore5-pure",
		category = "ore-sorting-t4",
		subgroup = "clowns-ore-processing-d",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore5-crystal", amount=4},
		},
		results=
		{
			{type="item", name="clowns-ore5-pure", amount=4},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore5/pure.png",
		icon_size = 32,
		order = "e",
	},
	{
		type = "recipe",
		name = "clowns-ore6-pure",
		category = "ore-sorting-t4",
		subgroup = "clowns-ore-processing-d",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore6-crystal", amount=4},
		},
		results=
		{
			{type="item", name="clowns-ore6-pure", amount=4},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore6/pure.png",
		icon_size = 32,
		order = "f",
	},
	{
		type = "recipe",
		name = "clowns-ore7-pure",
		category = "ore-sorting-t4",
		subgroup = "clowns-ore-processing-d",
		energy_required = 2,
		enabled = false,
		ingredients =
		{
			{type="item", name="clowns-ore7-crystal", amount=4},
		},
		results=
		{
			{type="item", name="clowns-ore7-pure", amount=4},
		},
		icon = "__Clowns-Extended-Minerals__/graphics/icons/clowns-ore7/pure.png",
		icon_size = 32,
		order = "g",
	}
}
)