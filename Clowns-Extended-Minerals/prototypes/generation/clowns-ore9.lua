local name = "clowns-ore8"
local stage = "clowns_ore8"
local ore_sheet = "2"
local order = "ai"

local mining_time = 2
local mining_hardness = 1.7

local tint = {r = 89/255, g = 200/255, b = 8/255} --Colour of ingame ore patches
local map_tint = tint --Colour of map ore patches

local coverage = 0.002 * 0.5 --Angel's default is 0.002
local starting_area = false
local starting_area_size = 5500 * coverage --Angel's is 5500*coverage, irrelevant if not starting_area
local starting_area_amount = 1600 --Angel's default is 1600, irrelevant if not starting_area

local peaks = {}
local autoplace = {}

if starting_area then
	peaks =
	{
		{
		noise_layer = name,
		noise_octaves_difference = -0.85,
		noise_persistence = 0.4,
		},
	}
else
	peaks =
	{
		{
			noise_layer = name,
			noise_octaves_difference = -0.85,
			noise_persistence = 0.4,
		},
		{--This peak eliminates any ore in the starting area
			influence = -1.0,
			starting_area_weight_optimal = 1,
			starting_area_weight_range = 0,
			starting_area_weight_max_range = 2,
		},
	}
end

if starting_area then
	autoplace =
	{
		order = order,
		control = name,
		sharpness = 15/16,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 20,
		richness_base = 10,
		coverage = coverage,
		peaks = peaks,
		starting_area_size = starting_area_size,
		starting_area_amount = starting_area_amount
	}
else
	autoplace =
	{
		order = order,
		control = name,
		sharpness = 15/16,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 20,
		richness_base = 10,
		coverage = coverage,
		peaks = peaks
	}
end

data:extend(
{
	{
		type = "optimized-particle",
		name = ""..name.."-particle",
		flags = {"not-on-map"},
		life_time = 180,
		pictures =
		{
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-1.png",
			priority = "extra-high",
			tint = tint,
			width = 5,
			height = 5,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-2.png",
			priority = "extra-high",
			tint = tint,
			width = 7,
			height = 5,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-3.png",
			priority = "extra-high",
			tint = tint,
			width = 6,
			height = 7,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-4.png",
			priority = "extra-high",
			tint = tint,
			width = 9,
			height = 8,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-5.png",
			priority = "extra-high",
			tint = tint,
			width = 5,
			height = 5,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-6.png",
			priority = "extra-high",
			tint = tint,
			width = 6,
			height = 4,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-7.png",
			priority = "extra-high",
			tint = tint,
			width = 7,
			height = 8,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-8.png",
			priority = "extra-high",
			tint = tint,
			width = 6,
			height = 5,
			frame_count = 1
			}
		},
		shadows =
		{
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-1.png",
			priority = "extra-high",
			width = 5,
			height = 5,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-2.png",
			priority = "extra-high",
			width = 7,
			height = 5,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-3.png",
			priority = "extra-high",
			width = 6,
			height = 7,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-4.png",
			priority = "extra-high",
			width = 9,
			height = 8,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-5.png",
			priority = "extra-high",
			width = 5,
			height = 5,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-6.png",
			priority = "extra-high",
			width = 6,
			height = 4,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-7.png",
			priority = "extra-high",
			width = 7,
			height = 8,
			frame_count = 1
			},
			{
			filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-8.png",
			priority = "extra-high",
			width = 6,
			height = 5,
			frame_count = 1
			}
		}
	}
}
)

data:extend(
{
	{
		type = "autoplace-control",
		name = name,
		richness = true,
		order = "b-e",
		category = "resource",
	},

	{
		type = "noise-layer",
		name = name
	},

	{
		type = "resource",
		name = name,
		icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/ore.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		map_color = map_tint,
		minable =
		{
			hardness = mining_hardness,
			mining_particle = ""..name.."-particle",
			mining_time = mining_time,
			result = name
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = autoplace,
		starting_area_size = 5500 * 0.002,
		starting_area_amount = 1600,

		stage_counts = {2000, 1600, 1400, 1200, 800, 400, 200, 10},
		stages =
		{
			sheet =
			{
				filename = "__Clowns-Extended-Minerals__/graphics/entity/clowns-ore8.png",
				priority = "extra-high",
				--tint = tint,
				width = 64,
				height = 64,
				frame_count = 8,
				variation_count = 8,
				--[[hr_version =
				{
					filename = "__angelsrefining__/graphics/entity/ores/ore-1"..ore_sheet.."-hr.png",
					priority = "extra-high",
					tint = tint,
					width = 128,
					height = 128,
					frame_count = 8,
					variation_count = 8,
					scale = 0.5
				}]]
			}
		}
	}
}
)
