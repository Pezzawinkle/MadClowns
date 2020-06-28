if not (mods["angelsindustries"] and angelsmods.industries.tech) then

  local rawmulti = angelsmods.marathon.rawmulti
  local param = 2 --Multiplier for larger recipe
  --ORDERING: vanilla science-pack-1 is a, science-pack-2 is b etc

  if mods["bobwarfare"] then
  data:extend(
  {
    {
      type = "recipe",
      name = "alt2-military-science-pack",
      enabled = false,
      energy_required = 10,
      subgroup = "military-science-pack",
      order = "a-c",
      icons =
      {
        {
          icon = "__base__/graphics/icons/military-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
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
  end

  data:extend(
  {
    --RED

    {
      type = "recipe",
      name = "alt1-science-pack-1",
      enabled = true,
      energy_required = 5,
      subgroup = "automation-science-pack",
      order = "a-b",
      icons =
      {
        {
          icon = "__base__/graphics/icons/automation-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"stone-pipe", 5},
        {"wooden-chest", 3}
      },
      result = "automation-science-pack"
    },

    {
      type = "recipe",
      name = "alt2-science-pack-1",
      enabled = true,
      energy_required = 5,
      subgroup = "automation-science-pack",
      order = "a-c",
      icons =
      {
        {
          icon = "__base__/graphics/icons/automation-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"angels-plate-lead", 2},
        {"iron-stick", 3}
      },
      results = {{type="item", name="automation-science-pack", amount=1}}
    },

    --GREEN

    {
      type = "recipe",
      name = "alt1-science-pack-2",
      enabled = false,
      energy_required = 6,
      subgroup = "logistic-science-pack",
      order = "a-b",
      icons =
      {
        {
          icon = "__base__/graphics/icons/logistic-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"small-lamp", 1},
        {"boiler", 1}
      },
      results = {{type="item", name="logistic-science-pack", amount=1}}
    },

    --[[
    {
      type = "recipe",
      name = "alt2-science-pack-2",
      enabled = false,
      energy_required = 6,
      subgroup = "science-pack-2",
      order = "a-c",
      icons =
      {
        {
          icon = "__base__/graphics/icons/science-pack-2.png",
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      ingredients =
      {
        {"offshore-pump", 1},
        {"steel-axe", 1}
      },
      results = {{type="item", name="science-pack-2", amount=1}}
    },

    {
      type = "recipe",
      name = "alt3-science-pack-2",
      enabled = false,
      energy_required = 6,
      subgroup = "science-pack-2",
      order = "a-d",
      icons =
      {
        {
          icon = "__base__/graphics/icons/science-pack-2.png",
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      ingredients =
      {
        {"repair-pack", 1},
        {"solid-carbon", 3}
      },
      results = {{type="item", name="science-pack-2", amount=1}}
    },]]--

    --BLUE

    {
      type = "recipe",
      name = "alt1-science-pack-3",
      enabled = false,
      energy_required = 12,
      subgroup = "chemical-science-pack",
      order = "a-b",
      icons =
      {
        {
          icon = "__base__/graphics/icons/chemical-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"electronic-circuit", 3},
        {"battery", 1},
        {"chemical-plant", 1},
        {"invar-alloy", 1}
      },
      results = {{type="item", name="chemical-science-pack", amount=2}}
    },

    {
      type = "recipe",
      name = "alt2-science-pack-3",
      enabled = false,
      energy_required = 12,
      subgroup = "chemical-science-pack",
      order = "a-c",
      icons =
      {
        {
          icon = "__base__/graphics/icons/chemical-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"solid-rubber", 3},
        {"rocket-booster", 2},
        {"long-handed-inserter", 1},
        {"cobalt-steel-alloy", 2}
      },
      results = {{type="item", name="chemical-science-pack", amount=2}}
    },

    {
      type = "recipe",
      name = "alt1-military-science-pack",
      enabled = false,
      energy_required = 12,
      subgroup = "military-science-pack",
      order = "a-b",
      icons =
      {
        {
          icon = "__base__/graphics/icons/military-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"stone-wall", 1},
        {"explosives", 3},
        {"shotgun", 1},
      },
      results = {{type="item", name="military-science-pack", amount=3}}
    },

    {
      type = "recipe",
      name = "alt1-production-science-pack",
      enabled = false,
      energy_required = 14,
      subgroup = "production-science-pack",
      order = "a-b",
      icons =
      {
        {
          icon = "__base__/graphics/icons/production-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"insulated-cable", 4},
        {"steam-cracker", 1}
      },
      results = {{type="item", name="production-science-pack", amount=3}}
    },

    {
      type = "recipe",
      name = "alt2-production-science-pack",
      enabled = false,
      energy_required = 14,
      subgroup = "production-science-pack",
      order = "a-c",
      icons =
      {
        {
          icon = "__base__/graphics/icons/production-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"angels-plate-manganese", 1},
        {"angels-plate-cobalt",1},--{"clowns-plate-osmium", 1},
        {"angels-flare-stack", 1},
        {"accumulator", 1},
      },
      results = {{type="item", name="production-science-pack", amount=3}}
    },

    {
      type = "recipe",
      name = "alt1-high-tech-science-pack",
      enabled = false,
      energy_required = 14,
      subgroup = "utility-science-pack",
      order = "a-b",
      icons =
      {
        {
          icon = "__base__/graphics/icons/utility-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"advanced-circuit", 3},
        {"productivity-module", 2},
        {"lithium-ion-battery", 1},
        {"gilded-copper-cable", 4},
        {"angels-plate-glass", 4},
      },
      results = {{type="item", name="utility-science-pack", amount=4}}
    },
    {
      type = "recipe",
      name = "alt2-high-tech-science-pack",
      enabled = false,
      energy_required = 14,
      subgroup = "utility-science-pack",
      order = "a-c",
      icons =
      {
        {
          icon = "__base__/graphics/icons/utility-science-pack.png",
          icon_size=64,
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
          scale = 0.32,
          shift = {-12, -12}
        },
      },
      ingredients =
      {
        {"advanced-processing-unit", 2},
        {"silver-zinc-battery", 2},
        {"copper-tungsten-alloy", 3},
        {"angels-plate-cobalt", 1},
      },
      results = {{type="item", name="utility-science-pack", amount=4}}
    },
  }
  )
end