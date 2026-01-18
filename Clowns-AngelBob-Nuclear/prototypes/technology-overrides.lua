local OV = angelsmods.functions.OV

--REPLACE URANIUM HEXAFLUORIDE CENTRIFUGING RECIPE
data.raw.technology["advanced-uranium-processing-1"].effects =
{
	{type = "unlock-recipe", recipe = "clowns-solid-uranium-hexafluoride"},
	{type = "unlock-recipe", recipe = "clowns-solid-uranium-tetrafluoride"},
	{type = "unlock-recipe", recipe = "clowns-solid-uranium-oxide-1"},
	{type = "unlock-recipe", recipe = "clowns-centrifuging-20pc-hexafluoride"},
	--{type = "unlock-recipe", recipe = "advanced-uranium-processing"}, is this meant to be removed?
}
--clobber vanilla and angels nuclear fuel recipes
if data.raw.technology["angels-nuclear-fuel"] then
	data.raw.technology["angels-nuclear-fuel"].enabled=false
end
if data.raw.technology["nuclear-fuel"] then
	data.raw.technology["nuclear-fuel"].enabled=false
end
--if advanced centrifuging, push bomb behind it
if data.raw.technology["advanced-centrifuging-2"] then
  data.raw["technology"]["atomic-bomb"].prerequisites = {"advanced-centrifuging-2"}
end
--if thorium ore add thorium mox fuel cell recipe, or move advanced uranium to nuclear 2 to allow all fuels
if data.raw.item["angels-thorium-fuel-cell"] --[[or data.raw.item["angels-thorium-fuel-cell"]] then
  --table.insert(data.raw["technology"]["mixed-oxide-fuel"].effects, {type = "unlock-recipe", recipe = "clowns-thorium-mixed-oxide"})
	OV.disable_recipe("angels-thorium-processing")
else
	clowns.functions.add_unlock("nuclear-fuel-reprocessing-2","advanced-nuclear-fuel-reprocessing-2")
end
--remove kovarex and remove it from bobingabout prereq
data.raw.technology["kovarex-enrichment-process"].enabled = false
clowns.functions.pre_req_repl("atomic-bomb","kovarex-enrichment-process","nuclear-power")


--diable angels recipes & tech prerequisites from kovarex
clowns.functions.remove_prereq("mixed-oxide-fuel", "kovarex-enrichment-process")
clowns.functions.remove_prereq("angels-thorium-power", "kovarex-enrichment-process")
clowns.functions.add_unlock("mixed-oxide-fuel", "angels-advanced-uranium-reprocessing") --take from kovarex
clowns.functions.add_unlock("mixed-oxide-fuel","angels-plutonium-synthesis") --take from kovarex
clowns.functions.add_unlock("mixed-oxide-fuel","angels-americium-regeneration") --take from kovarex
clowns.functions.add_unlock("mixed-oxide-fuel","angels-mixed-oxide-cell") --take from kovarex
clowns.functions.add_unlock("mixed-oxide-fuel","angels-mixed-oxide-reprocessing") --take from kovarex

clowns.functions.add_prereq("angels-thorium-power", "mixed-oxide-fuel")
clowns.functions.add_prereq("nuclear-fuel-reprocessing-2", "angels-water-treatment-4")
clowns.functions.add_unlock("nuclear-fuel-reprocessing-2","radioactive-waste-water-purification")

if data.raw.technology["bobingabout-enrichment-process"] then
  OV.remove_prereq("bobingabout-enrichment-process", "kovarex-enrichment-process")
clowns.functions.pre_req_repl("thorium-nuclear-fuel-reprocessing-2", "nuclear-fuel-reprocessing-2", "bobingabout-enrichment-process")
end
--set-up default tech names for centrifuge tech update
local centri_1="nuclear-power"
local centri_2="nuclear-power"
if settings.startup["MCP_enable_centrifuges"].value then
	centri_1="centrifuging-1"
	centri_2="centrifuging-2"
elseif mods["bobassembly"] and mods["bobassembly"] and settings.startup["bobmods-assembly-centrifuge"].value then
	centri_1="centrifuge-2"
	centri_2="centrifuge-3"
end

clowns.functions.add_unlock(centri_1,"depleted-uranium-reprocessing")
clowns.functions.add_unlock(centri_1,"clowns-centrifuging-45pc")
clowns.functions.add_unlock(centri_1,"clowns-centrifuging-55pc")
clowns.functions.add_unlock(centri_2,"clowns-centrifuging-65pc")
clowns.functions.add_unlock(centri_2,"clowns-centrifuging-70pc")
clowns.functions.add_unlock(centri_2,"clowns-centrifuging-75pc")
clowns.functions.add_unlock(centri_2,"clowns-centrifuging-80pc")
