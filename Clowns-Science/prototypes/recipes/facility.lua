local energy_param = 24
local gas_param = 100
local order = "b"
local new_icons = clowns.tables.science_icons
local overlay = {
	icon = "__Clowns-Science__/graphics/icons/facility.png",
	icon_size = 32,
	scale = 0.32,
	shift = {-12, -12}
	}
if mods["angelspetrochem"] then --i may also activate these with pyanodons
	if data.raw.recipe["advanced-logistic-science-pack"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "advanced-logistic-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param,
			subgroup = "advanced-logistic-science-pack",
			order = "b",
			icons = {new_icons["advanced-logistics"],overlay},
			ingredients =
			{
				{type="fluid", name="liquid-nitric-acid", amount=gas_param},
			},
			result = clowns.trigger.angels_tech and "datacore-enhance-1" or "advanced-logistic-science-pack"
		}
	}
	)
	end

	if data.raw.recipe["omni-pack"] and data.raw.fluid["omniston"] then
	data:extend(
	{
		{
			type = "recipe",
			name = "omni-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param,
			subgroup = "omni-science-pack",
			order = "b",
			icons = {new_icons.omni,overlay},
			ingredients =
			{
				{type="fluid", name="omniston", amount=gas_param},
				{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
			},
			result = "omni-pack"
		}
	}
	)
	end

	data:extend(
	{
		{
			type = "recipe",
			name = "automation-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param,
			subgroup = "automation-science-pack",
			order = "b",
			icons = {new_icons.automation,overlay},
			ingredients =
			{
				{type="fluid", name="gas-oxygen", amount=gas_param},
				{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
			},
			result = clowns.trigger.angels_tech and "datacore-basic" or "automation-science-pack"
		},

		{
			type = "recipe",
			name = "logistic-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param,
			subgroup = "logistic-science-pack",
			order = "b",
			icons = {new_icons.logistic,overlay},
			ingredients =
			{
				{type="fluid", name="gas-chlorine", amount=gas_param},
				{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
			},
			result = clowns.trigger.angels_tech and "datacore-logistic-1" or "logistic-science-pack"
		},
		{
			type = "recipe",
			name = "chemical-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param*2,
			subgroup = "chemical-science-pack",
			order = "b",
			icons = {new_icons.chemical,overlay},
			ingredients =
			{
				{type="fluid", name="gas-ammonia", amount=gas_param},
				{type="fluid", name="gas-carbon-monoxide", amount=gas_param}
			},
			result = clowns.trigger.angels_tech and "datacore-energy-1" or "chemical-science-pack"
		},
		{
			type = "recipe",
			name = "military-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param,
			subgroup = "military-science-pack",
			order = "b",
			icons = {new_icons.military,overlay},
			ingredients =
			{
				{type="fluid", name="liquid-sulfuric-acid", amount=gas_param},
				{type="fluid", name="gas-carbon-monoxide", amount=gas_param}
			},
			result = clowns.trigger.angels_tech and "datacore-war-1" or "military-science-pack"
		},
		{
			type = "recipe",
			name = "production-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param*2,
			subgroup = "production-science-pack",
			order = "b",
			icons = {new_icons.production,overlay},
			ingredients =
			{
				{type="fluid", name="gas-methanol", amount=gas_param},
			},
			result = clowns.trigger.angels_tech and "datacore-processing-1" or "production-science-pack"
		},
		{
			type = "recipe",
			name = "utility-science-pack-facility",
			category = "facility",
			enabled = false,
			energy_required = energy_param*2,
			subgroup = "utility-science-pack",
			order = "b",
			icons = {new_icons.utility,overlay},
			ingredients =
			{
				{type="fluid", name="liquid-hydrofluoric-acid", amount=gas_param},
			},
			result = clowns.trigger.angels_tech and "datacore-enhance-1" or "utility-science-pack"
		},
	}
	)
end