local icons = clowns.tables.science_icons
local ctrig = clowns.triggers
local rawmulti = angelsmods.marathon.rawmulti
local param = 2 --Multiplier for larger recipe

data:extend({
  --SCIENCE PACK 1 (Automation)
  {
    type = "recipe",
    name = "automation-science-pack-alt1",
    enabled = true,
    energy_required = 5,
    subgroup = "automation-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.automation}, 2 , clowns.icon_tint),
    ingredients =
    {
      {"stone-pipe", 5},
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
      {"angels-plate-lead", 2},
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
      {"steel-axe", 1}
    },
    result = clowns.triggers.angels_tech and "datacore-logistic-1" or "logistic-science-pack",
  },
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
  {
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
      {"invar-alloy", 1}
    },
    results = {{type="item", name= clowns.triggers.angels_tech and "datacore-energy-1" or "chemical-science-pack", amount=2}}
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
      {"solid-rubber", 3},
      {"rocket-booster", 2},
      {"long-handed-inserter", 1},
      {"cobalt-steel-alloy", 2}
    },
    results = {{type="item", name= clowns.triggers.angels_tech and "datacore-energy-1" or "chemical-science-pack", amount=2}}
  },
  --SCIENCE PACK MILITARY
  {
    type = "recipe",
    name = "military-science-pack-alt1",
    enabled = false,
    energy_required = 12,
    subgroup = "military-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.military}, 3 , clowns.icon_tint),
    ingredients =
    {
      {"turret", 1},
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
    icons = angelsmods.functions.add_number_icon_layer({icons.military}, 2 , clowns.icon_tint),
    ingredients =
    {
      {"stone-wall", 1},
      {"explosives", 3},
      {"shotgun", 1},
    },
    results = {{type="item", name = clowns.triggers.angels_tech and "datacore-war-1" or "military-science-pack", amount=3}}
  },
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
  {
    type = "recipe",
    name = "production-science-pack-alt1",
    enabled = false,
    energy_required = 14,
    subgroup = "production-science-pack",
    icons = angelsmods.functions.add_number_icon_layer({icons.production}, 2 , clowns.icon_tint),
    ingredients =
    {
      {"insulated-cable", 4},
      {"steam-cracker", 1}
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
      {"angels-plate-manganese", 1},
      {"angels-plate-cobalt",1},--{"clowns-plate-osmium", 1},
      {"angels-flare-stack", 1},
      {"accumulator", 1},
    },
    results = {{type="item", name=clowns.triggers.angels_tech and "datacore-processing-1" or "production-science-pack", amount=3}}
  },
  --SCIENCE PACK UTILITY
  {
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
      {"lithium-ion-battery", 1},
      {"gilded-copper-cable", 4},
      {"angels-plate-glass", 4},
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
      {"advanced-processing-unit", 2},
      {"silver-zinc-battery", 2},
      {"copper-tungsten-alloy", 3},
      {"angels-plate-cobalt", 1},
    },
    results = {{type="item", name=clowns.triggers.angels_tech and "datacore-enhance-1" or "utility-science-pack", amount=4}}
  },
}
)