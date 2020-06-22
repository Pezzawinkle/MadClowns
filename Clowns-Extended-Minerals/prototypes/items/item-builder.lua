--ore table
local ore_table={"clowns-ore1","clowns-ore2","clowns-ore3","clowns-ore4","clowns-ore5","clowns-ore6","clowns-ore7","clowns-ore8", "clowns-ore9"}

for _, name in pairs(ore_table) do
data:extend(
  {
    --Crushed
    {
      type = "item",
      name = ""..name.."-crushed",
      localised_name = {"item-name.clown-mat","Crushed",{"entity-name."..name}},
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crushed.png", 
      icon_size = 32,
      subgroup = "clowns-ore-processing-a",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Chunk
    {
      type = "item",
      name = ""..name.."-chunk",
      localised_name = {"item-name.clown-mat",{"entity-name."..name},"Chunk"},
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/chunk.png",
      icon_size = 32,
      subgroup = "clowns-ore-processing-b",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Crystal
    {
      type = "item",
      name = ""..name.."-crystal",
      localised_name = {"item-name.clown-mat",{"entity-name."..name},"Crystal"},
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crystal.png",
      icon_size = 32,
      subgroup = "clowns-ore-processing-c",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Pure
    {
      type = "item",
      name = ""..name.."-pure",
      localised_name = {"item-name.clown-mat","Purified",{"entity-name."..name}},
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/pure.png",
      icon_size = 32,
      subgroup = "clowns-ore-processing-d",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Ore
    {
      type = "item",
      name = name,
      localised_name = {"item-name.clown-mat",{"entity-name."..name},"Ore"},
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/ore.png",
      icon_size = 32,
      subgroup = "angels-ores",
      order = "a["..name.."]",
      stack_size = 200
    }
  }
)
end
--mixed ores
clowns.shifts = {
  ["clowns-ore11"] = {["A"]={223,253,045},["B"]={255,150,110},["C"]={255,150,110,0.7},["D"]={250,145,105,0.9},["E"]={165,093,051}},
  ["clowns-ore12"] = {["A"]={251,133,000},["B"]={249,054,010},["C"]={249,054,010,0.7},["D"]={244,049,005,0.9},["E"]={165,093,051}},
  ["clowns-ore13"] = {["A"]={218,020,118},["B"]={159,020,121},["C"]={159,020,121,0.7},["D"]={154,015,016,0.9},["E"]={165,093,051}},
  ["clowns-ore14"] = {["A"]={098,000,171},["B"]={067,008,151},["C"]={067,008,151,0.7},["D"]={062,003,146,0.9},["E"]={165,093,051}},
  ["clowns-ore15"] = {["A"]={108,163,103},["B"]={162,131,100},["C"]={089,083,122,0.7},["D"]={122,088,074,0.9},["E"]={165,093,051}}
}
local shifts=clowns.shifts
for _, name in pairs({"clowns-ore11","clowns-ore12","clowns-ore13","clowns-ore14","clowns-ore15"}) do
  data:extend(
    {
      --SUBGROUP
      {
        type = "item-subgroup",
        name = "mixed-ore-".. name,
        group = "resource-refining",
        order = "j-e",
      },
      --Crushed
      {
        type = "item",
        name = ""..name.."-crushed",
        localised_name = {"item-name.clown-mat","Crushed",{"entity-name."..name}},
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crushed.png", 
        icon_size = 32,
        subgroup = "mixed-ore-".. name,
        order = "a["..name.."]",
        stack_size = 200
      },
      --Powder
      {
        type = "item",
        name = ""..name.."-powder",
        localised_name = {"item-name.clown-mat",{"entity-name."..name},"Powder"},
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/powder.png", 
        icon_size = 32,
        subgroup = "mixed-ore-".. name,
        order = "b["..name.."]",
        stack_size = 200
      },
      --Dust
      {
        type = "item",
        name = ""..name.."-dust",
        localised_name = {"item-name.clown-mat",{"entity-name."..name},"Dust"},
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/dust.png",
        icon_size = 32,
        subgroup = "mixed-ore-".. name,
        order = "d["..name.."]",
        stack_size = 200
      },
      --Crystal
      {
        type = "item",
        name = ""..name.."-crystal",
        localised_name = {"item-name.clown-mat",{"entity-name."..name},"Crystal"},
        icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crystal.png",
        icon_size = 32,
        subgroup = "mixed-ore-".. name,
        order = "h["..name.."]",
        stack_size = 200
      },
      --Sludge
      {
        type = "fluid",
        name = ""..name.."-sludge",
        localised_name = {"item-name.clown-mat",{"entity-name."..name},"Sludge"},
        icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, {shifts[name].A, shifts[name].A, shifts[name].B, shifts[name].B}),
        subgroup = "fluids-refining",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r = 132 / 255, g = 176 / 255, b = 11 / 255},
        flow_color = {r = 132 / 255, g = 176 / 255, b = 11 / 255},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
      },
      --Solution
      {
        type = "fluid",
        name = ""..name.."-solution",
        localised_name = {"item-name.clown-mat",{"entity-name."..name},"Solution"},
        icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, {shifts[name].A, nil, shifts[name].B}),
        subgroup = "fluids-refining",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r = 255 / 255, g = 119 / 255, b = 0 / 255},
        flow_color = {r = 255 / 255, g = 119 / 255, b = 0 / 255},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
      },
      --Anode-sludge
      {
        type = "fluid",
        name = ""..name.."-anode-sludge",
        localised_name = {"item-name.clown-mat",{"entity-name."..name},"Anode Sludge"},
        icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, {shifts[name].A, shifts[name].A, shifts[name].C, shifts[name].E}),
        subgroup = "fluids-refining",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r = 255 / 255, g = 119 / 255, b = 0 / 255},
        flow_color = {r = 255 / 255, g = 119 / 255, b = 0 / 255},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
      },
      --Slime
      {
        type = "fluid",
        name = ""..name.."-slime",
        localised_name = {"item-name.clown-mat",{"entity-name."..name},"Essence"},
        icons = angelsmods.functions.create_viscous_liquid_fluid_icon(nil, {shifts[name].B, nil, shifts[name].D}),
        subgroup = "fluids-refining",
        default_temperature = 25,
        heat_capacity = "1KJ",
        base_color = {r = 255 / 255, g = 119 / 255, b = 0 / 255},
        flow_color = {r = 255 / 255, g = 119 / 255, b = 0 / 255},
        max_temperature = 100,
        pressure_to_speed_ratio = 0.4,
        flow_to_energy_ratio = 0.59
      },
    }
  )
end