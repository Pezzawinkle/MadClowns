local name = "clowns-resource5"
local stage = "clowns_resource5"
local sheet = "__Clowns-Extended-Minerals__/graphics/entity/zombrine.png"
local frame_count = 4
local variation_count = 1
local order = "be"

local mining_time = 1
local mining_hardness = 0.2
local result = "crystal-dust"

local map_tint = {r = 0.7, g = 0.9, b = 0.7} --Colour of map ore patches

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
		noise_persistence = 0.4
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
		icon = "__base__/graphics/icons/crude-oil.png",
		icon_size = 32,
		flags = {"placeable-neutral"},
		order="a-b-a",
		infinite = true,
		highlight = true,
		minimum = 20000,
		normal = 100000,
		map_color = map_tint,
		minable =
		{
			hardness = mining_hardness,
			mining_time = mining_time,
			result = result
		},
		collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace = autoplace,
		starting_area_size = 5500 * 0.002,
		starting_area_amount = 1600,
		
		stage_counts = {0},
		stages =
		{
			sheet =
			{
				filename = sheet,
				priority = "extra-high",
				--tint = tint,
				width = 75,
				height = 31,
				frame_count = frame_count,
				variation_count = variation_count,
				--[[hr_version =
				{
					filename = "__angelsrefining__/graphics/entity/ores/ore-1"..ore_sheet.."-lr.png",
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