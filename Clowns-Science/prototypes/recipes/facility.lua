local rawmulti = angelsmods.marathon.rawmulti
local energy_param = 24
local gas_param = 100
local order = "b"

if data.raw.recipe["advanced-logistic-science-pack"] then
data:extend(
{
	{
		type = "recipe",
		name = "facility-logistic-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "advanced-logistic-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__bobtech__/graphics/icons/logistic-science-pack.png",
				icon_size=32,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
		ingredients =
		{
			{type="fluid", name="liquid-nitric-acid", amount=gas_param},
		},
		result = (mods["angelsindustries"] and angelsmods.industries.tech) and "datacore-enhance-1" or "advanced-logistic-science-pack"
	}
}
)
end

if data.raw.recipe["omni-pack"] and data.raw.fluid["omniston"] then
data:extend(
{
	{
		type = "recipe",
		name = "facility-omni-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "omni-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/production-science-pack.png",
				icon_size=64,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
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
		name = "facility-science-pack-1",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "automation-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/automation-science-pack.png",
				icon_size=64,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
		ingredients =
		{
			{type="fluid", name="gas-oxygen", amount=gas_param},
			{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
		},
		result = (mods["angelsindustries"] and angelsmods.industries.tech) and "datacore-basic" or "automation-science-pack"
	},

	{
		type = "recipe",
		name = "facility-science-pack-2",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "logistic-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/logistic-science-pack.png",
				icon_size=64,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
		ingredients =
		{
			{type="fluid", name="gas-chlorine", amount=gas_param},
			{type="fluid", name="gas-carbon-dioxide", amount=gas_param}
		},
		result = (mods["angelsindustries"] and angelsmods.industries.tech) and "datacore-logistic-1" or "logistic-science-pack"
	},

	{
		type = "recipe",
		name = "facility-science-pack-3",
		category = "facility",
		enabled = false,
		energy_required = energy_param*2,
		subgroup = "chemical-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/chemical-science-pack.png",
				icon_size=64,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
		ingredients =
		{
			{type="fluid", name="gas-ammonia", amount=gas_param},
			{type="fluid", name="gas-carbon-monoxide", amount=gas_param}
		},
		result = (mods["angelsindustries"] and angelsmods.industries.tech) and "datacore-energy-1" or "chemical-science-pack"
	},

	{
		type = "recipe",
		name = "facility-military-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param,
		subgroup = "military-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/military-science-pack.png",
				icon_size=64,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
		ingredients =
		{
			{type="fluid", name="liquid-sulfuric-acid", amount=gas_param},
			{type="fluid", name="gas-carbon-monoxide", amount=gas_param}
		},
		result = (mods["angelsindustries"] and angelsmods.industries.tech) and "datacore-war-1" or "military-science-pack"
	},

	{
		type = "recipe",
		name = "facility-production-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param*2,
		subgroup = "production-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/production-science-pack.png",
				icon_size=64,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
		ingredients =
		{
			{type="fluid", name="gas-methanol", amount=gas_param},
		},
		result = (mods["angelsindustries"] and angelsmods.industries.tech) and "datacore-processing-1" or "production-science-pack"
	},

	{
		type = "recipe",
		name = "facility-high-tech-science-pack",
		category = "facility",
		enabled = false,
		energy_required = energy_param*2,
		subgroup = "utility-science-pack",
		order = "b",
		icons =
		{
			{
				icon = "__base__/graphics/icons/utility-science-pack.png",
				icon_size=64,
			},
			{
			icon = "__Clowns-Science__/graphics/icons/facility.png",
			icon_size = 32,
			scale = 0.32,
			shift = {-12, -12}
			},
		},
		ingredients =
		{
			{type="fluid", name="liquid-hydrofluoric-acid", amount=gas_param},
		},
		result = (mods["angelsindustries"] and angelsmods.industries.tech) and "datacore-energy-1" or "utility-science-pack"
	},
}
)
