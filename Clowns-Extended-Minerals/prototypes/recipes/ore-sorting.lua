local OV = angelsmods.functions.OV
local rawmulti = angelsmods.marathon.rawmulti
local special_vanilla = clowns.special_vanilla
local ore_table = clowns.tables.ores
-------------------------------------------------------------------------------
-- FUNCTION AND LOOKUP TABLES SET-UP FOR SORTING ITEMS, ICONS AND CONDITIONS --
-------------------------------------------------------------------------------
-- lookup table to convert ore name to trigger name
local get_trigger_name = {
  -- TIER 1 ORES
  ["iron-ore"] = "iron",
  ["angels-iron-nugget"] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["angels-iron-pebbles"] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["angels-iron-slag"] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["copper-ore"] = "copper",
  ["angels-copper-nugget"] = special_vanilla and "copper" or "unused", -- special vanilla only
  ["angels-copper-pebbles"] = special_vanilla and "copper" or "unused", -- special vanilla only
  ["angels-copper-slag"] = special_vanilla and "copper" or "unused", -- special vanilla only
  -- TIER 1.5 ORES
  ["tin-ore"] = "tin",
  ["lead-ore"] = "lead",
  ["quartz"] = "silicon",
  ["nickel-ore"] = "nickel",
  ["manganese-ore"] = "manganese",
  --Clowns T1.5 ores
  ["phosphorus-ore"] = "phosphorus",
  ["solid-limestone"] = "limestone",
  ["solid-calcium-sulfate"] = "calcium-sulfate",
  ["solid-lithium-chloride"] = "lithium-chloride",
  ["solid-sand"] = "sand",
  ["solid-sodium-carbonate"] = "sodium-carbonate",
  -- TIER 2 ORES
  ["zinc-ore"] = "zinc",
  ["bauxite-ore"] = "aluminium",
  ["cobalt-ore"] = "cobalt",
  ["silver-ore"] = "silver",
  ["fluorite-ore"] = "fluorite", -- byproduct
  -- TIER 2.5 ORES
  ["gold-ore"] = "gold",
  -- TIER 3 ORES
  ["rutile-ore"] = "titanium",
  ["uranium-ore"] = "uranium", --need to consider adding this as a special-vanilla variant (matching angels)
  -- TIER 4 ORES
  ["tungsten-ore"] = "tungsten",
  ["thorium-ore"] = "thorium",
  ["chrome-ore"] = "chrome",
  ["platinum-ore"] = "platinum",
  --Clowns T4.5 ores
  ["osmium-ore"] = "osmium",
}
local icon_lookup_table_fallback = {icon = "__angelsrefining__/graphics/icons/void.png"}
local icon_lookup_table = {
  ["bauxite-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-bauxite.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/bauxite-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/bauxite-ore.png"} or
    icon_lookup_table_fallback,

  ["cobalt-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-cobalt.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/cobalt-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/cobalt-ore.png"} or
    icon_lookup_table_fallback,

  ["copper-nugget"] = {icon = "__angelsrefining__/graphics/icons/copper-nugget.png"},

  ["copper-ore"] = {icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64},

  ["copper-slag"] = {icon = "__angelsrefining__/graphics/icons/copper-slag.png"},

  ["fluorite-ore"] = {icon = "__angelsrefining__/graphics/icons/ore-fluorite.png"},

  ["gold-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-gold.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/gold-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/gold-ore.png"} or
    icon_lookup_table_fallback,

  ["iron-nugget"] = {icon = "__angelsrefining__/graphics/icons/iron-nugget.png"},

  ["iron-ore"] = {icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64},

  ["iron-slag"] = {icon = "__angelsrefining__/graphics/icons/iron-slag.png"},

  ["lead-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-lead.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/lead-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/lead-ore.png"} or
    icon_lookup_table_fallback,

  ["nickel-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-nickel.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/nickel-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/nickel-ore.png"} or
    icon_lookup_table_fallback,

  ["platinum-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-platinum.png"} or
    icon_lookup_table_fallback,

  ["rutile-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-rutile.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/rutile-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/rutile-ore.png"} or
    icon_lookup_table_fallback,

  ["silica-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-silica.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/quartz.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/quartz.png"} or
    icon_lookup_table_fallback,

  ["silver-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-silver.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/silver-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/silver-ore.png"} or
    icon_lookup_table_fallback,

  ["thorium-ore"] = mods["angelsindustries"] and angelsmods.industries.overhaul and {icon = "__angelssmelting__/graphics/icons/ore-thorium.png", icon_size = 64} or
    mods["bobplates"] and {icon = "__boblibrary__/graphics/icons/ore-5.png", tint = {b = 0.25, g = 1, r = 1}} or
    icon_lookup_table_fallback,

  ["tin-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-tin.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/tin-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/tin-ore.png"} or
    icon_lookup_table_fallback,

  ["tungsten-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-tungsten.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/tungsten-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/tungsten-ore.png"} or
    icon_lookup_table_fallback,

  ["uranium-ore"] = {icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64},

  ["zinc-ore"] = mods["angelssmelting"] and {icon = "__angelssmelting__/graphics/icons/ore-zinc.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/zinc-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/zinc-ore.png"} or
    icon_lookup_table_fallback,

  ["phosphorus-ore"] = {icon = "__Clowns-Processing__/graphics/icons/phosphorus-ore.png"},

  ["osmium-ore"] = {icon = "__Clowns-Processing__/graphics/icons/osmium-ore.png"},
}
local tweaked_icon_lookup = function(icon_name, scale, shift)
  if not icon_lookup_table[icon_name] then return icon_lookup_table_fallback end
  if not icon_lookup_table[icon_name].icon then return icon_lookup_table_fallback end

  return {
    icon = icon_lookup_table[icon_name].icon,
    icon_size = icon_lookup_table[icon_name].icon_size,
    scale = 32/(icon_lookup_table[icon_name].icon_size or 32) * (scale or 1),
    shift = (shift[1] or shift['x'] or shift[2] or shift['y']) and {
      shift[1] or shift['x'] or 0,
      shift[2] or shift['y'] or 0
    } or nil,
    tint = icon_lookup_table[icon_name].tint
  }
