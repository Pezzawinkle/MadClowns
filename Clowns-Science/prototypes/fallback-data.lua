-- DECLARE PACK ICONS HERE INSTEAD OF OVERRIDING LATER
local ctrig=clowns.triggers

clowns.tables.science_icons = {
  ["automation"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-basic.png", icon_size =  32} or
    ctrig.sct and {icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-1-64.png", icon_size = 64} or
    ctrig.pyanodons and {icon = "__pycoalprocessinggraphics__/graphics/icons/science-pack-1.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/automation-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__base__/graphics/icons/automation-science-pack.png", icon_size = 64} or
    ctrig.bobtech_colours and {icon = "__base__/graphics/icons/utility-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/automation-science-pack.png", icon_size = 64},

  ["logistic"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-logistic-1.png", icon_size =  32} or
    ctrig.sct and {icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-2-64.png", icon_size = 64} or
    ctrig.pyanodons and {icon = "__pycoalprocessinggraphics__/graphics/icons/science-pack-2.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/logistic-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64} or
    ctrig.bobtech_colours and {icon = "__base__/graphics/icons/automation-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64},  
    
  ["chemical"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-energy-1.png", icon_size =  32} or
    ctrig.sct and {icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-3-64.png", icon_size = 64} or
    ctrig.pyanodons and {icon = "__pycoalprocessinggraphics__/graphics/icons/science-pack-3.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/chemical-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    --no difference for this one for the other configs
    {icon = "__base__/graphics/icons/chemical-science-pack.png", icon_size = 64},

  ["military"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-war-1.png", icon_size =  32} or
    ctrig.sct and {icon = "__ScienceCostTweakerM__/graphics/icons/military-science-pack-64.png", icon_size = 64} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/military-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    --no difference for this one for the other configs
    {icon = "__base__/graphics/icons/military-science-pack.png", icon_size = 64},

  ["utility"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-enhance-1.png", icon_size =  32} or
    ctrig.sct and {icon = "__ScienceCostTweakerM__/graphics/icons/high-tech-science-pack-64.png", icon_size = 64} or
    (ctrig.pyanodons and mods["pyhightech"]) and {icon = "__pyhightechgraphics__/graphics/icons/high-tech-science-pack.png", icon_size = 64} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/utility-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__base__/graphics/icons/utility-science-pack.png", icon_size = 64} or
    ctrig.bobtech_colours and {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/utility-science-pack.png", icon_size = 64},  

  ["production"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-processing-1.png", icon_size =  32} or
    ctrig.sct and {icon = "__ScienceCostTweakerM__/graphics/icons/production-science-pack-64.png", icon_size = 64} or 
    (ctrig.pyanodons and mods["pyfusionenergy"]) and {icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/production-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__omnilib__/graphics/icons/science-pack/production-science-pack.png", icon_size = 64} or
    --ctrig.bobtech_colours and {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/production-science-pack.png", icon_size = 64},

  -- alternative science packs
  ["advanced-logistics"] = mods["bobtech"] and {icon = "__bobtech__/graphics/icons/logistic-science-pack.png", icon_size = 32} or {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64},
  ["omni"] = (mods["omnimatter_science"] and ctrig.krastorio) and {icon = "__omnimatter_science__/graphics/technology/omni-tech-card.png", icon_size = 128} or
    mods["omnimatter_science"] and {icon = "__base__/graphics/icons/production-science-pack.png", icon_size = 64},
  ["pypack"] = mods["pyalienlife"] and {icon = "__pyalienlifegraphics__/graphics/icons/py_science_pack.png", icon_size = 64},
  --["steam-pack"] --[[bobmods steam science mode]] = 
  --["burner-pack"] --[[AAII]] =
  --["sct-bio-science-pack"] --[[SCT and angels]] = 
}

--BUILD RESULTS
local amount_param = 1
local results_1 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_1, {type="item", name="omni-pack", amount=amount_param, probability=0.4})
end
if mods["angelsindustries"] and settings.startup["angels-enable-tech"].value then
  table.insert(results_1, {type="item", name="angels-science-pack-grey", amount=amount_param, probability=0.04})
else
  table.insert(results_1, {type="item", name="automation-science-pack", amount=amount_param, probability=0.4})
  table.insert(results_1, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.4})
  table.insert(results_1, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.4})
end

local results_2 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_2, {type="item", name="omni-pack", amount=amount_param, probability=0.3})
end
if mods["angelsindustries"] and settings.startup["angels-enable-tech"].value then
  table.insert(results_2, {type="item", name="angels-science-pack-red", amount=amount_param, probability=0.03})
  table.insert(results_2, {type="item", name="angels-science-pack-green", amount=amount_param, probability=0.03})
  table.insert(results_2, {type="item", name="angels-science-pack-orange", amount=amount_param, probability=0.03})
else
  table.insert(results_2, {type="item", name="automation-science-pack", amount=amount_param, probability=0.3})
  table.insert(results_2, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.3})
  table.insert(results_2, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.3})
  table.insert(results_2, {type="item", name="military-science-pack", amount=amount_param, probability=0.3})
  table.insert(results_2, {type="item", name="production-science-pack", amount=amount_param, probability=0.3})
end
local results_3 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_3, {type="item", name="omni-pack", amount=amount_param, probability=0.2})
end
if mods["angelsindustries"] and settings.startup["angels-enable-tech"].value then
  table.insert(results_3, {type="item", name="angels-science-pack-blue", amount=amount_param, probability=0.02})
  table.insert(results_3, {type="item", name="angels-science-pack-yellow", amount=amount_param, probability=0.02})
else
  table.insert(results_3, {type="item", name="automation-science-pack", amount=amount_param, probability=0.2})
  table.insert(results_3, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.2})
  table.insert(results_3, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.2})
  table.insert(results_3, {type="item", name="military-science-pack", amount=amount_param, probability=0.2})
  table.insert(results_3, {type="item", name="production-science-pack", amount=amount_param, probability=0.2})
  if data.raw.recipe["bob-advanced-logistic-science-pack"] then
    table.insert(results_3, {type="item", name="bob-advanced-logistic-science-pack", amount=amount_param, probability=0.2})
  end
  table.insert(results_3, {type="item", name="utility-science-pack", amount=amount_param, probability=0.2})
end


local results_4 = {}

if data.raw.recipe["omni-pack"] then
	table.insert(results_4, {type="item", name="omni-pack", amount=amount_param, probability=0.1})
end

if mods["angelsindustries"] and settings.startup["angels-enable-tech"].value then
  table.insert(results_4, {type="item", name="angels-science-pack-white", amount=amount_param, probability=0.01})
else
  table.insert(results_4, {type="item", name="automation-science-pack", amount=amount_param, probability=0.1})
  table.insert(results_4, {type="item", name="logistic-science-pack", amount=amount_param, probability=0.1})
  table.insert(results_4, {type="item", name="chemical-science-pack", amount=amount_param, probability=0.1})
  table.insert(results_4, {type="item", name="military-science-pack", amount=amount_param, probability=0.1})
  table.insert(results_4, {type="item", name="production-science-pack", amount=amount_param, probability=0.1})
  if data.raw.recipe["bob-advanced-logistic-science-pack"] then
    table.insert(results_4, {type="item", name="bob-advanced-logistic-science-pack", amount=amount_param, probability=0.1})
  end
  table.insert(results_4, {type="item", name="utility-science-pack", amount=amount_param, probability=0.1})
  table.insert(results_4, {type="item", name="space-science-pack", amount=amount_param, probability=0.1})
end

clowns.tables.multi_pack = {results_1,results_2,results_3,results_4}

--------------------------------------------------------------------------------------------------
-- COSTING BASIS TABLES
--------------------------------------------------------------------------------------------------
--[[ key: 
Basis is 1k spm
Plate refers to raw plates (i.e. steel = iron = copper etc)
Fluids is total fluid required (as raw, not div10)
Power and fuel is total from helmod excluding inserters (helmod data no prod, top tier buildings where possible) (in MW)
Fuel is for solid fuels (including solid fuel/coal as ingredients)
Complex refers to production steps required from plates (total buildings in brackets)
time is final step recipe time per pack
Ings refers to how many ingredients per pack in final step]]


--==Vanilla==--  | Plate  | Fluids | Power | Fuel  | Complex  | time  | Ings 
  -- Automation  |   3000 |   --   |  28.5 |  --   |    1(74) | 5     | 2 (1,1->1)
  -- Logistics   |   7000 |   --   |  45.3 |  --   |   5(118) | 6     | 2 (1,1->1)
  -- Military    |  12500 |   --   |  59.5 |  5000 |   4(155) | 5     | 2 (1,1,2-->2)
  -- Chemical    |  18500 |  15000 | 170.2 |  --   |   7(710) | 12    | 3 (1,3,2->2)
  -- Production  |  53336 |   --   | 264.4 |  --   |   7(686) | 7     | 11 (30,1,1->3)
  -- Utility     |  79835 |  21667 | 222.2 |  --   | 12(1102) | 7     | 2 (2,1,3->3)
  -- Space       | 168113 |  26000 |  1200 | 10500 | 14(2921) | 0.315 | 1 (1+3x1000->1000)

--==FullPy==--   | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Automation  | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Logistics   | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Military    | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Chemical    | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Production  | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Utility     | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Space       | Plate | Fluids | Power | Fuel | Complex | Ings

--==SCT-SB==--   | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Automation  | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Logistics   | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Military    | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Chemical    | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Production  | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Utility     | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Space       | Plate | Fluids | Power | Fuel | Complex | Ings
  clowns.tables.pack_costs = {
    --automation budget = 3000
    ["automation_1"] = {theme="support", result_count = 2, ingredients = {
        {"wooden-chest",3},
        {"pipe",6}
      }}, --8000
    ["automation_2"] = {theme="copper", result_count = 1, ingredients = {
        {"copper-cable",6}, 
        {"iron-stick",3}
      }}, --4500
    ["automation_3"] = {theme="wood", result_count = 1, ingredients = {
        {"small-electric-pole",2}, 
        {"wooden-chest",2}
      }}, --6000
    ["automation_4"] = {theme="burner", result_count = 4, ingredients = {
        {"burner-inserter",2}, 
        {"burner-mining-drill",1}
      }}, --5000
    --logistics budget = 7000
    ["logistic_1"]  = {theme="light", result_count = 2, ingredients = {
        {"boiler",1}, 
        {"small-lamp",2}
      }}, --9500
    ["logistic_2"]  = {theme="insert", result_count = 4, ingredients = {
        {"filter-inserter",1}, 
        {"steel-plate",2}
      }}, --8125 (or 6125 if you don't count steel)
    ["logistic_3"]  = {theme="belts", result_count = 7, ingredients = {
        {"splitter",2}, 
        {"underground-belt",1}
      }}, --7941
    ["logistic_4"]  = {theme="pipes", result_count = 2, ingredients = {
        {"pipe-to-ground",1}, 
        {"underground-belt",1}
      }},-- 8125
    --military budget = 17500 (19500 without steel)
    ["military_1"]   = {theme="ammo", result_count = 3, ingredients = {
        {"piercing-rounds-magazine",3}, 
        {"shotgun-shell",1},
        {"grenade",2}
      }},--21334 (25334 with steel)
    ["military_2"]   = {theme="aoe", result_count = 4, ingredients = {
        {"explosives",1}, 
        {"shotgun",2}, 
        {"angels-stone-wall",3}
      }},--24375
    ["military_3"]   = {theme="wall", result_count = 9, ingredients = {
        {"gun-turret",1}, 
        {"gate",1}, 
        {"heavy-armor",1}
      }},--23558 (46668 with steel)
    ["military_4"]   = {theme="explore", result_count = 12, ingredients = {
        {"radar",2}, 
        {"heavy-armor",1}, 
        {"night-vision-equipment",1}
      }}, --22500 (42500 with steel)
    --chemical budget = 20000
    ["chemical_1"]   = {theme="prod", result_count = 2, ingredients = {
        {"electronic-circuit",3},
        {"battery",1},
        {"chemical-plant",1},
        {"steel-plate",10}
      }},
    ["chemical_2"]   = {theme="fuel", result_count = 2, ingredients = {
        {"plastic-bar",2},
        {"angels-solid-fuel",6},
        {"long-handed-inserter", 1},
        {"concrete",10}
      }},
    ["chemical_3"]   = {theme="acid", result_count = 3, ingredients = {
        {"sulfur",4},
        {"copper-plate",2},
        {"oil-refinery",1},
        {"battery",2}
      }},
    ["chemical_4"]   = {theme="oil", result_count = 2, ingredients = {
        {"pumpjack",1},
        {"chemical-plant",1},
        {"pipe-to-ground",4},
        {"plastic-bar",2}
      }},
    --Production budget = 53333 (86666 with steel)
    ["production_1"] = {theme="process", result_count = 1, ingredients = {
        {"copper-cable",25},
        {"chemical-plant",1},
        {"steel-furnace",1}
      }},
    ["production_2"] = {theme="rails", result_count = 2, ingredients = {
        {"iron-stick",20},
        {"rail-signal",2},
        {"accumulator",1},
        {"oil-refinery",1}
      }}, 
    ["production_3"] = {theme="smelting", result_count = 12, ingredients = {
        {"electric-furnace",2},
        {"power-switch",3},
        {"rocket-fuel",18},
        {"refined-concrete",50}
      }}, 
    --Utility budget = 79835 (92500 with steel)
    ["utility_1"] = {theme="module", result_count = 2, ingredients = {
        {"plastic-bar",8},
        {"battery",8},
        {"copper-cable",8},
        {"advanced-circuit",3},
        {"productivity-module",2}
        --94600
      }},
    ["utility_2"] = {theme="battery", result_count = 4, ingredients = {
        {"processing-unit",2},
        {"battery",10},
        {"steel-plate",6},
        {"accumulator",1}, 
      }},
    ["utility_3"] = {theme="energy", result_count = 80, ingredients = {
        {"nuclear-reactor",1},
        {"heat-pipe",30},
      }}, --86250 (126250 with steel) 
  }
--config updates
--[[clowns.triggers = {
  ["angels_tech"] = (mods["angelsindustries"] and angelsmods.industries.tech) and true or false,
  ["pyanodons"] = mods["pycoalprocessing"] and true or false,
  ["krastorio"] = mods["Krastorio2"] and true or false,
  ["omnimatter"] = mods["omnimatter"] and true or false,
  ["bobtech_colours"] = mods["bobtech"] and settings.startup["bobmods-tech-colorupdate"].value or false,
  ["bobtech_default"] = mods["bobtech"] and true or false,
  ["bobplates"] = mods["bobplates"] and true or false,
  ["sct"] = mods["ScienceCostTweakerM"] and true or false
  --else vanilla(ish)
}]]
local function update_tab(name,pos,new_ing)
  clowns.tables.pack_costs[name].ingredients[pos] = new_ing
end
--The order here is important, as the lower configs will "override" the higher ones if multiples are targetting the same item
if mods["boblogistics"] then
  update_tab("automation_1", 2, {"angels-stone-pipe", 5})
  if ctrig.bobplates then
    update_tab("logistic_4", 1, {"bronze-pipe-to-ground", 1})
    update_tab("chemical_4", 3, {"brass-pipe-to-ground", 1})
    if settings.startup["bobmods-logistics-inserteroverhaul"] then
      update_tab("logistic_2", 1, {"red-filter-inserter", 1}) --don't add blue teck items to green tech
    end
  end
end
if ctrig.bobplates then
  update_tab("automation_2", 1, {"lead-plate", 2})
  update_tab("logistic_2", 2, {"repair-pack-2", 3})
  update_tab("military_2", 2, {"gunmetal-alloy", 2})
  update_tab("chemical_1", 1, {"invar-alloy", 2})
  update_tab("chemical_2", 1, {"bob-rubber",3})
  update_tab("chemical_2", 4, {"cobalt-steel-alloy", 2})
  update_tab("production_2", 2, {"cobalt-plate", 1})
  update_tab("utility_1", 2, {"lithium-ion-battery", 2})
  update_tab("utility_1", 1, {"bob-glass", 4})
  update_tab("utility_2", 2, {"silver-zinc-battery", 2})
  update_tab("utility_2", 3, {"copper-tungsten-alloy", 3})
  update_tab("utility_2", 4, {"cobalt-plate", 3})
  --electronics:
  if mods["bobelectronics"] then
    update_tab("production_1", 1, {"bob-insulated-cable", 4})
    update_tab("utility_1", 3, {"bob-gilded-copper-cable", 4})
  end
end
if mods["bobelectronics"] then --regarless of plates
  update_tab("utility_2", 1, {"advanced-processing-unit", 2})
end
if mods["angelspetrochem"] then
  update_tab("chemical_2", 2, {"rocket-booster", 2})
  update_tab("production_1", 2, {"steam-cracker", 1})
  update_tab("production_2", 4, {"angels-flare-stack", 2})
  update_tab("production_3", 3, {"rocket-booster", 5})
end
if mods["angelsrefining"] then
  update_tab("production_3", 2, {"angels-ore-crusher", 2})
end
if mods["angelssmelting"] then
  update_tab("production_2", 1, {"angels-plate-manganese", 1})
  update_tab("production_1", 3, {"angels-blast-furnace", 1})
  update_tab("production_3", 1, {"angels-blast-furnace-2", 1})
  update_tab("production_3", 4, {"angels-reinforced-concrete-brick", 50})
end
if mods["Clowns-processing"] then
  update_tab("production_2", 2, {"clowns-plate-osmium", 1})
end
if mods["bobwarfare"] and mods["bobplates"] then
  update_tab("military_4", 1, {"radar-3",1})
  update_tab("military_4", 2, {"heavy-armor-2",1})
end