local ctrig = clowns.triggers
if mods["angelspetrochem"] then --i may also activate these with pyanodons
	data:extend(
{
	{
		type = "recipe",
		name = "facility-mk1",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			mods["bobelectronics"] and {"basic-circuit-board", 20} or {"electronic-circuit",30},
			{"pipe", 20},
			{"stone-brick", 100}
		},
		result = "facility-mk1"
	},

	{
		type = "recipe",
		name = "facility-mk2",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"facility-mk1", 1},
			{"advanced-circuit", 20},
			(ctrig.bobplates and mods["bobplates"]) and {"brass-pipe", 20} or {"pipe",50},
			{"stone-brick", 100}
		},
		result = "facility-mk2"
	},

	{
		type = "recipe",
		name = "facility-mk3",
		enabled = false,
		energy_required = 2,
		ingredients =
		{
			{"facility-mk2", 1},
			(ctrig.bobplates and mods["bobelectronics"]) and {"advanced-processing-unit", 20} or {"processing-unit", 50},
			(ctrig.bobplates and mods["bobplates"]) and {"tungsten-pipe", 20} or {"pipe",80},
			{"stone-brick", 100}
		},
		result = "facility-mk3"
	},

	{
		type = "item",
		name = "facility-mk1",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/facility.png",
				icon_size = 32
			}
		}, 1 , clowns.icon_tint),
		subgroup = "advanced-science",
		order = "a-a",
		place_result = "facility-mk1",
		stack_size = 10,
	},

	{
		type = "item",
		name = "facility-mk2",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/facility.png",
				icon_size = 32
			}
		}, 2 , clowns.icon_tint),
		subgroup = "advanced-science",
		order = "a-b",
		place_result = "facility-mk2",
		stack_size = 10,
	},

	{
		type = "item",
		name = "facility-mk3",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/facility.png",
				icon_size = 32
			}
		}, 3 , clowns.icon_tint),
		subgroup = "advanced-science",
		order = "a-c",
		place_result = "facility-mk3",
		stack_size = 10,
	},
	{
		type = "assembling-machine",
		name = "facility-mk1",
		fast_replaceable_group = "facility",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/facility.png",
				icon_size = 32
			}
		}, 1 , clowns.icon_tint),
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1.2, result = "facility-mk1"},
		max_health = 500,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		light = {intensity = 1, size = 100},--int = 0.75, s = 8
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Clowns-Science__/graphics/entity/facility.png",
			priority = "high",
			width = 128,
			height = 128,
			frame_count = 29,
			line_length = 6,
			animation_speed = 1,
			shift = {0,-0.3}
		},
		crafting_categories = {"facility"},
		crafting_speed = 1, --* settings.startup["shaft-mine-crafting-speed"].value,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.001
		},
		energy_usage = "4MW",
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
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			}
		}
	},

	{
		type = "assembling-machine",
		name = "facility-mk2",
		fast_replaceable_group = "facility",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/facility.png",
				icon_size = 32
			}
		}, 2 , clowns.icon_tint),
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1.2, result = "facility-mk2"},
		max_health = 500,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		light = {intensity = 1, size = 100},--int = 0.75, s = 8
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Clowns-Science__/graphics/entity/facility.png",
			priority = "high",
			width = 128,
			height = 128,
			frame_count = 29,
			line_length = 6,
			animation_speed = 1,
			shift = {0,-0.3}
		},
		crafting_categories = {"facility"},
		crafting_speed = 2, --* settings.startup["shaft-mine-crafting-speed"].value,
		module_specification =
		{
			module_slots = 3
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.001
		},
		energy_usage = "6MW",
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
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			}
		}
	},

	{
		type = "assembling-machine",
		name = "facility-mk3",
		fast_replaceable_group = "facility",
		icons = angelsmods.functions.add_number_icon_layer({
			{
				icon = "__Clowns-Science__/graphics/icons/facility.png",
				icon_size = 32
			}
		}, 3 , clowns.icon_tint),
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1.2, result = "facility-mk3"},
		max_health = 500,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		light = {intensity = 1, size = 100},--int = 0.75, s = 8
		resistances =
		{
			{
			type = "fire",
			percent = 70
			}
		},
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Clowns-Science__/graphics/entity/facility.png",
			priority = "high",
			width = 128,
			height = 128,
			frame_count = 29,
			line_length = 6,
			animation_speed = 1,
			shift = {0,-0.3}
		},
		crafting_categories = {"facility"},
		crafting_speed = 3,
		module_specification =
		{
			module_slots = 4
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.001
		},
		energy_usage = "8MW",
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
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2} }}
			}
		}
	},
}
)
end