end
--set clownsore triggers
angelsmods.trigger.refinery_products = angelsmods.trigger.refinery_products or {} --set up if it does not already exist
angelsmods.trigger.refinery_products["Adamantite"]= true
angelsmods.trigger.refinery_products["Orichalcite"]= true
angelsmods.trigger.refinery_products["Phosphorite"]= true
angelsmods.trigger.refinery_products["Elionagate"]= true
if not special_vanilla then
  angelsmods.trigger.refinery_products["Antitate"]= true
  angelsmods.trigger.refinery_products["Pro-Galena"]= true
  angelsmods.trigger.refinery_products["Sanguinate"]= true
end
--check if the ore trigger is on
local ore_exists = function(ore_name)
  if angelsmods.trigger.ores[get_trigger_name[ore_name] or ore_name] then
    return true
  end
  if angelsmods.trigger.refinery_products[ore_name] then
    return true
  end
  return false
end
angelsmods.functions.ore_exists = ore_exists

-- function to merge tables, but not override indexes, but keep (different) contents
local merge_table_of_tables = function(recipes_table)
  local big_table = {}
  for _, recipes in pairs(recipes_table) do
    for _, recipe in pairs(recipes or {}) do
      table.insert(big_table, recipe)
    end
  end
  return big_table
end

-----------------------------------------------------------------
-- CREATE SORTING RECIPES USING THE ABOVE FUNCTIONS AND TABLES --
-----------------------------------------------------------------
local create_basic_recipe = function(refinery_product, recipe_base_name, adv)
  for i,ore in pairs(clowns.tables.ores) do
    data:extend(
    { --crushed
      {
        type = "recipe",
        name = ore.."-crushed-processing",
        category = "ore-sorting",
        subgroup = "clowns-ore-sorting-t1",
        allow_decomposition = false,
        normal =
        {
          enabled = false,
          energy_required = 1,
          ingredients = {{type = "item", name = ore.."-crushed", amount = 4}},
          results = {{type = "item", name = "slag", amount = 1}}
        },
        expensive =
        {
          enabled = false,
          energy_required = 1,
          ingredients ={{type= "item", name = ore.."-crushed", amount = 6 * rawmulti}},
          results = {{type = "item", name = "slag", amount = 1}}
        },
        icons =
        {
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"},
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/crushed.png", scale = 0.5, shift = {-8, 8},}
        },
        icon_size = 32,
        order = "a["..ore.."]",
      },
      --Chunk
      {
        type = "recipe",
        name = ore.."-chunk-processing",
        category = "ore-sorting",
        subgroup = "clowns-ore-sorting-t2",
        allow_decomposition = false,
        normal =
        {
          enabled = false,
          energy_required = 1.5,
          ingredients = {{type = "item", name = ore.."-chunk", amount = 5}},
          results= {{type = "item", name = "slag", amount = 1},}
        },
        expensive =
        {
          enabled = false,
          energy_required = 1.5,
          ingredients = {{type = "item", name = ore.."-chunk", amount = 9 * rawmulti}},
          results = {{type = "item", name = "slag", amount = 1},},
        },
        icons =
        {
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"},
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/chunk.png", scale = 0.5, shift = {-8, 8},}
        },
        icon_size = 32,
        order = "a["..ore.."]",
      },
      --Crystal
      {
        type = "recipe",
        name = ore.."-crystal-processing",
        category = "ore-sorting",
        subgroup = "clowns-ore-sorting-t3",
        allow_decomposition = false,
        normal =
        {
          enabled = false,
          energy_required = 2,
          ingredients = {{type = "item", name = ore.."-crystal", amount = 8}},
          results = {{type = "item", name = "slag", amount = 1},},
        },
        expensive =
        {
          enabled = false,
          energy_required = 2,
          ingredients = {{type = "item", name = ore.."-crystal", amount = 10 * rawmulti}},
          results =
          {{type="item", name="slag", amount=1},},
        },
        icons =
        {
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"},
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/crystal.png", scale = 0.5, shift = {-8, 8},}
        },
        icon_size = 32,
        order = "a["..ore.."]",
      },
      --Pure
      {
        type = "recipe",
        name = ore.."-pure-processing",
        category = "ore-sorting",
        subgroup = "clowns-ore-sorting-t4",
        allow_decomposition = false,
        normal =
        {
          enabled = false,
          energy_required = 2,
          ingredients = {{type = "item", name = ore.."-pure", amount = 9}},
          results = {{type = "item", name = "angels-void", amount = 1}},
        },
        expensive =
        {
          enabled = false,
          energy_required = 2,
          ingredients = {{type = "item", name = ore.."-pure", amount = 13 * rawmulti}},
          results = {{type = "item", name = "angels-void", amount = 1}},
        },
        icons =
        {
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/sorting-icon.png"},
          {icon = "__Clowns-Extended-Minerals__/graphics/icons/"..ore.."/pure.png", scale = 0.5, shift = {-8, 8},}
        },
        icon_size = 32,
        order = "a["..ore.."]",
      }
    }
  )
  end
