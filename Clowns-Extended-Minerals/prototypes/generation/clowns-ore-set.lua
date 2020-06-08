local special_vanilla = clowns.special_vanilla
--------------------------------------------------
-- define bare minimum (special vanilla tables) --
--------------------------------------------------
local ap_dat={
	["clowns-ore1"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["clowns-ore2"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["clowns-ore3"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-ore4"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-ore5"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["clowns-ore6"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-ore7"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["clowns-ore8"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["clowns-ore9"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-resource1"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-resource2"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-resource3"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-resource4"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["clowns-resource5"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["infinite-clowns-ore1"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["infinite-clowns-ore2"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["infinite-clowns-ore3"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["infinite-clowns-ore4"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["infinite-clowns-ore5"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	--["infinite-clowns-ore6"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["infinite-clowns-ore7"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["infinite-clowns-resource2"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
	["infinite-clowns-resource1"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1},
}
local ore_dat = {
  ["clowns-ore1"] = {--[[stage="clowns_ore1",]]ore_sheet = 3, order = "c-a",	mining_time = 3*4--[[old time * hardness]], tint = {r = 0.6510, g = 0.3490, b = 0.6510}},
	["clowns-ore4"] = {--[[stage="clowns_ore4",]]ore_sheet = 1,	order = "c-d",	mining_time = 2*1.5--[[old time * hardness]], tint = {r = 1, g = 0.3438, b = 0.0}},
	["clowns-ore5"] = {--[[stage="clowns_ore5",]]ore_sheet = 3,	order = "c-e",	mining_time = 1.5*0.9--[[old time * hardness]], tint = {r = 1, g = 1, b = 1}},
	["clowns-ore7"] = {--[[stage="clowns_ore7",]]ore_sheet = 2,	order = "c-g",	mining_time = 2*3--[[old time * hardness]],	tint = {r = 0.48, g = 0.63, b = 0.15}},
}
------------------------------------------------------------
-- append tables if running with bobs or angelsindustries --
------------------------------------------------------------
if not special_vanilla then
  ap_dat["clowns-ore2"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
  ap_dat["clowns-ore3"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
  ap_dat["clowns-ore6"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
  --ap_dat["clowns-ore8"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
  --ap_dat["clowns-ore9"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
  --ap_dat["clowns-ore10"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
  ap_dat["infinite-clowns-ore2"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
	ap_dat["infinite-clowns-ore3"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}
  ap_dat["infinite-clowns-ore6"] = { starting_area = false, base_density = 10, regular_rq_factor_multiplier = 0.9, starting_rq_factor_multiplier = 1.1}

  ore_dat["clowns-ore2"] = {--[[stage="clowns_ore2",]]ore_sheet = 4,	order = "c-b",	mining_time = 1.75*2.75--[[old time * hardness]], tint = {r = 1, g = 0, b = 0.5}}
  ore_dat["clowns-ore3"] = {--[[stage="clowns_ore3",]]ore_sheet = 3,	order = "c-c",	mining_time = 1.5*0.9--[[old time * hardness]],	tint = {r = 0.4, g = 0.4, b = 0.4}}
  ore_dat["clowns-ore6"] = {--[[stage="clowns_ore6",]]ore_sheet = 2,	order = "c-f",	mining_time = 1.75*2--[[old time * hardness]], tint = {r = 0.9020, g = 0.0000, b = 0.0000}}
  --ore_dat["clowns-ore8"] = {--[[stage="clowns_ore6",]]ore_sheet = 2,	order = "c-f",	mining_time = 1.75*2--[[old time * hardness]], tint = {r = 0.9020, g = 0.0000, b = 0.0000}}
  --ore_dat["clowns-ore9"] = {--[[stage="clowns_ore6",]]ore_sheet = 2,	order = "c-f",	mining_time = 1.75*2--[[old time * hardness]], tint = {r = 0.9020, g = 0.0000, b = 0.0000}}
  --ore_dat["clowns-ore10"] = {--[[stage="clowns_ore6",]]ore_sheet = 2,	order = "c-f",	mining_time = 1.75*2--[[old time * hardness]], tint = {r = 0.9020, g = 0.0000, b = 0.0000}}
end
local inf_dat={} --duplicate regular ore_dat into inf_dat table
for j,ore in pairs(ore_dat) do
  inf_dat["infinite-"..j] = ore_dat[j]
end
---------------------------------------------
-- Create ores and auto-plate for each ore --
---------------------------------------------
for ore_name in pairs(ore_dat) do
local build_tab =  {
    name = ore_name,
    order = ore_dat[ore_name].order,
    sheet = ore_dat[ore_name].ore_sheet,
    infinite = false,
    map_color = ore_dat[ore_name].tint,
    tint = ore_dat[ore_name].tint,
    mining_time = ore_dat[ore_name].mining_time,
    type = "item",
    output_name = ore_name,
    output_min = 1,
    output_max = 1,
    icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore_name.."/ore.png",
    autoplace = {
      starting_area = ap_dat[ore_name].starting_area,
      base_density = ap_dat[ore_name].base_density,
      regular_rq_factor_multiplier = ap_dat[ore_name].regular_rq_factor_multiplier,
      starting_rq_factor_multiplier = ap_dat[ore_name].starting_rq_factor_multiplier
    }
  }
	--log(serpent.block(build_tab))
	angelsmods.functions.add_resource("make",build_tab)
	angelsmods.functions.make_resource()
end

if mods["angelsinfiniteores"] and settings.startup["enableinfiniteclownsore1"].value == true then
	for ore_name in pairs(inf_dat) do
		local base_ore = string.sub(ore_name,10)
		--log(base_ore)
		--log(ore_dat[base_ore].base_density)
		local build_tab = {
			name = ore_name,
			get = base_ore,
			order = "a"..ore_dat[base_ore].order, --place inf ores at the top of the list
			sheet = ore_dat[base_ore].sheet,
			infinite = true,
			glow = true,
			var = 6,
			map_color = ore_dat[base_ore].tint,
			tint = ore_dat[base_ore].tint,
			mining_time = ore_dat[base_ore].mining_time,
			type = "item",
			minimum = angelsmods.ores.yield,
			normal = 1500,
			maximum = 6000,
			acid_to_mine = "liquid-sulfuric-acid",
			output_name = base_ore,
			output_min = 1,
			output_max = 1,
			output_probability = angelsmods.ores.loweryield,
			autoplace = {
				starting_area = false,
				--resource_index = 21,
				base_density = ap_dat[base_ore].base_density,--quarter the density
				regular_rq_factor_multiplier = ap_dat[base_ore].regular_rq_factor_multiplier,
				starting_rq_factor_multiplier = ap_dat[base_ore].starting_rq_factor_multiplier
			}
		}
		--log(serpent.block(build_tab))
		angelsmods.functions.add_resource("make",build_tab)
		angelsmods.functions.make_resource()
	end
end
