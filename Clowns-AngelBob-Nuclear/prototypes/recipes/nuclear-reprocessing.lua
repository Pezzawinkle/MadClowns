data:extend(
{
	{
		type = "recipe",
		name = "advanced-nuclear-fuel-reprocessing",
		energy_required = 50,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name="used-up-uranium-fuel-cell", amount=5},
			{type="fluid", name="liquid-nitric-acid", amount=300}--20
		},
		icons = {{icon = "__Clowns-Nuclear__/graphics/icons/nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-a",
		results =
		{
			{type="item", name="uranium-238", amount=4},
			{type="item", name="plutonium-239", amount=2},
			{type="item", name="strontium-90", amount=1},--1
			{type="item", name="caesium-137", amount=3},--1
			{type="fluid", name="water-radioactive-waste", amount=300}--100 (matching the waste liq)
		},
	},
	{
		type = "recipe",
		name = "advanced-nuclear-fuel-reprocessing-b",
		energy_required = 50,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name="used-up-uranium-fuel-cell", amount=5},
			{type="fluid", name="liquid-nitric-acid", amount=350}--20
		},
		icons = {{icon = "__Clowns-Nuclear__/graphics/icons/nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-a",
		results =
		{
			{type="item", name="uranium-238", amount=3},
			{type="item", name="plutonium-239", amount=2},
			{type="item", name="strontium-90", amount=1},--1
			{type="item", name="caesium-137", amount=5},--1
			{type="fluid", name="water-radioactive-waste", amount=350}--100 (matching the waste liq)
		},
	},
	{
		type = "recipe",
		name = "advanced-nuclear-fuel-reprocessing-2",
		energy_required = 50,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name="used-up-uranium-fuel-cell", amount=5},
			{type="fluid", name="liquid-nitric-acid", amount=300}--20
		},
		icons = {{icon = "__Clowns-Nuclear__/graphics/icons/nuclear-fuel-reprocessing.png",icon_size=32}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-a",
		results =
		{
			{type="item", name="uranium-238", amount=1}, --slight nerf because of lack of thorium
			{type="item", name="plutonium-239", amount=1}, --slight nerf because of lack of thorium
			{type="item", name="protactinium-231", amount=4},--1--3 --slight nerf because of lack of thorium
			{type="fluid", name="water-radioactive-waste", amount=300}--100 (matching the waste liq)
		},
	},
})
if data.raw.item["thorium-fuel-cell"] or data.raw.item["angels-thorium-fuel-cell"] then
	local ucell = data.raw.item["thorium-fuel-cell"] and "used-up-thorium-fuel-cell" or data.raw.item["angels-thorium-fuel-cell"] and "used-up-angels-thorium-fuel-cell"
data:extend(
{
	{
		type = "recipe",
		name = "thorium-nuclear-fuel-reprocessing",
		energy_required = 50,
		enabled = false,
		category = "centrifuging",
		ingredients = {{ucell, 5}},
		icons= {{icon = "__Clowns-Nuclear__/graphics/icons/thorium-nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		crafting_machine_tint =
		{
			primary = {r = 1, g = 1, b = 0}, -- thorium
			secondary = {r = 1, g = 0.7, b = 0}, -- plutonium
			tertiary = {r = 1, g = 1, b = 0}, --thorium
		},
		subgroup = "clowns-nuclear-cells",
		order = "c-a-b",
		results =
		{ -- A direct copy of bobs recipe, it is better balanced
			{type="item", name="thorium-232", amount=3},
			{type="item", name="plutonium-239", amount=1},
			--{type="item", name="lead-plate", amount=5},
			{type="item", name="thorium-232", amount=1, probability=0.05},
			{type="item", name="plutonium-239", amount=1, probability=0.1},
		},
	},
	{
		type = "recipe",
		name = "advanced-thorium-nuclear-fuel-reprocessing",
		energy_required = 50,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name=ucell, amount=5},
			{type="fluid", name="liquid-nitric-acid", amount=300}--20 (matching the waste liq)
		},
		icons= {{icon = "__Clowns-Nuclear__/graphics/icons/thorium-nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-b",
		results =
		{
			{type="item", name="thorium-232", amount=3},--3 (needs to be less than 19/10)
			{type="item", name="plutonium-239", amount=3},--1
			{type="item", name="protactinium-231", amount=15},--1--3
			{type="fluid", name="water-radioactive-waste", amount=300}--20--60
		},
	},
	{
		type = "recipe",
		name = "advanced-thorium-nuclear-fuel-reprocessing-b",
		energy_required = 50,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name=ucell, amount=5},
			{type="fluid", name="liquid-nitric-acid", amount=150}--making this path lower than the other one, to give options, may need balance
		},
		icons= {{icon = "__Clowns-Nuclear__/graphics/icons/thorium-nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-b",
		results =
		{
			{type="item", name="thorium-232", amount=1},
			{type="item", name="plutonium-239", amount=6},--8
			{type="item", name="strontium-90", amount=9},
			{type="fluid", name="water-radioactive-waste", amount=150}
		},
	},
}
)
end
----------------------------------------
-- for helmod testing purposes only
---------------------------------------
--[[data:extend({
	{
		type = "recipe",
		name = "thorium-fuel-burning",
		energy_required = 50000,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name = (mods["angelsindustries"] and angelsmods.industries.overhaul) and "angels-thorium-fuel-cell" or "thorium-fuel-cell", amount=1},
		},
		icons= {{icon = "__Clowns-Nuclear__/graphics/icons/thorium-nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-b",
		results =
		{
			{type="item", name = (mods["angelsindustries"] and angelsmods.industries.overhaul) and "used-up-angels-thorium-fuel-cell" or "used-up-thorium-fuel-cell", amount=1}
		},
	},
	{
		type = "recipe",
		name = "uranium-fuel-burning",
		energy_required = 2000,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name="uranium-fuel-cell", amount=1},
		},
		icons= {{icon = "__Clowns-Nuclear__/graphics/icons/thorium-nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-b",
		results =
		{
			{type="item", name="used-up-uranium-fuel-cell", amount=1}
		},
	},
}
)
if mods["angelsindustries"] and angelsmods.industries.overhaul then
	data:extend({
	{
		type = "recipe",
		name = "amox-fuel-burning",
		energy_required = 8000,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name="AMOX-cell", amount=1},
		},
		icons= {{icon = "__Clowns-Nuclear__/graphics/icons/thorium-nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-b",
		results =
		{
			{type="item", name="used-up-AMOX-cell", amount=1}
		},
	},
	{
		type = "recipe",
		name = "uranium-234-fuel-burning",
		energy_required = 1500,
		enabled = false,
		category = "chemistry",
		ingredients =
		{
			{type="item", name="angels-uranium-fuel-cell", amount=1},
		},
		icons= {{icon = "__Clowns-Nuclear__/graphics/icons/thorium-nuclear-fuel-reprocessing.png", icon_size = 32,}},
		icon_size=32,
		subgroup = "clowns-nuclear-cells",
		order = "c-b-b",
		results =
		{
			{type="item", name="used-up-uranium-fuel-cell", amount=1}
		},
	}
})
end]]