end
-----------------------------------------------------------------
-- UPDATE SORTING RECIPES USING THE ABOVE FUNCTIONS AND TABLES --
-----------------------------------------------------------------
-- function to create the (regular) sorted results for an ore, disables it if it is unused
local create_sorting_recipes = function(refinery_product, recipe_base_name, sorted_ore_results, advanced_sorting)
  create_basic_recipe(refinery_product, recipe_base_name)
  local localisation_base_name = "clowns-ore%s"
  local recipes = {}
  for tier, tier_name in pairs(advanced_sorting and {"crushed", "powder", "dust", "crystal"} or {"crushed", "chunk", "crystal", "pure"}) do
    local recipe_used = false
    local recipe = {name = string.format(recipe_base_name, "-" .. tier_name .. "-processing"), results = {}}
    if angelsmods.trigger.refinery_products[refinery_product] then
      local localised_ores = {
        string.format(localisation_base_name, string.sub(recipe_base_name, -3, -3) .. "-" .. tier_name),
        string.format(localisation_base_name, "-" .. tier_name)
      }
      log(serpent.block(sorted_ore_results))
      local used_keys={}
      for ore_name, ore_amounts in pairs(sorted_ore_results or {}) do
        local ore_amount = (ore_amounts or {})[tier]
        if ore_name == "!!" then
          if ore_amount then
            table.insert(recipe.results, {"!!"})
          end
        else
          --get trigger name
          local name=get_trigger_name[ore_name]
          if not angelsmods.trigger.ores[name or ore_name] then
            ore_amount = 0
          end
          if ore_amount and ore_amount > 0 then
            table.insert(recipe.results, {type = "item", name = ore_name, amount = ore_amount})
            local string_index = string.find(ore_name, "-ore")
            if not used_keys[name] then
              if string_index then
                table.insert(localised_ores, name or string.sub(ore_name, 1, string_index - 1))
              else
                table.insert(localised_ores, name or ore_name)
              end
              used_keys[name]=true
            end
            recipe_used = true
          end
        end
      end
      if not advanced_sorting then
        -- add localisation
        if tier_name ~= "pure" then
          table.insert(localised_ores, "slag")
        else
          localised_ores[1] = string.format(localisation_base_name, string.sub(recipe_base_name, -3, -3))
          localised_ores[2] = string.format(localisation_base_name, "")
        end
        log(serpent.block(localised_ores))
        log(serpent.block(used_keys))
        --trim localised_ores i too long
        angelsmods.functions.add_localization(unpack(localised_ores))
      end
    else
      angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "-" .. tier_name))
    end
    if recipe_used then
      table.insert(recipes, recipe)
    else
      angelsmods.functions.OV.disable_recipe(recipe.name)
    end
  end
  if advanced_sorting and not angelsmods.trigger.refinery_products[refinery_product] then
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "sludge"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "solution"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "anode-sludge-filtering"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "anode-sludge"))
  end
  --log(serpent.block(recipes))
  return recipes
