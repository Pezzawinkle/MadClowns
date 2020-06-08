local rawmulti = angelsmods.marathon.rawmulti
--build basic table
local ore_table = clowns.tables.ores
local ore_material = {
  ["clowns-ore1"] = {order = "a", acid = "liquid-sulfuric-acid", geode="purple"},
  ["clowns-ore2"] = {order = "b", acid = "liquid-sulfuric-acid", geode="lightgreen"},
  ["clowns-ore3"] = {order = "c", acid = "liquid-sulfuric-acid", geode="red"},
  ["clowns-ore4"] = {order = "d", acid = "liquid-sulfuric-acid", geode="lightgreen"},
  ["clowns-ore5"] = {order = "e", acid = "liquid-sulfuric-acid", geode="yellow"},
  ["clowns-ore6"] = {order = "f", acid = "liquid-sulfuric-acid", geode="cyan"},
  ["clowns-ore7"] = {order = "g", acid = "liquid-sulfuric-acid", geode="blue"},
}
local acid_wastewater = {
  ["liquid-sulfuric-acid"] = "water-yellow-waste",
  ["liquid-hydrofluoric-acid"] = "water-greenyellow-waste",
  ["liquid-nitric-acid"] = "water-red-waste",
  ["liquid-hydrochloric-acid"] = "water-green-waste",
  ["liquid-boric-acid"] = "", --currently no wastewater
  ["liquid-phosphoric-acid"] = "", --currently no wastewater
}
--check if angels setting is active and modify acids
if mods["angelspetrochem"] and settings.startup["angels-enable-acids"].value then
  ore_material["clowns-ore1"].acid = "liquid-hydrofluoric-acid"
  ore_material["clowns-ore3"].acid = "liquid-nitric-acid"
  ore_material["clowns-ore4"].acid = "liquid-hydrochloric-acid"
  ore_material["clowns-ore5"].acid = "liquid-nitric-acid"
  ore_material["clowns-ore7"].acid = "liquid-hydrofluoric-acid"
end
for _, ore in pairs(ore_table) do
  data:extend(
    {
      --TIER 1
      {
        type = "recipe",
        name = ore.."-crushed",
        category = "ore-sorting-t1",
        subgroup = "clowns-ore-processing-a",
        energy_required = 1,
        enabled = false,
        allow_decomposition = false,
        ingredients = {{type = "item", name = ore, amount = 2}},
        results=
        {
          {type = "item", name = ore.."-crushed", amount = 2},
          {type = "item", name = "stone-crushed", amount = 1}
        },
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/crushed.png",
        icon_size = 32,
        order = ore_material[ore].order or "a"
      },
      --TIER 2
      {
        type = "recipe",
        name = ore.."-chunk",
        category = "ore-sorting-t2",
        subgroup = "clowns-ore-processing-b",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
          {type = "item", name = ore.."-crushed", amount = 2},
          {type = "fluid", name = "water-purified", amount = 50},
        },
        results=
        {
          {type = "item", name = ore.."-chunk", amount = 2},
          {type = "fluid", name = acid_wastewater[ore_material[ore].acid], amount = 50},
          {type = "item", name = "geode-"..ore_material[ore].geode, amount = 1, probability = 0.5},
        },
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/chunk.png",
        icon_size = 32,
        order = ore_material[ore].order or "a"
      },
	    --TIER 3
		  {
        type = "recipe",
        name = ore.."-crystal",
        category = "ore-sorting-t3",
        subgroup = "clowns-ore-processing-c",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
          {type = "item", name = ore.."-chunk", amount = 2},
          {type = "fluid", name = ore_material[ore].acid, amount = 10}
        },
        results =
        {
          {type = "item", name = ore.."-crystal", amount = 2},
        },
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/crystal.png",
        icon_size = 32,
        order = ore_material[ore].order or "a"
      },
	    --TIER 4
      {
        type = "recipe",
        name = ore.."-pure",
        category = "ore-sorting-t4",
        subgroup = "clowns-ore-processing-d",
        energy_required = 2,
        enabled = false,
        ingredients =
        {
          {type = "item", name = ore.."-crystal", amount = 4},
        },
        results=
        {
          {type = "item", name = ore.."-pure", amount = 4},
        },
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/pure.png",
        icon_size = 32,
        order = ore_material[ore].order or "a"
      },
    }   
  )
end