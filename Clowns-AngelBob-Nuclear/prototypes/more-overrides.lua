local OV = angelsmods.functions.OV
local n_plate="iron-plate"
if mods["bobplates"] then
  n_plate="lead-plate"
elseif mods["angels-industries"] and angelsmods.industries.overhaul then
  n_plate="angels-plate-lead" --should only activate if not with bobs
end
--hide advanced uranium processing, as it is integrated into the normal cycle
data.raw.recipe["advanced-uranium-processing"].hidden=true

--Add ingredients to thermonuclear bomb
data.raw["recipe"]["thermonuclear-bomb"].ingredients = {{"rocket-control-unit", 200}}
--modules
if mods["bobmodules"] then
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"speed-module-6", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"productivity-module-6", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"effectivity-module-6", 3})
else
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"speed-module-3", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"productivity-module-3", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"effectivity-module-3", 3})
end
--fusion cores
if data.raw.item["fusion-reactor-equipment-2"] then
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"fusion-reactor-equipment-2", 1})
else
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"fusion-reactor-equipment", 1})
end
---------------------------------------
-- ANGELS INDUSTRIES NUCLEAR UPDATES --
---------------------------------------
--something about replacing angels deuterium bomb result with the thermonuke etc...

--updates to the plutonium bomb
if data.raw.item["electronic-logic-board"] then 
  clowns.functions.replace_ing("plutonium-atomic-bomb","electronic-logic-board","rocket-control-unit","ing")
elseif data.raw.item["processing-unit"] then
  clowns.functions.replace_ing("plutonium-atomic-bomb","processing-unit","rocket-control-unit","ing")
end
--assuming bobs reprocessing recipe is well balanced (may be clobbered by angels)
data.raw.recipe["nuclear-fuel-reprocessing"].results=
{
	{type="item", name="plutonium-239", amount=3,probability=0.1},
	{type="item", name="uranium-238", amount=3},
}
--update nuclear fuel result metal
table.insert(data.raw.recipe["nuclear-fuel-reprocessing"].results, {type="item", name=n_plate, amount=5})

--mixed thorium-plutonium cell update
if data.raw.recipe["thorium-plutonium-fuel-cell"] then
  data.raw.recipe["thorium-plutonium-fuel-cell"].ingredients=
  {
    {type="item", name="plutonium-239", amount=6},
    {type="item", name="thorium-232", amount=6}
  }
  if data.raw.recipe["thorium-plutonium-fuel-cell"].result then
    data.raw.recipe["thorium-plutonium-fuel-cell"].results={{type="item",name=data.raw.recipe["thorium-plutonium-fuel-cell"].result,amount = data.raw.recipe["thorium-plutonium-fuel-cell"].result_amount or 1}}
    data.raw.recipe["thorium-plutonium-fuel-cell"].result=nil
  end
  if data.raw.recipe["thorium-plutonium-fuel-cell"].results then
    table.insert(data.raw.recipe["thorium-plutonium-fuel-cell"].results, {type="item", name=n_plate, amount=2})
  elseif data.raw.recipe["thorium-plutonium-fuel-cell"].normal.results then
    table.insert(data.raw.recipe["thorium-plutonium-fuel-cell"].normal.results, {type="item", name=n_plate, amount=2})
    table.insert(data.raw.recipe["thorium-plutonium-fuel-cell"].expensive.results, {type="item", name=n_plate, amount=2})
  end
