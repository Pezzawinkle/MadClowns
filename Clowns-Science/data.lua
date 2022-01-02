if not clowns then clowns={} end
if not clowns.functions then clowns.functions={} end
if not clowns.tables then clowns.tables ={} end
clowns.icon_tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5}
--declare different configurations
clowns.triggers = {
  ["angels_tech"] = (mods["angelsindustries"] and angelsmods.industries.tech) and true or false,
  ["pyanodons"] = mods["pycoalprocessing"] and true or false,
  ["krastorio"] = mods["Krastorio2"] and true or false,
  ["omnimatter"] = mods["omnimatter"] and true or false,
  ["bobtech_colours"] = mods["bobtech"] and settings.startup["bobmods-tech-colorupdate"].value or false,
  ["bobtech_default"] = mods["bobtech"] and (not settings.startup["bobmods-tech-colorupdate"].value) or true,
  ["bobplates"] = mods["bobplates"] and true or false
  --else vanilla(ish)
}
require("prototypes.categories")
require("prototypes.functions")
require("prototypes.fallback-data")
require("prototypes.recipes.science")
require("prototypes.recipes.facility")
require("prototypes.recipes.particle-accelerator")
require("prototypes.buildings.facility")
require("prototypes.buildings.particle-accelerator")
require("prototypes.technology")
require("prototypes.sir_cherry-overrides")
require("prototypes.overrides")
