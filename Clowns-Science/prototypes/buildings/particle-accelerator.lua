if mods["Clowns-Processing"] and mods["Clowns-Extended-Minerals"] then
	recipe_1 =
	{
		{"processing-unit", 100},
		{"steel-plate", 100},
		{"cobalt-plate", 100},
		{"pipe", 100},
		{"stone-brick", 100}
	}
	recipe_2 =
	{
		{"particle-accelerator-mk1", 1},
		{"advanced-processing-unit", 100},
		{"clowns-plate-osmium", 100},
		{"titanium-bearing", 100},
		{"titanium-pipe", 100},
		{"stone-brick", 100}
	}
else
	recipe_1 =
	{
		{"processing-unit", 100},
		{"steel-plate", 100},
		{"iron-gear-wheel", 100},
		{"pipe", 100},
		{"stone-brick", 100}
	}
	recipe_2 =
	{
		{"particle-accelerator-mk1", 1},
		{"advanced-processing-unit", 100},
		{"cobalt-plate", 100},
		{"tungsten-gear-wheel", 100},
		{"tungsten-pipe", 100},
		{"stone-brick", 100}
	}
end

data:extend(
{
	{
		type = "recipe",
		name = "particle-accelerator-mk1",
		enabled = false,
		energy_required = 10,
		ingredients = recipe_1,
		result = "particle-accelerator-mk1"
	},

	{
		type = "recipe",
		name = "particle-accelerator-mk2",
		enabled = false,
		energy_required = 10,
		ingredients = recipe_2,
		result = "particle-accelerator-mk2"
	},

	{
		type = "item",
		name = "particle-accelerator-mk1",
		fast_replaceable_group = "particle-accelerator",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/particle-accelerator.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_1.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
--	flags = {"goes-to-quickbar"},
		subgroup = "advanced-science",
		order = "b-a",
		place_result = "particle-accelerator-mk1",
		stack_size = 10,
	},

	{
		type = "item",
		name = "particle-accelerator-mk2",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/particle-accelerator.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_2.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
--	flags = {"goes-to-quickbar"},
		subgroup = "advanced-science",
		order = "b-b",
		place_result = "particle-accelerator-mk2",
		stack_size = 10,
	},

	{
		type = "assembling-machine",
		name = "particle-accelerator-mk1",
		fast_replaceable_group = "particle-accelerator",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/particle-accelerator.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_1.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1.2, result = "particle-accelerator-mk1"},
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		light = {intensity = 1, size = 100},--int = 0.75, s = 8
		resistances =
		{
			{
			type = "fire",
			percent = 70
			}
		},
		collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
		selection_box = {{-3, -3}, {3, 3}},
		animation =
		{
			filename = "__Clowns-Science__/graphics/entity/particle-accelerator.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 30,
			line_length = 6,
			animation_speed = 1,
			shift = {0,0}
		},
		crafting_categories = {"particle-accelerator"},
		crafting_speed = 1,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "pollution"},--no efficiency
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0
		},
		energy_usage = "500MW",
		ingredient_count = 2,
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				{
				  filename = "__base__/sound/assembling-machine-t1-1.ogg",
				  volume = 0.8
				},
				{
				  filename = "__base__/sound/assembling-machine-t1-2.ogg",
				  volume = 0.8
				},
			},
			idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
			apparent_volume = 1.5,
		}
	},

	{
		type = "assembling-machine",
		name = "particle-accelerator-mk2",
		fast_replaceable_group = "particle-accelerator",
		icons =
		{
			{
				icon = "__Clowns-Science__/graphics/icons/particle-accelerator.png"
			},
			{
				icon = "__angelsrefining__/graphics/icons/num_1.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}
			}
		},
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1.2, result = "particle-accelerator-mk2"},
		max_health = 500,
		corpse = "big-remnants",
		dying_explosion = "big-explosion",
		light = {intensity = 1, size = 100},--int = 0.75, s = 8
		resistances =
		{
			{
			type = "fire",
			percent = 70
			}
		},
		collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
		selection_box = {{-3, -3}, {3, 3}},
		animation =
		{
			filename = "__Clowns-Science__/graphics/entity/particle-accelerator.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 30,
			line_length = 6,
			animation_speed = 1,
			shift = {0,0}
		},
		crafting_categories = {"particle-accelerator"},
		crafting_speed = 2,
		module_specification =
		{
			module_slots = 4
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0
		},
		energy_usage = "750MW",
		ingredient_count = 2,
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				{
				  filename = "__base__/sound/assembling-machine-t1-1.ogg",
				  volume = 0.8
				},
				{
				  filename = "__base__/sound/assembling-machine-t1-2.ogg",
				  volume = 0.8
				},
			},
			idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
			apparent_volume = 1.5,
		}
	}
}
)
