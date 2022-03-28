local icons = clowns.tables.science_icons
local ctrig = clowns.triggers
--dynamic recipe building
local recipe_list = {}
local rec_names = {}
clowns.tables.tech_unlock = {}
for time,name in pairs({"automation","logistic","military","chemical","production","utility"}) do
  for i = 1,4 do
    --get params
    local vals = clowns.tables.pack_costs[name.."_"..i]
    local result = clowns.functions.get_pack_name(name)
    local subgroup = data.raw["item-subgroup"][name.."-science-pack"] and name.."-science-pack" or "advanced-science"
    local tech_unlocked = clowns.functions.recipe_unlocked(name)
    --general subgroup
    if vals then --check it is in the table first
      table.insert(recipe_list,{
        type = "recipe",
        name = name.."-science-pack-alt"..i,
        enabled = tech_unlocked,
        energy_required = (time + 4) * (vals.result_count or 1),
        subgroup = name.."-science-pack",
        icons = angelsmods.functions.add_number_icon_layer({icons[name]}, i+1 , clowns.icon_tint),
        ingredients = vals.ingredients,
        results = {{type = "item", name = result, amount = vals.result_count or 1}},
        order = "a-b[alt-"..i.."]",
      })
      table.insert(rec_names,name.."-science-pack-alt"..i)
      table.insert(clowns.tables.tech_unlock, {name,i})
    else
      --log("tech name:"..name.."-science-pack-alt"..i.." not listed")
    end
  end
end

data:extend(recipe_list)
--allow productivity.
for _,name in pairs(rec_names) do
  angelsmods.functions.allow_productivity(name)
