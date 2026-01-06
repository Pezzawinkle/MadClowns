local OV = angelsmods.functions.OV
local special_vanilla = clowns.special_vanilla
local ore_table = clowns.tables.ores
-------------------------------------------
------------BEGIN LOOKUP TABLES------------
-------------------------------------------

clowns.tables.get_trigger_name = {
  --[[V]]["iron-ore"] = "iron",
  --[[V]]["angels-iron-nugget"] = special_vanilla and "iron" or "unused", -- special vanilla only
  --[[V]]["angels-iron-pebbles"] = special_vanilla and "iron" or "unused", -- special vanilla only
  --[[V]]["angels-iron-slag"] = special_vanilla and "iron" or "unused", -- special vanilla only
  --[[V]]["copper-ore"] = "copper",
  --[[V]]["angels-copper-nugget"] = special_vanilla and "copper" or "unused", -- special vanilla only
  --[[V]]["angels-copper-pebbles"] = special_vanilla and "copper" or "unused", -- special vanilla only
  --[[V]]["angels-copper-slag"] = special_vanilla and "copper" or "unused", -- special vanilla only

  --[[A/B]]["lead-ore"] = "angels-lead",
  --[[A/B]]["quartz"] = "angels-silicon",
  --[[A/B]]["nickel-ore"] = "angels-nickel",
  --[[A/B]]["manganese-ore"] = "angels-manganese",
  --[[A/B]]["zinc-ore"] = "angels-zinc",
  --[[A/B]]["bauxite-ore"] = "angels-aluminium",
  --[[A/B]]["cobalt-ore"] = "angels-cobalt",
  --[[A/B]]["silver-ore"] = "angels-silver",
  --[[A/B]]["gold-ore"] = "angels-gold",
  --[[A/B]]["rutile-ore"] = "angels-titanium",
  --[[A/B]]["uranium-ore"] = "uranium",
  --[[A/B]]["tungsten-ore"] = "angels-tungsten",
  --[[A/B]]["thorium-ore"] = "angels-thorium",
  --[[A/B]]["chrome-ore"] = "angels-chrome",
  --[[A/B]]["platinum-ore"] = "angels-platinum",
  --[[A/B]]["bob-tin-ore"] = "tin",
  --[[A/B]]["bob-lead-ore"] = "lead",
  --[[A/B]]["bob-quartz"] = "silicon",
  --[[A/B]]["bob-nickel-ore"] = "nickel",
  --[[A/B]]["angels-manganese-ore"] = "manganese",
  --[[A/B]]["bob-zinc-ore"] = "zinc",
  --[[A/B]]["bob-bauxite-ore"] = "aluminium",
  --[[A/B]]["bob-cobalt-ore"] = "cobalt",
  --[[A/B]]["bob-silver-ore"] = "silver",
  --[[A/B]]["bob-gold-ore"] = "gold",
  --[[A/B]]["bob-rutile-ore"] = "titanium",
  --[[A/B]]["uranium-ore"] = "uranium",
  --[[A/B]]["bob-tungsten-ore"] = "tungsten",
  --[[A/B]]["bob-thorium-ore"] = "thorium",
  --[[A/B]]["angels-chrome-ore"] = "chrome",
  --[[A/B]]["angels-platinum-ore"] = "platinum",

  --[[C]]["phosphorus-ore"] = "phosphorus",
  --[[C]]["magnesium-ore"] = "magnesium",
  --[[C]]["osmium-ore"] = "osmium",

  --[[A]]["solid-limestone"] = "angels-solid-limestone",
  --[[A]]["solid-calcium-sulfate"] = "angels-solid-calcium-sulfate",
  --[[A]]["solid-lithium"] = "angels-solid-lithium",
  --[[A]]["solid-sand"] = "angels-solid-sand",
  --[[A]]["solid-sodium-carbonate"] = "angels-solid-sodium-carbonate",
  --[[A]]["fluorite-ore"] = "angels-fluorite", -- byproduct
  --[[A]]["angels-solid-limestone"] = "limestone",
  --[[A]]["angels-solid-calcium-sulfate"] = "calcium-sulfate",
  --[[A]]["angels-solid-lithium"] = "angels-solid-lithium",
  --[[A]]["angels-solid-sand"] = "sand",
  --[[A]]["angels-solid-sodium-carbonate"] = "sodium-carbonate",
  --[[A]]["angels-fluorite-ore"] = "fluorite", -- byproduct

  --[[P]]["raw-borax"] = "borax", --pycoal
  --[[P]]["nexelit-ore"] = "nexelit", --pycoal
  --[[P]]["rare-earth-dust"] = "rare-earth-dust", --pycoal, from processing sand
  --[[P]]["niobium-ore"] ="niobium", --pycoal
  --[[P]]["molybdenum-ore"] ="molybdenum", --pyfusion
  --[[P]]["regolite-rock"] ="regolites", --pyfusion
  --[[P]]["kimberlite-rock"] ="kimberlite", --pyfusion diamond mine on volcanic-tube
}
local icon_lookup_table_fallback = {icon = "__angelsrefininggraphics__/graphics/icons/void.png"}
clowns.tables.icon_lookup_table = {
  ["bauxite-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-bauxite.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/bauxite-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/bauxite-ore.png"} or
    icon_lookup_table_fallback,

  ["cobalt-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-cobalt.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/cobalt-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/cobalt-ore.png"} or
    icon_lookup_table_fallback,

  ["copper-nugget"] = {icon = "__angelsrefininggraphics__/graphics/icons/copper-nugget.png"},

  ["copper-ore"] = {icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64},

  ["copper-slag"] = {icon = "__angelsrefininggraphics__/graphics/icons/copper-slag.png"},

  ["fluorite-ore"] = {icon = "__angelsrefininggraphics__/graphics/icons/ore-fluorite.png"},

  ["gold-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-gold.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/gold-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/gold-ore.png"} or
    icon_lookup_table_fallback,

  ["iron-nugget"] = {icon = "__angelsrefininggraphics__/graphics/icons/iron-nugget.png"},

  ["iron-ore"] = {icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64},

  ["iron-slag"] = {icon = "__angelsrefininggraphics__/graphics/icons/iron-slag.png"},

  ["solid-lithium"] = {icon = "__angelsrefininggraphics__/graphics/icons/solid-lithium.png"},
  
  ["lead-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-lead.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/lead-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/lead-ore.png"} or
    icon_lookup_table_fallback,

  ["nickel-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-nickel.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/nickel-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/nickel-ore.png"} or
    icon_lookup_table_fallback,

  ["platinum-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-platinum.png"} or
    icon_lookup_table_fallback,

  ["rutile-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-rutile.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/rutile-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/rutile-ore.png"} or
    icon_lookup_table_fallback,

  ["quartz"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-silica.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/quartz.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/quartz.png"} or
    icon_lookup_table_fallback,

  ["silver-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-silver.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/silver-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/silver-ore.png"} or
    icon_lookup_table_fallback,

  ["thorium-ore"] = mods["angelsindustries"] and angelsmods.industries.overhaul and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-thorium.png", icon_size = 64} or
    mods["bobplates"] and {icon = "__boblibrary__/graphics/icons/ore-5.png", tint = {b = 0.25, g = 1, r = 1}} or
    icon_lookup_table_fallback,

  ["tin-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-tin.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/tin-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/tin-ore.png"} or
    icon_lookup_table_fallback,

  ["tungsten-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-tungsten.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/tungsten-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/tungsten-ore.png"} or
    icon_lookup_table_fallback,

  ["uranium-ore"] = {icon = "__base__/graphics/icons/uranium-ore.png", icon_size = 64},

  ["zinc-ore"] = mods["angelssmelting"] and {icon = "__angelssmeltinggraphics__/graphics/icons/ore-zinc.png"} or
    mods["bobores"] and {icon = "__bobores__/graphics/icons/zinc-ore.png"} or
    mods["bobplates"] and {icon = "__bobplates__/graphics/icons/ore/zinc-ore.png"} or
    icon_lookup_table_fallback,

  ["phosphorus-ore"] = {icon = "__Clowns-Processing__/graphics/icons/phosphorus-ore.png", icon_size = 32},

  ["osmium-ore"] = {icon = "__Clowns-Processing__/graphics/icons/osmium-ore.png"},
  ["manganese-ore"] = {icon = "__angelssmeltinggraphics__/graphics/icons/ore-manganese.png"},
  ["magnesium-ore"] = {icon = "__Clowns-Processing__/graphics/icons/magnesium-ore.png", icon_size = 32},
  ["chrome-ore"] = {icon = "__angelssmeltinggraphics__/graphics/icons/ore-chrome.png"},

  ["raw-borax"] = {icon = "__pycoalprocessinggraphics__/graphics/icons/mip/raw-borax.png", icon_size = 64} or
  icon_lookup_table_fallback,
  ["nexelit-ore"] = {icon = "__pycoalprocessinggraphics__/graphics/icons/mip/nexelit-ore.png", icon_size = 64} or
  icon_lookup_table_fallback,
  ["niobium-ore"] = {icon = "__pycoalprocessinggraphics__/graphics/icons/mip/niobium-ore.png", icon_size = 64} or
  icon_lookup_table_fallback,
  ["rare-earth-dust"] = {icon = "__pycoalprocessinggraphics__/graphics/icons/rare-earth-dust.png", icon_size = 32} or
  icon_lookup_table_fallback,

  ["molybdenum-ore"] = {icon = "__pyfusionenergygraphics__/graphics/icons/mip/moly-01.png", icon_size = 64} or
  icon_lookup_table_fallback,
  ["kimberlite-rock"] = {icon = "__pyfusionenergygraphics__/graphics/icons/ores/kimberlite-rock.png", icon_size = 32} or
  icon_lookup_table_fallback,
  ["regolite-rock"] = {icon = "__pyfusionenergygraphics__/graphics/icons/ores/regolite-rock.png", icon_size = 32} or
  icon_lookup_table_fallback,
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
clowns.tables.ore_combos = { --these are hidden when spec-vanilla is on anyway
  --LIST OF ORES USED IN EACH RECIPE (i.e. permutations), THE TIER IS SET IN THE CALL FUNCTION
  [1] = --[[crushed mix]]{
    --[[Fe]]{"clowns-ore1","clowns-ore2","angels-ore8"},
    --[[Cu]]{"clowns-ore4","clowns-ore7","angels-ore9"},
    --[[Sn]]{"angels-ore6","angels-ore9","clowns-ore4"},
    --[[Pb]]{"angels-ore5","clowns-ore3","clowns-ore7"},
    --[[Mn]]{"angels-ore8","clowns-ore8","angels-ore6"},
    --[[P]] {"clowns-ore5","angels-ore6","clowns-resource1"},
    --[[Bo]]{"clowns-ore7","angels-ore4","clowns-resource1"} --py borax
  },
  [2] = --[[chunk mix]]{
    --[[F]] {"clowns-ore1","angels-ore5","clowns-ore6","angels-ore3"},-- spec vanilla and c1,c5
    --[[Si]]{"angels-ore1","clowns-ore6","angels-ore9","clowns-ore9"},
    --[[Ni]]{"angels-ore8","clowns-ore2","clowns-ore4","clowns-ore8"},
    --[[Zn]]{"clowns-ore4","clowns-ore3","clowns-ore8","angels-ore2"},
    --[[Al]]{"angels-ore2","clowns-ore2","angels-ore4","clowns-ore5"},
    --[[Ag]]{"angels-ore2","clowns-ore3","clowns-ore6","angels-ore9"},
    --[[Nx]]{"clowns-ore4","clowns-resource2","angels-ore2","angels-ore1"}, --py nexelit
    --[[Ny]]{"clowns-ore4","clowns-resource1","clowns-resource2","clowns-ore7"}, --py niobium
    --[[RE]]{"angels-ore4","clowns-ore1","clowns-ore7","clowns-resource2"} --py rare-earth-dust
  },
  [3] = --[[crystal mix]]{
    --[[Co]]{"clowns-ore7","angels-ore4","angels-ore8","angels-ore6","angels-ore3"},
    --[[Au]]{"angels-ore9","clowns-ore4","angels-ore3","angels-ore5","angels-ore4"},
    --[[Ti]]{"angels-ore5","clowns-ore9","clowns-ore1","angels-ore1","angels-ore3"},
    --[[U]] {"clowns-ore5","angels-ore3","angels-ore1","angels-ore4","angels-ore6"},
    --[[Mg]]{"clowns-ore2","clowns-ore7","clowns-ore8","clowns-ore4","angels-ore6"},-- spec vanilla and c4,c7
    --[[Mo]]{"clowns-ore2","clowns-ore5","angels-ore8","clowns-ore13","angels-ore5"}, --py molybdenum
    --[[Re]]{"clowns-ore1","clowns-ore3","clowns-ore9","clowns-ore11","angels-ore9"}, --py regolites
  },
  [4] = --[[pure mix]]{
    --[[W]] {"angels-ore2","angels-ore3","angels-ore6","angels-ore8","clowns-ore4"},
    --[[Th]]{"angels-ore8","angels-ore9","clowns-ore3","clowns-ore5","clowns-ore7"},
    --[[Cr]]{"angels-ore1","angels-ore8","clowns-ore1","clowns-ore2","clowns-ore7"},
    --[[Pt]]{"angels-ore5","angels-ore9","clowns-ore2","clowns-ore7","clowns-resource2"},
    --[[Os]]{"angels-ore4","clowns-ore6","clowns-ore8","clowns-ore9","clowns-resource2"}, --spec vanilla and r2, c1, c7
    --[[Ki]]{"angels-ore4","angels-ore2","clowns-ore1","clowns-ore7","clowns-resource2"} --py kimberlite
  },
}
----------------------------------------------
-- Normal ore tier sorting -------------------
----------------------------------------------
clowns.tables.adamantite =       {
  ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
  ["iron-ore"] = special_vanilla and {1, 2, 3, 4} or {2, 2, 3, 3},
  ["angels-iron-nugget"] = special_vanilla and {1, 1, 4, 2},
  ["angels-iron-pebbles"] = special_vanilla and {2, 3, 1, 2},
  ["angels-iron-slag"] = special_vanilla and {0, 0, 1, 4},
  ["bob-tin-ore"] = (not special_vanilla) and {1, 1, 1, 2},
  ["angels-fluorite-ore"] = {0, 1, 1, 1}, -- forced on all the time from processing
  ["angels-chrome-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-rutile-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["osmium-ore"] = {0, 0, 0, 1}
}
clowns.tables.antitate = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["bob-tin-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["angels-solid-lithium"] = (not special_vanilla) and {1, 1, 1, 2},
  ["bob-nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["angels-chrome-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["angels-platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.progalena = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["bob-lead-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["angels-solid-calcium-sulfate"] = (not special_vanilla) and {1, 1, 1, 2},
  ["bob-silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-zinc-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-thorium-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.orichalcite = {
  ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
  ["copper-ore"] = special_vanilla and {1, 2, 3, 4} or {2, 2, 3, 3},
  ["angels-copper-nugget"] = special_vanilla and {1, 2, 4, 3},
  ["angels-copper-pebbles"] = special_vanilla and {2, 3, 1, 2},
  ["angels-copper-slag"] = special_vanilla and {0, 0, 2, 4},
  ["angels-manganese-ore"] = (not special_vanilla) and {1, 1, 1, 2},
  ["bob-nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-zinc-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-gold-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["bob-tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1},
}
clowns.tables.phosphorite = {
  ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
  ["iron-ore"] = special_vanilla and {3, 3, 3, 3} or {0, 1, 1, 1},
  ["angels-iron-nugget"] = special_vanilla and {0, 1, 2, 3},
  ["angels-iron-pebbles"] = special_vanilla and {1, 3, 1, 4},
  ["angels-iron-slag"] = special_vanilla and {1, 1, 2, 2},
  ["phosphorus-ore"] = {2, 2, 3, 3},
  ["angels-solid-limestone"] = {1, 1, 1, 2}, --always active with processing/petrochem
  ["uranium-ore"] = {0, 0, 1, 1},
  ["bob-lead-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["angels-thorium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.sanguinate = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["angels-manganese-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["bob-quartz"] = (not special_vanilla) and {1, 1, 1, 2}, 
  ["angels-solid-calcium-sulfate"] = (not special_vanilla) and {0, 1, 1, 1}, --always active with processing/petrochem
  ["angels-fluorite-ore"] = (not special_vanilla) and {0, 1, 1, 1}, --always active with processing/petrochem
  ["phosphorus-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["bob-rutile-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.elionagate = {
  ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
  ["copper-ore"] = special_vanilla and {4, 3, 2, 1} or {2, 2, 3, 3},
  ["angels-copper-nugget"] = special_vanilla and {0, 0, 2, 3},
  ["angels-copper-pebbles"] = special_vanilla and {0, 5, 5, 6},
  ["angels-copper-slag"] = special_vanilla and {1, 2, 3, 4},
  ["bob-lead-ore"] = (not special_vanilla) and {1, 1, 1, 2}, 
  ["bob-cobalt-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["angels-chrome-ore"] = (not special_vanilla) and {0, 1, 1, 1}, 
  ["bob-thorium-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["angels-platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1},
}
clowns.tables.metagarnierite = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["magnesium-ore"] = (not special_vanilla) and {2, 2, 3, 3},
  ["iron-ore"] = (not special_vanilla) and {1, 1, 1, 2},
  ["bob-nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["angels-manganese-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-bauxite-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["bob-zinc-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.novaleucoxene = {
  ["!!"] = (not special_vanilla) and {false, false, false, true},
  ["iron-ore"] = (not special_vanilla) and {2, 1, 2, 2},
  ["bob-quartz"] = (not special_vanilla) and {1, 1, 1, 2},
  ["angels-solid-calcium-sulfate"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-rutile-ore"] = (not special_vanilla) and {0, 2, 2, 2},
  ["angels-solid-sodium-carbonate"] = (not special_vanilla) and {0, 0, 1, 1},
  ["bob-bauxite-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.stannic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["bob-tin-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["bob-quartz"] = (not special_vanilla) and {2, 2, 2, 2},
  ["bob-silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-zinc-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["angels-platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.plumbic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["bob-lead-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["angels-solid-calcium-sulfate"] = (not special_vanilla) and {2, 2, 2, 2},
  ["bob-silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-gold-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["bob-thorium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.manganic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["angels-manganese-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["magnesium-ore"] = (not special_vanilla) and {2, 2, 2, 2},
  ["bob-bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["angels-solid-sodium-carbonate"] = (not special_vanilla) and {0, 0, 1, 1},
  ["angels-chrome-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.titanic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["iron-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["bob-nickel-ore"] = (not special_vanilla) and {2, 2, 2, 2},
  ["bob-rutile-ore"] = (not special_vanilla) and {0, 1, 1, 1},
  ["bob-cobalt-ore"] = (not special_vanilla) and {0, 0, 1, 1},
  ["bob-tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.tables.phosphic = {
  ["!!"] = (not special_vanilla) and {true, true, true, true},
  ["phosphorus-ore"] = (not special_vanilla) and {2, 3, 4, 4},
  ["copper-ore"] = (not special_vanilla) and {2, 2, 2, 2},
  ["bob-quartz"] = (not special_vanilla) and {0, 1, 1, 1},
  ["angels-solid-limestone"] = (not special_vanilla) and {0, 0, 1, 1},
  ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
}
clowns.functions.get_icon_table = function(table)
  local list = {}
  for i,icon in pairs(table) do
    if type(icon) =="table" then
      list[i]={
        {icon = "__angelsrefininggraphics__/graphics/icons/sort-icon.png", icon_size = 32},
        clowns.tables.tweaked_icon_lookup(table[i].name, 0.5, {10, 10}), 
        {icon = "__Clowns-Processing__/graphics/icons/advsorting-overlay.png"}
      }
    else --if false
      list[i]=icon_lookup_table_fallback
    end
  end
  return list
end

clowns.tables.crushed_mix_processing = {
  special_vanilla and {type = "item", name = "phosphorus-ore", amount = 4} or {type = "item", name = "iron-ore", amount = 9},
  (not special_vanilla) and {type = "item", name = "copper-ore", amount = 9},
  (not special_vanilla) and {type = "item", name = "bob-tin-ore", amount = 9},
  (not special_vanilla) and {type = "item", name = "bob-lead-ore", amount = 9},
  (not special_vanilla) and {type = "item", name = "angels-manganese-ore", amount = 9},
  (not special_vanilla) and {type = "item", name = "phosphorus-ore", amount = 9},
  {type = "item", name = "raw-borax", amount = special_vanilla and 6 or 9},
}
clowns.tables.chunk_mix_processing = {
  {type = "item", name = "angels-fluorite-ore", amount = special_vanilla and 3 or 8},
  (not special_vanilla) and {type = "item", name = "bob-quartz", amount = 8},
  (not special_vanilla) and {type = "item", name = "bob-nickel-ore", amount = 8},
  (not special_vanilla) and {type = "item", name = "bob-zinc-ore", amount = 8},
  (not special_vanilla) and {type = "item", name = "bob-bauxite-ore", amount = 8},
  (not special_vanilla) and {type = "item", name = "bob-silver-ore", amount = 8},
  {type = "item", name = "niobium-ore", amount = 8}, --these are temp placeholders, the base ores are not declared until data-updates
  {type = "item", name = "nexelit-ore", amount = 8},
  {type = "item", name = "rare-earth-dust", amount = 8}
}
clowns.tables.crystal_mix_processing = {
  (not special_vanilla) and {type = "item", name = "bob-cobalt-ore", amount = 7},
  (not special_vanilla) and {type = "item", name = "bob-gold-ore", amount = 7},
  (not special_vanilla) and {type = "item", name = "bob-rutile-ore", amount = 7},
  (not special_vanilla) and {type = "item", name = "uranium-ore", amount = 7},
  {type = "item", name = "magnesium-ore", amount = special_vanlla and 4 or 7},
  {type = "item", name = "molybdenum-ore", amount = 8}, --these are temp placeholders, the base ores are not declared until data-updates
  {type = "item", name = "regolite-rock", amount = 8}

}
clowns.tables.pure_mix_processing = {
  (not special_vanilla) and {type = "item", name = "bob-tungsten-ore", amount = 5},
  (not special_vanilla) and {type = "item", name = "bob-thorium-ore", amount = 5},
  (not special_vanilla) and {type = "item", name = "angels-chrome-ore", amount = 5},
  (not special_vanilla) and {type = "item", name = "angels-platinum-ore", amount = 5},
  {type = "item", name = "osmium-ore", amount = special_vanlla and 6 or 5},
  {type = "item", name = "kimberlite-rock", amount = 8} --these are temp placeholders, the base ores are not declared until data-updates
}