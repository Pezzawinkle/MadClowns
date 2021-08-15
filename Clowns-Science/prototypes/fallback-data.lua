-- DECLARE PACK ICONS HERE INSTEAD OF OVERRIDING LATER
local ctrig=clowns.triggers
--[[clowns.triggers = {
  ["angels_tech"] = (mods["angelsindustries"] and angelsmods.industries.tech) and true or false,
  ["pyanodons"] = mods["pycoalprocessing"] and true or false,
  ["krastorio"] = mods["Krastorio2"] and true or false,
  ["omnimatter"] = mods["omnimatter"] and true or false,
  ["bobtech_colours"] = mods["bobtech"] and settings.startup["bobmods-tech-colorupdate"].value or false,
  ["bobtech_default"] = mods["bobtech"] and true or false,
  --else vanilla(ish)
}]]
clowns.tables.science_icons = {
  ["automation"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-basic.png", size = 32} or
    ctrig.pyanodons and {icon = "__pycoalprocessinggraphics__/graphics/icons/science-pack-1.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/automation-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__base__/graphics/icons/automation-science-pack.png", icon_size = 64} or
    ctrig.bobtech_colours and {icon = "__base__/graphics/icons/utility-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/automation-science-pack.png", icon_size = 64},

  ["logistic"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-logistic-1.png", size = 32} or
    ctrig.pyanodons and {icon = "__pycoalprocessinggraphics__/graphics/icons/science-pack-2.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/logistic-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64} or
    ctrig.bobtech_colours and {icon = "__base__/graphics/icons/automation-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64},  
    
  ["chemical"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-energy-1.png", size = 32} or
    ctrig.pyanodons and {icon = "__pycoalprocessinggraphics__/graphics/icons/science-pack-3.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/chemical-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    --no difference for this one for the other configs
    {icon = "__base__/graphics/icons/chemical-science-pack.png", icon_size = 64},

  ["military"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-war-1.png", size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/military-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    --no difference for this one for the other configs
    {icon = "__base__/graphics/icons/military-science-pack.png", icon_size = 64},

  ["utility"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-enhance-1.png", size = 32} or
    (ctrig.pyanodons and mods["pyhightech"]) and {icon = "__pyhightechgraphics__/graphics/icons/high-tech-science-pack.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/utility-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__base__/graphics/icons/utility-science-pack.png", icon_size = 64} or
    ctrig.bobtech_colours and {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/utility-science-pack.png", icon_size = 64},  

  ["production"] = ctrig.angels_tech and {icon = "__angelsindustries__/graphics/icons/datacore-processing-1.png", size = 32} or
    (ctrig.pyanodons and mods["pyfusionenergy"]) and {icon = "__pyfusionenergygraphics__/graphics/icons/production-science-pack.png", icon_size = 32} or
    ctrig.krastorio and {icon = "__Krastorio2__/graphics/icons/cards/production-tech-card.png", icon_size = 64, icon_mipmaps = 4} or
    ctrig.omnimatter and {icon = "__omnilib__/graphics/icons/science-pack/production-science-pack.png", icon_size = 64} or
    ctrig.bobtech_colours and {icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size = 64} or
    {icon = "__base__/graphics/icons/production-science-pack.png", icon_size = 64},

  -- alternative science packs
  ["advlog"] = ctrig.bobtech_default and {icon = "__bobtech__/graphics/icons/logistic-science-pack.png", icon_size = 32},
  ["omnipack"] = (mods["omnimatter_science"] and ctrig.krastorio) and {icon = "__omnimatter_science__/graphics/technology/omni-tech-card.png", icon_size = 128} or
    mods["omnimatter_science"] and {icon = "__base__/graphics/icons/production-science-pack.png", icon_size = 64},
  ["pypack"] = mods["pyalienlife"] and {icon = "__pyalienlifegraphics__/graphics/icons/py_science_pack.png",icon_size = 64},
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
  if data.raw.recipe["advanced-logistic-science-pack"] then
    table.insert(results_3, {type="item", name="advanced-logistic-science-pack", amount=amount_param, probability=0.2})
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
  if data.raw.recipe["advanced-logistic-science-pack"] then
    table.insert(results_4, {type="item", name="advanced-logistic-science-pack", amount=amount_param, probability=0.1})
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

  --==FullPy==-- | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Automation  | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Logistics   | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Military    | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Chemical    | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Production  | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Utility     | Plate | Fluids | Power | Fuel | Complex | Ings
  -- Space       | Plate | Fluids | Power | Fuel | Complex | Ings