end

--Once this is done, main ores give a mix of iron (pebbles, nuggets, chunks and ore for copper and iron)
--Since this requires clown processing, also gives access to uranium, phosphorus, osmium and magnesium
--Since angels smelting and petrochem are active, also gives access to fluorite, limestone, sand, clay, Sodium,  
--[[
clowns-ore1=Adamantite (iron)
clowns-ore2=Antitate (nil)
clowns-ore3=Pro-Galena (nil)
clowns-ore4=Orichalcite (copper)
clowns-ore5=Phosphorite (iron)
clowns-ore6=Sanguinate (iron)
clowns-ore7=Elionagate (copper)
clowns-ore8=Meta-Garnierite (copper)
clowns-ore9=Meta-Garnierite
clowns-ore10=Meta-Garnierite]]
-------------------------------------------------------------------------------
-- REGULAR SORTING ------------------------------------------------------------
-------------------------------------------------------------------------------
OV.patch_recipes(
  merge_table_of_tables {
    -- SAPHIRITE
    create_sorting_recipes(
      "Adamantite",
      "clowns-ore1%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["iron-ore"] = special_vanilla and {1, 2, 3, 4} or {2, 2, 3, 3},
        ["angels-iron-nugget"] = special_vanilla and {1, 1, 4, 2},
        ["angels-iron-pebbles"] = special_vanilla and {2, 3, 1, 2},
        ["angels-iron-slag"] = special_vanilla and {0, 0, 1, 4},
        ["tin-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["fluorite-ore"] = {0, 1, 1, 1}, -- forced on all the time from processing
        ["chrome-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["rutile-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["osmium-ore"] = {0, 0, 0, 1}
      }
    ),
    create_sorting_recipes(
      "Antitate",
      "clowns-ore2%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["tin-ore"] = (not special_vanilla) and {2, 2, 3, 3},
        ["lithium-chloride"] = (not special_vanilla) and {1, 1, 1, 2},
        ["nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["chrome-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    create_sorting_recipes(
      "Pro-Galena",
      "clowns-ore3%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["lead-ore"] = (not special_vanilla) and {2, 2, 3, 3},
        ["solid-calcium-sulfate"] = (not special_vanilla) and {1, 1, 1, 2},
        ["silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["zinc-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["thorium-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    create_sorting_recipes(
      "Orichalcite",
      "clowns-ore4%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["copper-ore"] = special_vanilla and {1, 2, 3, 4} or {2, 2, 3, 3},
        ["angels-copper-nugget"] = special_vanilla and {1, 2, 4, 3},
        ["angels-copper-pebbles"] = special_vanilla and {2, 3, 1, 2},
        ["angels-copper-slag"] = special_vanilla and {0, 0, 2, 4},
        ["manganese-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["zinc-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["gold-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    create_sorting_recipes(
      "Phosphorite",
      "clowns-ore5%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["iron-ore"] = special_vanilla and {3, 3, 3, 3} or {0, 1, 1, 1},
        ["angels-iron-nugget"] = special_vanilla and {0, 1, 2, 3},
        ["angels-iron-pebbles"] = special_vanilla and {1, 3, 1, 4},
        ["angels-iron-slag"] = special_vanilla and {1, 1, 2, 2},
        ["phosphorus-ore"] = {2, 2, 3, 3},
        ["solid-limestone"] = {1, 1, 1, 2}, --always active with processing/petrochem
        ["uranium-ore"] = {0, 0, 1, 1},
        ["lead-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["thorium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    create_sorting_recipes(
      "Sanguinate",
      "clowns-ore6%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["manganese-ore"] = (not special_vanilla) and {2, 2, 3, 3},
        ["quartz"] = (not special_vanilla) and {1, 1, 1, 2}, 
        ["solid-calcium-sulfate"] = (not special_vanilla) and {0, 1, 1, 1}, --always active with processing/petrochem
        ["fluorite-ore"] = (not special_vanilla) and {0, 1, 1, 1}, --always active with processing/petrochem
        ["phosphorus-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["rutile-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    create_sorting_recipes(
      "Elionagate",
      "clowns-ore7%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["copper-ore"] = special_vanilla and {4, 3, 2, 1} or {2, 2, 3, 3},
        ["angels-copper-nugget"] = special_vanilla and {0, 0, 2, 3},
        ["angels-copper-pebbles"] = special_vanilla and {0, 5, 5, 6},
        ["angels-copper-slag"] = special_vanilla and {1, 2, 3, 4},
        ["lead-ore"] = (not special_vanilla) and {1, 1, 1, 2}, 
        ["cobalt-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["chrome-ore"] = (not special_vanilla) and {0, 1, 1, 1}, 
        ["thorium-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    --[[create_sorting_recipes(
      "Meta-Garnierite", --Mg, Fe, Ni, Mn, Al, Zn
      "clowns-ore8%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["copper-ore"] = special_vanilla and {1, 1, 2, 2} or {2, 2, 3, 3},
        ["angels-copper-nugget"] = special_vanilla and {1, 2, 3, 5},
        ["angels-copper-pebbles"] = special_vanilla and {2, 4, 3, 3},
        ["angels-copper-slag"] = special_vanilla and {0, 0, 1, 1},
        ["lead-ore"] = (not special_vanilla) and {1, 1, 1, 2}, 
        ["cobalt-ore"] = (not special_vanilla) and{0, 1, 1, 1},
        ["chrome-ore"] = (not special_vanilla) and{0, 1, 1, 1}, 
        ["thorium-ore"] = (not special_vanilla) and{0, 0, 1, 1},
        ["platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),]]
  }
)