if not (mods["bobores"] or mods["bobplates"] or mods["angels-industries"]) and data.raw.item["thorium-ore"] then
	data:extend(
	{ -- thorium fuel cell
		{
			type = "item",
			name = "thorium-fuel-cell",
			icon = "__Clowns-AngelBob-Nuclear__/graphics/icons/thorium-fuel-cell.png",
			icon_size = 32,
			subgroup = "clowns-nuclear-cells",
			order = "a-b",
			fuel_category = "nuclear",
			burnt_result = "used-up-thorium-fuel-cell",
			fuel_value = "12GJ",
			stack_size = 50
		},
		{
			type = "item",
			name = "used-up-thorium-fuel-cell",
			icon = "__Clowns-AngelBob-Nuclear__/graphics/icons/used-up-thorium-fuel-cell.png",
			icon_size = 32,
			subgroup = "clowns-nuclear-cells",
			order = "b-b",
			stack_size = 50
		},
	}
	)
end
if data.raw.item["thorium-fuel-cell"] then
	data:extend(
	{
		-- thorium ore processing items
		{
			type = "item",
			name = "thorium-salt", --fluoride (if angels petrochem, chloride if not)
			icon = "__Clowns-AngelBob-Nuclear__/graphics/icons/ore-5.png",
			icon_size = 32,
			subgroup = "clowns-nuclear-cells",
			order = "b-d",
			stack_size = 50
		},
		{
			type = "fluid",
			name = "thorium-solution",
			icon = "__Clowns-AngelBob-Nuclear__/graphics/icons/water-radioactive-waste-purification.png",
			icon_size = 32,
			default_temperature = 550,
			heat_capacity = "0.1KJ",
			base_color = {r = 0.92, g = 0.72, b = 0.09},
			flow_color = {r = 0, g = 1, b = 0.5},
			max_temperature = 1200,
			pressure_to_speed_ratio = 0.4,
			flow_to_energy_ratio = 0.59,
			subgroup = "clowns-nuclear-cells",
			order = "b-e",
		},
	}
	)
end