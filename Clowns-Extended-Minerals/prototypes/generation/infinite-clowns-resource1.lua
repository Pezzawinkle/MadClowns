if mods["angelsinfiniteores"] and settings.startup["enableinfiniteclownsresource1"].value == true then
	local name = "infinite-clowns-resource1"
	local stage = name
	
	
	local sheet = "__Clowns-Extended-Minerals__/graphics/entity/alluvium.png"
	local frame_count = 1
	local variation_count = 2

	local mining_time = 1
	local mining_hardness = 0.2
	local result = "clowns-resource1"

	local map_tint = {r = 0.9, g = 0.7, b = 0.7} --Colour of map ore patches

	local coverage = 0.002 * 0.5 --Angel's default is 0.002
	local starting_area = false
	local starting_area_size = 5500 * coverage --Angel's is 5500*coverage, irrelevant if not starting_area
	local starting_area_amount = 1600 --Angel's default is 1600, irrelevant if not starting_area

	local peaks = {}
	local autoplace = {}


	--Infinite Ore Settings
	local name_of_original_ore = "clowns-resource1" --=name unless it's an infinite ore
	
	local ani_per = 3.5
	local ani_dev = 0.7
	local dark_mul = 3
	local alpha_min = 0.0
	local alpha_max = 0.3

	--The resource prototype is the only one added if RSO is on, the others require Angel's RSO mod to be off
	data:extend(
	{
		{
			type = "resource",
			name = name,
			infinite = true,--IMPORTANT
			minimum = angelsmods.ores.yield,
			normal = 1500,
			maximum = 6000,
			icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name_of_original_ore..".png",
			icon_size = 32,
			flags = {"placeable-neutral"},
			order="a-b-a",
			map_color = map_tint,
			minable =
			{
				hardness = mining_hardness,
				mining_particle = ""..name_of_original_ore.."-particle",
				mining_time = mining_time,
				--fluid_amount = 50,
				--required_fluid = fluid,
				results =
				{
					{
						type = "item",
						name = result,
						amount_min = 1,
						amount_max = 1,
						probability = angelsmods.ores.loweryield
					}
				}
			},
			collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
			selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
			autoplace = autoplace,
			starting_area_size = 5500 * 0.002,
			starting_area_amount = 1600,
			stage_counts = {1},
			stages =
			{
				sheet =
				{
					filename = sheet,
					priority = "extra-high",
					width = 64,
					height = 64,
					--line_length = 8,
					frame_count = frame_count,
					variation_count = variation_count,
					--[[hr_version =
					{
						filename = sheet,
						priority = "extra-high",
						tint = tint,
						width = 128,
						height = 128,
						line_length = 8,
						frame_count = frame_count,
						variation_count = variation_count,
						scale = 0.5
					}]]
				}
			},
			stages_effect =     
			{
				sheet =
					{
					filename = sheet,
					priority = "extra-high",
					tint = tint,
					width = 64,
					height = 64,
					--line_length = 1,
					frame_count = frame_count,
					variation_count = variation_count,
					blend_mode = "additive",
					flags = {"light"},
					--[[hr_version =
					{
						filename = sheet,
						priority = "extra-high",
						tint = tint,
						width = 128,
						height = 128,
						line_length = 1,
						frame_count = 1,
						variation_count = 2,
						scale = 0.5,
						blend_mode = "additive",
						flags = {"light"},
					}]]
				}
			},
			effect_animation_period = ani_per,
			effect_animation_period_deviation = ani_dev,
			effect_darkness_multiplier = dark_mul,
			min_effect_alpha = alpha_min,
			max_effect_alpha = alpha_max,
		}
	}
	)
	
	--IN CASE OF RSO BEING OFF, NEED TO ENABLE AUTOPLACE CONTROL, AUTOPLACE, AND NOISE LAYER. NORMALLY RSO DOES THIS ALL.
	
	if not angelsmods.ores.enablersomode then
	
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
		}
		)
		
		--LINK RESOURCE TO AUTOPLACE
		data.raw["resource"][""..name..""].autoplace = autoplace
		
		
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
			{--This peak eliminates any ore in the starting area (I think)
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
				order = "a",
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
				order = "a",
				control = name,
				sharpness = 15/16,
				richness_multiplier = 1500,
				richness_multiplier_distance_bonus = 20,
				richness_base = 10,
				coverage = coverage,
				peaks = peaks
			}
		end
		
	end
	
end