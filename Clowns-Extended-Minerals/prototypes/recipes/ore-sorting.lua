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
  ["solid-lithium"] = "solid-lithium",
  ["solid-sand"] = "sand",
  ["solid-sodium-carbonate"] = "sodium-carbonate",
  ["magnesium-ore"] = "magnesium",
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

  ["solid-lithium"] = {icon = "__angelsrefining__/graphics/icons/solid-lithium.png"},
  
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
  ["manganese-ore"] = {icon = "__angelssmelting__/graphics/icons/ore-manganese.png"},
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
angelsmods.trigger.refinery_products["Adamantite"] = true
angelsmods.trigger.refinery_products["Orichalcite"] = true
angelsmods.trigger.refinery_products["Phosphorite"] = true
angelsmods.trigger.refinery_products["Elionagate"] = true
if not special_vanilla then
  angelsmods.trigger.refinery_products["Antitate"] = true
  angelsmods.trigger.refinery_products["Pro-Galena"] = true
  angelsmods.trigger.refinery_products["Sanguinate"] = true
  angelsmods.trigger.refinery_products["Meta-Garnierite"] = true
  angelsmods.trigger.refinery_products["Nova-Leucoxene"] = true
  angelsmods.trigger.refinery_products["Plumbic"] = true
  angelsmods.trigger.refinery_products["Stannic"] = true
  angelsmods.trigger.refinery_products["Manganic"] = true
  angelsmods.trigger.refinery_products["Titanic"] = true
  angelsmods.trigger.refinery_products["Phosphic"] = true
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
        localised_name = {"recipe-name.clowns-refining","Crushed",{"entity-name."..ore}},
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
        localised_name = {"recipe-name.clowns-refining",{"entity-name."..ore},"Chunk"},
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
        localised_name = {"recipe-name.clowns-refining",{"entity-name."..ore},"Crystal"},
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
        localised_name = {"recipe-name.clowns-refining","Purified",{"entity-name."..ore}},
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
---------------------------------------------------------------------------
     -- UPDATE SORTING RECIPES USING THE ABOVE FUNCTIONS AND TABLES --
-- This function is a direct rip (with some tweaks) from angels-refining --
---------------------------------------------------------------------------
-- function to create the (regular) sorted results for an ore, disables it if it is unused
local create_sorting_recipes = function(refinery_product, recipe_base_name, sorted_ore_results, advanced_sorting)
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
      --log(serpent.block(sorted_ore_results))
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
  log(serpent.block(recipes))
  return recipes
end

-- function to create the mixed sorted results for an ore, disables it if it is unused
local create_sorting_mix_recipe = function(recipe_base_name, ore_result_products, icon_names, ingredients_overrides)
  local recipes = {}
  for recipe_index, ore_result_product in pairs(ore_result_products) do
    local ore_name =
      type(ore_result_product) == "table" and (ore_result_product[1] or ore_result_product.name) or ore_result_product
    local ore_amount = type(ore_result_product) == "table" and (ore_result_product[2] or ore_result_product.amount) or 1
    local recipe = {
      name = string.format(recipe_base_name, recipe_index),
      results = {
        {"!!"},
        {
          type = type(ore_result_product) == "table" and ore_result_product.type or "item",
          name = ore_name,
          amount = ore_amount
        }
      }
    }
    if angelsmods.trigger.ores[get_trigger_name[ore_name] or ore_name] and ore_amount > 0 then
      local icon_name = (icon_names or {})[recipe_index]
      if icon_name then
        if type(icon_name) == "table" then
          recipe.icons = icon_name -- maybe improve this?
        else
          recipe.icon = string.format("__angelsrefining__/graphics/icons/%s", icon_name)
        end
      end
      local ingredients_override = (ingredients_overrides or {})[recipe_index]
      if ingredients_override then
        local ingredients_override_used = false
        local ingredients = {{"!!"}}
        for _, ingredient in pairs(ingredients_override) do
          local ingredient_name = ingredient.name or ingredient[1]
          local ingredient_amount = ingredient.amount or ingredient[2]
          if ingredient_amount > 0 then -- todo: check if ingredient exist in triggers?
            table.insert(
              ingredients,
              {type = ingredient.type or "item", name = ingredient_name, amount = ingredient_amount}
            )
            ingredients_override_used = true
          end
        end
        if ingredients_override_used then
          recipe.ingredients = ingredients
        end
      end
      table.insert(recipes, recipe)
    else
      angelsmods.functions.OV.disable_recipe(recipe.name)
    end
  end
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
clowns-ore9=Nova-Leucoxene (titanium)
clowns-ore10=Meta-Garnierite]]
-------------------------------------------------------------------------------
-- REGULAR SORTING ------------------------------------------------------------
-------------------------------------------------------------------------------
create_basic_recipe("Adamantite", "clowns-ore1%s")
create_basic_recipe("Orichalcite", "clowns-ore4%s")
create_basic_recipe("Phosphorite", "clowns-ore5%s")
create_basic_recipe("Elionagate", "clowns-ore7%s")
if not special_vanilla then
  create_basic_recipe("Antitate", "clowns-ore2%s")
  create_basic_recipe("Pro-Galena", "clowns-ore3%s")
  create_basic_recipe("Sanguinate", "clowns-ore6%s")
  create_basic_recipe("Meta-Garnierite", "clowns-ore8%s")
  create_basic_recipe("Nova-Leucoxene", "clowns-ore9%s")
  