end
--lead replacement mixing settings
if settings.startup["reprocessing-overhaul"].value then
	local rec_chance= 1
	if data.raw.recipe["angels-roll-lead-converting"] then -- assuming full modules, assembly and coils
		rec_chance= 0.215
	elseif mods["bobmodules"] and mods["bobassembly"] then
		rec_chance= 0.4
	elseif mods["bobmodules"] and not mods["bobassembly"] then -- im sure someone is crazy enough...
		rec_chance= 0.52 -- balanced based on pure prod MK8 modules and vanilla MK3 AM
	elseif not mods["bobmodules"] and mods["bobassembly"] then -- highly possible, especially with space-exploration, not sure how to account for earendels modules yet
		rec_chance= 1.28 -- balanced based on vanilla modules in bobs MK6 AM
	else -- bare minimum mods (no modules, no assembly)
		rec_chance= 1.45 -- balanced based on vanilla modules and vanilla MK3 AM
	end
  --uranium updates
  clowns.functions.remove_res("nuclear-fuel-reprocessing",n_plate,"res")
  table.insert(data.raw.recipe["nuclear-fuel-reprocessing"].results,{type="item",name="lead-oxide",amount= 2,probability=rec_chance})
  table.insert(data.raw.recipe["advanced-nuclear-fuel-reprocessing"].results,{type="item",name="lead-oxide",amount= 2,probability=rec_chance})
  --thorium updates
  if data.raw.item["thorium-ore"] then
    angelsmods.functions.allow_productivity("mixed-oxide")
    angelsmods.functions.allow_productivity("thorium-mixed-oxide")
    clowns.functions.remove_res("thorium-fuel-reprocessing",n_plate,"res")
    table.insert(data.raw.recipe["advanced-thorium-nuclear-fuel-reprocessing"].results,{type="item",name="lead-oxide",amount= 2,probability=rec_chance})
    table.insert(data.raw.recipe["advanced-thorium-nuclear-fuel-reprocessing|b"].results,{type="item",name="lead-oxide",amount= 2,probability=rec_chance})
    table.insert(data.raw.recipe["thorium-fuel-reprocessing"].results,{type="item",name="lead-oxide",amount= 2,probability=rec_chance})
	else
    table.insert(data.raw.recipe["advanced-nuclear-fuel-reprocessing-2"].results,{type="item",name="lead-oxide",amount= 2,probability=rec_chance})
  end
end
----------------------------------------
-- ANGELS INDUSTRIES GROUPING UPDATES --
----------------------------------------
if mods["angelsindustries"] then
  --nuclear reactor fuel group updates
	data.raw["item-subgroup"]["clowns-uranium-centrifuging"].group = "angels-power"
	data.raw["item-subgroup"]["clowns-uranium-centrifuging"].order = "d[clowns]-ac[centrifuging]"
	data.raw["item-subgroup"]["clowns-nuclear-fuels"].group = "angels-power"
	data.raw["item-subgroup"]["clowns-nuclear-fuels"].order = "d[clowns]-ad[fuels]"
	data.raw["item-subgroup"]["clowns-nuclear-cells"].group = "angels-power"
  data.raw["item-subgroup"]["clowns-nuclear-cells"].order = "d[clowns]-ab[cells]"
  --set ingedient limit higher...
  data.raw["assembling-machine"]["centrifuge"].ingredient_count=5
  if mods["bobassembly"] and settings.startup["bobmods-assembly-centrifuge"].value then
    data.raw["assembling-machine"]["centrifuge-2"].ingredient_count=5
    data.raw["assembling-machine"]["centrifuge-3"].ingredient_count=5
  end
  if settings.startup["MCP_enable_centrifuges"].value then
    data.raw["assembling-machine"]["centrifuge-mk2"].ingredient_count=5
    data.raw["assembling-machine"]["centrifuge-mk3"].ingredient_count=5
  end
  --thermal/train fuel updates
  data.raw["item-subgroup"]["clowns-nuclear-fuels"].group = "angels-power"
  data.raw["item-subgroup"]["clowns-nuclear-fuels"].order = "d[clowns]-ac[centrifuging]"
end
--fix odd interactions
data.raw.recipe["uranium-fuel-cell"].ingredients =
{
  {type="item", name=n_plate, amount=10}, --enforce lead plate
  {type="item", name="35%-uranium", amount=20},
}
--execute functions after being called
OV.execute()