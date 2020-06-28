clowns.tables.get_trigger_name = {
  --[[V]]["iron-ore"] = "iron",
  --[[V]]["angels-iron-nugget"] = special_vanilla and "iron" or "unused", -- special vanilla only
  --[[V]]["angels-iron-pebbles"] = special_vanilla and "iron" or "unused", -- special vanilla only
  --[[V]]["angels-iron-slag"] = special_vanilla and "iron" or "unused", -- special vanilla only
  --[[V]]["copper-ore"] = "copper",
  --[[V]]["angels-copper-nugget"] = special_vanilla and "copper" or "unused", -- special vanilla only
  --[[V]]["angels-copper-pebbles"] = special_vanilla and "copper" or "unused", -- special vanilla only
  --[[V]]["angels-copper-slag"] = special_vanilla and "copper" or "unused", -- special vanilla only
  --[[A/B]]["tin-ore"] = "tin",
  --[[A/B]]["lead-ore"] = "lead",
  --[[A/B]]["quartz"] = "silicon",
  --[[A/B]]["nickel-ore"] = "nickel",
  --[[A/B]]["manganese-ore"] = "manganese",
  --[[A/B]]["zinc-ore"] = "zinc",
  --[[A/B]]["bauxite-ore"] = "aluminium",
  --[[A/B]]["cobalt-ore"] = "cobalt",
  --[[A/B]]["silver-ore"] = "silver",
  --[[A/B]]["gold-ore"] = "gold",
  --[[A/B]]["rutile-ore"] = "titanium",
  --[[A/B]]["uranium-ore"] = "uranium",
  --[[A/B]]["tungsten-ore"] = "tungsten",
  --[[A/B]]["thorium-ore"] = "thorium",
  --[[A/B]]["chrome-ore"] = "chrome",
  --[[A/B]]["platinum-ore"] = "platinum",

  --[[C]]["phosphorus-ore"] = "phosphorus",
  --[[C]]["magnesium-ore"] = "magnesium",
  --[[C]]["osmium-ore"] = "osmium",

  --[[A]]["solid-limestone"] = "limestone",
  --[[A]]["solid-calcium-sulfate"] = "calcium-sulfate",
  --[[A]]["solid-lithium"] = "solid-lithium",
  --[[A]]["solid-sand"] = "sand",
  --[[A]]["solid-sodium-carbonate"] = "sodium-carbonate",
  --[[A]]["fluorite-ore"] = "fluorite", -- byproduct

  --[[P]]["raw-borax"] = "borax", --pycoal
  --[[P]]["nexelit-ore"] = "nexelit", --pycoal
  --[[P]]["niobium-ore"] ="niobium", --pycoal
  --[[P]]["molybdenum-ore"] ="molybdenum", --pyhightech
  
  --[[P]]["rare-earth ore"] = "rare-earth ore" --pyhightech
}
local icon_lookup_table_fallback = {icon = "__angelsrefining__/graphics/icons/void.png"}
clowns.tables.icon_lookup_table = {
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
  ["magnesium-ore"] = {icon = "__Clowns-Processing__/graphics/icons/magnesium-ore.png"},
  ["chrome-ore"] = {icon = "__angelssmelting__/graphics/icons/ore-chrome.png"},
}
clowns.tables.tweaked_icon_lookup = function(icon_name, scale, shift)
  if not clowns.tables.icon_lookup_table[icon_name] then return icon_lookup_table_fallback end
  if not clowns.tables.icon_lookup_table[icon_name].icon then return icon_lookup_table_fallback end

  return {
    icon = clowns.tables.icon_lookup_table[icon_name].icon,
    icon_size = clowns.tables.icon_lookup_table[icon_name].icon_size,
    scale = 32/(clowns.tables.icon_lookup_table[icon_name].icon_size or 32) * (scale or 1),
    shift = (shift[1] or shift['x'] or shift[2] or shift['y']) and {
      shift[1] or shift['x'] or 0,
      shift[2] or shift['y'] or 0
    } or nil,
    tint = clowns.tables.icon_lookup_table[icon_name].tint
  }
end
----------------------------
--== ORE SORTING TABLES ==--
----------------------------
----------------------------------------------
-- Normal ore tier sorting -------------------
----------------------------------------------
clowns.tables.adamantite =       {
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
clowns.tables.antitate = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["tin-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["solid-lithium-chloride"] = (not special_vanilla) and {1, 1, 1, 2},
  ["nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["chrome-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.progalena = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["lead-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["solid-calcium-sulfate"] = (not special_vanilla) and {1, 1, 1, 2},
  ["silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["zinc-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["thorium-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.orichalcite = {
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
clowns.tables.phosphorite = {
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
clowns.tables.sanguinate = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["manganese-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["quartz"] = (not special_vanilla) and {1, 1, 1, 2}, 
  ["solid-calcium-sulfate"] = (not special_vanilla) and {0, 1, 1, 1}, --always active with processing/petrochem
  ["fluorite-ore"] = (not special_vanilla) and {0, 1, 1, 1}, --always active with processing/petrochem
  ["phosphorus-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["rutile-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.elionagate = {
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
clowns.tables.metagarnierite = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["magnesium-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["iron-ore"] = (not special_vanilla) and {1, 1, 1, 2},
  ["nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["manganese-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bauxite-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["zinc-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.novaleucoxene = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["iron-ore"] = (not special_vanilla) and {2, 1, 2, 2},
  ["quartz"] = (not special_vanilla) and {1, 1, 1, 2},
  ["solid-calcium-sulfate"] = (not special_vanilla) and {0, 1, 1, 1},
  ["rutile-ore"] = (not special_vanilla) and {0, 2, 2, 2},
  ["solid-sodium-carbonate"] = (not special_vanilla) and {0, 0, 1, 1},
  ["bauxite-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.stannic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["tin-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["quartz"] = (not special_vanilla) and {2, 2, 2, 2},
  ["silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["zinc-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.plumbic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["lead-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["solid-calcium-sulfate"] = (not special_vanilla) and {2, 2, 2, 2},
  ["silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["gold-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["thorium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.manganic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["manganese-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["magnesium-ore"] = (not special_vanilla) and {2, 2, 2, 2},
  ["bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["solid-sodium-carbonate"] = (not special_vanilla) and {0, 0, 1, 1},
  ["chrome-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.titanic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["iron-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["nickel-ore"] = (not special_vanilla) and {2, 2, 2, 2},
  ["rutile-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["cobalt-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.phosphic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["phosphorus-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["copper-ore"] = (not special_vanilla) and {2, 2, 2, 2},
  ["quartz"] = (not special_vanilla) and {0, 1, 1, 1},
  ["solid-limestone"] = (not special_vanilla) and {0, 0, 1, 1},
  ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}