end

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
        ["solid-lithium-chloride"] = (not special_vanilla) and {1, 1, 1, 2},
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
    create_sorting_recipes(
      "Meta-Garnierite", --Mg, Fe, Ni, Mn, Al, Zn
      "clowns-ore8%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["magnesium-ore"] = (not special_vanilla) and {2, 2, 3, 3},
        ["iron-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["manganese-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["bauxite-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["zinc-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    create_sorting_recipes(
      "Nova-Leucoxene", --Ti, Fe, Ca, Si, Na, Al
      "clowns-ore9%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["iron-ore"] = (not special_vanilla) and {2, 1, 2, 2},
        ["quartz"] = (not special_vanilla) and {1, 1, 1, 2},
        ["solid-calcium-sulfate"] = (not special_vanilla) and {0, 1, 1, 1},
        ["rutile-ore"] = (not special_vanilla) and {0, 2, 2, 2},
        ["solid-sodium-carbonate"] = (not special_vanilla) and {0, 0, 1, 1},
        ["bauxite-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    -- STANNIC
    --[[ore_exists("Stannic") and ]]create_sorting_recipes(
      "Stannic",
      "clownsore11%s",
      {
        ["!!"] = (not special_vanilla) and {true, true, true, true},
        ["tin-ore"] = (not special_vanilla) and {2, 3, 4, 4},
        ["quartz"] = (not special_vanilla) and {2, 2, 2, 2},
        ["silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["zinc-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      },
      true
    )--[[ or
    nil]],
    -- PLUMBUC
    ore_exists("Plumbic") and create_sorting_recipes(
      "Plumbic",
      "clownsore12%s",
      {
        ["!!"] = (not special_vanilla) and {true, true, true, true},
        ["lead-ore"] = (not special_vanilla) and {2, 3, 4, 4},
        ["solid-calcium-sulfate"] = (not special_vanilla) and {2, 2, 2, 2},
        ["silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["gold-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["thorium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      },
      true
    ) or
    nil,
    -- PLUMBUC
    ore_exists("Manganic") and create_sorting_recipes(
      "Manganic",
      "clownsore13%s",
      {
        ["!!"] = (not special_vanilla) and {true, true, true, true},
        ["manganese-ore"] = (not special_vanilla) and {2, 3, 4, 4},
        ["magnesium-ore"] = (not special_vanilla) and {2, 2, 2, 2},
        ["bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["solid-sodium-carbonate"] = (not special_vanilla) and {0, 0, 1, 1},
        ["chrome-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      },
      true
    ) or
    nil,
    -- Titanic
    ore_exists("Titanic") and create_sorting_recipes(
      "Titanic",
      "clownsore14%s",
      {
        ["!!"] = (not special_vanilla) and {true, true, true, true},
        ["iron-ore"] = (not special_vanilla) and {2, 3, 4, 4},
        ["nickel-ore"] = (not special_vanilla) and {2, 2, 2, 2},
        ["rutile-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["cobalt-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      },
      true
    ) or
    nil,
    -- PLUMBUC
    ore_exists("Phosphic") and create_sorting_recipes(
      "Phosphic",
      "clownsore15%s",
      {
        ["!!"] = (not special_vanilla) and {true, true, true, true},
        ["phosphorus-ore"] = (not special_vanilla) and {2, 3, 4, 4},
        ["copper-ore"] = (not special_vanilla) and {2, 2, 2, 2},
        ["quartz"] = (not special_vanilla) and {0, 1, 1, 1},
        ["solid-limestone"] = (not special_vanilla) and {0, 0, 1, 1},
        ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      },
      true
    ) or
    nil
  }
)

-------------------------------------------------------------------------------
-- MIXED SORTING --------------------------------------------------------------
-------------------------------------------------------------------------------
OV.patch_recipes(
  merge_table_of_tables {
    -- CRUSHED
    create_sorting_mix_recipe( --add a sort for special vanilla items to start with
      "clowns-crushed-mix%i-processing",
      {
        special_vanilla and {type = "item", name = "phosphorus-ore", amount = 4} or {type = "item", name = "iron-ore", amount = 9},
        (not special_vanilla) and {type = "item", name = "copper-ore", amount = 9},
        (not special_vanilla) and {type = "item", name = "tin-ore", amount = 9},
        (not special_vanilla) and {type = "item", name = "lead-ore", amount = 9},
        (not special_vanilla) and {type = "item", name = "manganese-ore", amount = 9},
        (not special_vanilla) and {type = "item", name = "phosphorus-ore", amount = 9},
      },
      {
        --[[1]] special_vanilla and {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("phosphorus-ore", 0.5, {10, 10})
        } or {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("iron-ore", 0.5, {10, 10})
        },
        --[[2]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("copper-ore", 0.5, {10, 10})
        },
        --[[3]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("tin-ore", 0.5, {10, 10})
        },
        --[[4]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("lead-ore", 0.5, {10, 10})
        },
        --[[5]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("manganese-ore", 0.5, {10, 10})
        },
        --[[6]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("phosphorus-ore", 0.5, {10, 10})
        },
      },
      {
      --[[1]] special_vanilla and {{type = "item", name = "clowns-ore7", amount = 2},{type = "item", name = "clowns-ore5", amount = 2}} or nil,
      --[[2]] nil,
      --[[3]] nil,
      --[[4]] nil,
      --[[5]] nil,
      --[[6]] nil
      }
    ),
    -- CHUNK
    create_sorting_mix_recipe(
      "clowns-chunk-mix%i-processing",
      {
        special_vanilla and {type = "item", name = "fluorite-ore", amount = 3} or {type = "item", name = "fluorite-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "quartz", amount = 8},
        (not special_vanilla) and {type = "item", name = "nickel-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "zinc-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "bauxite-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "cobalt-ore", amount = 8},
      },
      {
        --[[1]]{ 
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("fluorite-ore", 0.5, {10, 10})
        },
        --[[2]]{
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("silica-ore", 0.5, {10, 10})
        },
        --[[3]]{
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("nickel-ore", 0.5, {10, 10})
        },
        --[[4]]{
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("zinc-ore", 0.5, {10, 10})
        },
        --[[5]]{
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("bauxite-ore", 0.5, {10, 10})
        },
        --[[6]]{
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          tweaked_icon_lookup("cobalt-ore", 0.5, {10, 10})
        },
      },
      { --{"clowns-ore1","angels-ore5","clowns-ore6","angels-ore3"}
        --[[1]] special_vanilla and {{type = "item", name = "clowns-ore1", amount = 2},{type = "item", name = "clowns-ore6", amount = 2}} or nil,
        --[[2]] nil,
        --[[3]] nil,
        --[[4]] nil,
        --[[5]] nil,
        --[[6]] nil
      }
    ),
    -- CRYSTAL
    --[[create_sorting_mix_recipe(
      "clowns-crystal-mix%i-processing",
      {
        special_vanilla and {type = "item", name = "fluorite-ore", amount = 3} or {type = "item", name = "fluorite-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "quartz", amount = 8},
        (not special_vanilla) and {type = "item", name = "nickel-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "zinc-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "bauxite-ore", amount = 8},
        (not special_vanilla) and {type = "item", name = "cobalt-ore", amount = 8},
      },
      {
        --[[1]]--{ 
          --{icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          --tweaked_icon_lookup("fluorite-ore", 0.5, {10, 10})
       -- },
      --},
 
    --),
  }
)