end
--[[data:extend({
  --SCIENCE PACK 1 (Automation)
  --[[{
    type = "recipe",
    name = "automation-science-pack-alt1",
    enabled = true,
    energy_required = 5,
    subgroup = "automation-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.automation}, 2 , clowns.icon_tint),
    ingredients =
    {
      mods["boblogistics"] and {"stone-pipe", 5} or {"pipe", 10},
      {"wooden-chest", 3}
    },
    result = clowns.triggers.angels_tech and "datacore-basic" or "automation-science-pack",
  },
  {
    type = "recipe",
    name = "automation-science-pack-alt2",
    enabled = true,
    energy_required = 5,
    subgroup = "automation-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.automation}, 3 , clowns.icon_tint),
    ingredients =
    {
      mods["angelsmelting"] and {"angels-plate-lead", 2} or {"copper-cable", 6},
      {"iron-stick", 3}
    },
    result =  clowns.triggers.angels_tech and "datacore-basic" or "automation-science-pack",
  },
  --SCIENCE PACK 2 (Logistics)
  {
    type = "recipe",
    name = "logistic-science-pack-alt1",
    enabled = false,
    energy_required = 6,
    subgroup = "logistic-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.logistic}, 2 , clowns.icon_tint),
    ingredients =
    {
      {"small-lamp", 1},
      {"boiler", 1}
    },
    result = clowns.triggers.angels_tech and "datacore-logistic-1" or "logistic-science-pack",
  },
  {
    type = "recipe",
    name = "logistic-science-pack-alt2",
    enabled = false,
    energy_required = 6,
    subgroup = "logistic-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.logistic}, 3 , clowns.icon_tint),
    ingredients =
    {
      {"offshore-pump", 1},
      {"electric-mining-drill", 1}
    },
    result = clowns.triggers.angels_tech and "datacore-logistic-1" or "logistic-science-pack",
  },]]
  --[[{
    type = "recipe",
    name = "logistic-science-pack-alt3",
    enabled = false,
    energy_required = 6,
    subgroup = "logistic-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.logistic}, 4 , clowns.icon_tint),
    ingredients =
    {
      {"repair-pack", 1},
      {"solid-carbon", 3}
    },
    result = clowns.triggers.angels_tech and "datacore-logistic-1" or "logistic-science-pack",
  },]]
  --SCIENCE PACK 3 (Chemical)
  --[[{
    type = "recipe",
    name = "chemical-science-pack-alt1",
    enabled = false,
    energy_required = 12,
    subgroup = "chemical-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.chemical}, 2 , clowns.icon_tint),
    ingredients =
    {
      {"electronic-circuit", 3},
      {"battery", 1},
      {"chemical-plant", 1},
      (mods["bobplates"] and data.raw.item["invar-alloy"]) and {"invar-alloy", 1} or {"steel-plate",10}
    },
    results = {{type="item", name= clowns.triggers.angels_tech and "datacore-energy-1" or "chemical-science-pack", amount=2}},
  },
  {
    type = "recipe",
    name = "chemical-science-pack-alt2",
    enabled = false,
    energy_required = 12,
    subgroup = "chemical-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.chemical}, 3 , clowns.icon_tint),
    ingredients =
    {
      mods["bobplates"] and {"solid-rubber", 3} or {"plastic-bar",6},
      mods["angelspetrochem"] and {"rocket-booster", 2} or {"solid-fuel",6},
      {"long-handed-inserter", 1},
      (mods["bobplates"] and data.raw.item["cobalt-steel-alloy"]) and {"cobalt-steel-alloy", 2} or {"concrete",10}
    },
    results = {{type="item", name= clowns.triggers.angels_tech and "datacore-energy-1" or "chemical-science-pack", amount=2}}
  },]]
  --SCIENCE PACK MILITARY
  --[[{
    type = "recipe",
    name = "military-science-pack-alt1",
    enabled = false,
    energy_required = 12,
    subgroup = "military-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.military}, 2 , clowns.icon_tint),
    ingredients =
    {
      {"gun-turret", 1},
      {"shotgun-shell", 1},
      {"steel-plate", 3},
    },
    results = {{type="item", name= clowns.triggers.angels_tech and "datacore-war-1" or "military-science-pack", amount=2}}
  },
  {
    type = "recipe",
    name = "military-science-pack-alt2",
    enabled = false,
    energy_required = 12,
    subgroup = "military-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.military}, 3 , clowns.icon_tint),
    ingredients =
    {
      {"stone-wall", 1},
      {"explosives", 3},
      (mods["bobplates"] and data.raw.item["gunmetal-alloy"]) and {"gunmetal-alloy", 2} or {"shotgun", 3},
    },
    results = {{type="item", name = clowns.triggers.angels_tech and "datacore-war-1" or "military-science-pack", amount=3}}
  },]]
  --[[if mods["bobwarfare"] then
  data:extend(
  {
    {
      type = "recipe",
      name = "alt2-military-science-pack",
      enabled = false,
      energy_required = 10,
      subgroup = "military-science-pack",
      order = "a-c",
      icons = angelsmods.functions.add_number_icon_layer({icons.military}, 3 , clowns.icon_tint),
      ingredients =
      {
        {"shotgun-shell", 1},
        {"reinforced-gate", 2},
        {"gunmetal-alloy", 2}
      },
      results = {{type="item", name="military-science-pack", amount=2}}
    },
  }
  )
  end]]
  --SCIENCE PACK PRODUCTION
  --[[{
    type = "recipe",
    name = "production-science-pack-alt1",
    enabled = false,
    energy_required = 14,
    subgroup = "production-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.production}, 2 , clowns.icon_tint),
    ingredients =
    {
      (mods["bobplates"] and mods["bobelectronics"] and data.raw.item["insulated-cable"]) and {"insulated-cable", 4} or {"copper-cable",20},
      mods["angelspetrochem"] and {"steam-cracker", 1} or {"chemical-plant",2}
    },
    results = {{type="item", name=clowns.triggers.angels_tech and "datacore-processing-1" or "production-science-pack", amount=3}}
  },

  {
    type = "recipe",
    name = "production-science-pack-alt2",
    enabled = false,
    energy_required = 14,
    subgroup = "production-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.production}, 3 , clowns.icon_tint),
    ingredients =
    {
      mods["angelsmelting"] and {"angels-plate-manganese", 1} or {"iron-stick",20},
      mods["Clowns-processing"] and {"clowns-plate-osmium", 1} or
        mods["angelsmelting"] and {"angels-plate-cobalt",1} or
        {"rail-signal",2},
      mods["angelspetrochem"] and {"angels-flare-stack", 1} or {"oil-refinery",1},
      {"accumulator", 1},
    },
    results = {{type="item", name=clowns.triggers.angels_tech and "datacore-processing-1" or "production-science-pack", amount=3}}
  },]]
  --SCIENCE PACK UTILITY
  --[[{
    type = "recipe",
    name = "utility-science-pack-alt1",
    enabled = false,
    energy_required = 14,
    subgroup = "utility-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.utility}, 2 , clowns.icon_tint),
    ingredients =
    {
      {"advanced-circuit", 3},
      {"productivity-module", 2},
      mods["bobplates"] and {"lithium-ion-battery", 1} or {"battery",5},
      (mods["bobplates"] and mods["bobelectronics"]) and {"gilded-copper-cable", 4} or {"copper-cable",8},
      mods["angelsmelting"] and {"angels-plate-glass", 4} or {"plastic-bar",8},
    },
    results = {{type="item", name=clowns.triggers.angels_tech and "datacore-enhance-1" or "utility-science-pack", amount=4}}
  },
  {
    type = "recipe",
    name = "utility-science-pack-alt2",
    enabled = false,
    energy_required = 14,
    subgroup = "utility-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.utility}, 3 , clowns.icon_tint),
    ingredients =
    {
      mods["bobelectronics"] and {"advanced-processing-unit", 2} or {"processing-unit",2},
      mods["bobplates"] and {"silver-zinc-battery", 2} or {"battery",10},
      mods["bobplates"] and {"copper-tungsten-alloy", 3} or {"steel-plate",6},
      mods["angelsmelting"] and {"angels-plate-cobalt", 1} or {"accumulator",1}, 
    },
    results = {{type="item", name=clowns.triggers.angels_tech and "datacore-enhance-1" or "utility-science-pack", amount=4}}
  },
}
)]]