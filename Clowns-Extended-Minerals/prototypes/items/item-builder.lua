--[[local clowns_ore1_tint = {r=0.15, g=0.450, b=0.16}
local clowns_ore2_tint = {r=0.95, g=0.08, b=0.9}
local clowns_ore3_tint = {r=1, g=0.5, b=0}
local clowns_ore4_tint = {r=0.15, g=0.450, b=0.16}
local clowns_ore5_tint = {r=0.8, g=0.8, b=0.8}
local clowns_ore6_tint = {r=0.15, g=0.450, b=0.16}]]

local function crushed(name)
	return
	{
		type = "item",
		name = ""..name.."-crushed",
		icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crushed.png", 
		icon_size = 32,
		subgroup = "clowns-ore-processing-a",
		order = "a",
		stack_size = 200
	}
end

local function chunk(name)
	return
	{
		type = "item",
		name = ""..name.."-chunk",
		icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/chunk.png",
		icon_size = 32,
		subgroup = "clowns-ore-processing-b",
		order = "a",
		stack_size = 200
	}
end

local function crystal(name)
	return
	{
		type = "item",
		name = ""..name.."-crystal",
		icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crystal.png",
		icon_size = 32,
		subgroup = "clowns-ore-processing-c",
		order = "a",
		stack_size = 200
	}
end

local function pure(name)
	return
	{
		type = "item",
		name = ""..name.."-pure",
		icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/pure.png",
		icon_size = 32,
		subgroup = "clowns-ore-processing-d",
		order = "a",
		stack_size = 200
	}
end

local function ore(name)
	return
	{
		type = "item",
		name = name,
		icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/ore.png",
		icon_size = 32,
		subgroup = "angels-ores",
		order = "a",
		stack_size = 200
	}
end

local function items(name)
	data:extend({ore(name)})
	data:extend({crushed(name)})
	data:extend({chunk(name)})
	data:extend({crystal(name)})
	data:extend({pure(name)})
end

items("clowns-ore1")
items("clowns-ore2")
items("clowns-ore3")
items("clowns-ore4")
items("clowns-ore5")
items("clowns-ore6")
items("clowns-ore7")
--items("clowns-ore8")