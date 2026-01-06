local OV = angelsmods.functions.OV
--hide advanced uranium processing, as it is integrated into the normal cycle
data.raw.recipe["advanced-uranium-processing"].hidden=true

--Add ingredients to thermonuclear bomb
--data.raw["recipe"]["thermonuclear-bomb"].ingredients = {{"rocket-control-unit", 200}}
--modules
if mods["bobmodules"] then
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"bob-speed-module-5", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"bob-productivity-module-5", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"bob-efficiency-module-5", 3})
else
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"speed-module-3", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"productivity-module-3", 3})
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"efficiency-module-3", 3})
end
--fusion cores
if data.raw.item["fusion-reactor-equipment-2"] then
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"fusion-reactor-equipment-2", 1})
else
	table.insert(data.raw["recipe"]["thermonuclear-bomb"].ingredients, {"fission-reactor-equipment", 1})
end
---------------------------------------
-- ANGELS NUCLEAR UPDATES --
---------------------------------------
--something about replacing angels deuterium bomb result with the thermonuke etc...
--fix recipes
clowns.functions.replace_ing("advanced-thorium-nuclear-fuel-reprocessing|b","angels-depleted-thorium-fuel-cell","angels-depleted-thorium-fuel-cell","ing")
clowns.functions.replace_ing("advanced-thorium-nuclear-fuel-reprocessing","angels-depleted-thorium-fuel-cell","angels-depleted-AMOX-cell","ing")
clowns.functions.replace_ing("thorium-nuclear-fuel-reprocessing","angels-depleted-thorium-fuel-cell","angels-depleted-AMOX-cell","ing")
--==Hide fuel cell recipes==--
--clowns uranium-fuel cell
OV.remove_unlock("angels-mixed-oxide", "kovarex-enrichment-process")
--OV.disable_technology("angels-mixed-oxide")
--clowns thorium-fuel cell
OV.remove_unlock("thorium-mixed-oxide", "thorium-fuel-reprocessing")
OV.disable_technology("thorium-fuel-reprocessing")
--use angels version
OV.global_replace_item("angels-depleted-thorium-fuel-cell","angels-depleted-thorium-fuel-cell")

--assuming bobs reprocessing recipe is well balanced (may be clobbered by angels)
data.raw.recipe["nuclear-fuel-reprocessing"].results=
{
	{type="item", name="angels-plutonium-239", amount=3,probability=0.1},
	{type="item", name="uranium-238", amount=3},
}
--update nuclear fuel result metal
clowns.functions.add_to_table("nuclear-fuel-reprocessing",{type="item", name="iron-plate", amount=5},"res")

--lead replacement mixing settings
if data.raw.item["lead-oxide"] then --check setting and that the oxide exists
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
  clowns.functions.remove_res("nuclear-fuel-reprocessing","iron-plate","res")
  clowns.functions.add_to_table("nuclear-fuel-reprocessing",{type="item",name="lead-oxide",amount= 2,probability=rec_chance},"res")
  clowns.functions.add_to_table("advanced-nuclear-fuel-reprocessing",{type="item",name="lead-oxide",amount= 2,probability=rec_chance},"res")
  --thorium updates
  if data.raw.item["thorium-ore"] then
    angelsmods.functions.allow_productivity("mixed-oxide")
    angelsmods.functions.allow_productivity("thorium-mixed-oxide")
    clowns.functions.remove_res("thorium-fuel-reprocessing","iron-plate","res")
    if data.raw.recipe["advanced-thorium-nuclear-fuel-reprocessing"] then
      clowns.functions.add_to_table("advanced-thorium-nuclear-fuel-reprocessing",{type="item",name="lead-oxide",amount= 2,probability=rec_chance},"res")
      clowns.functions.add_to_table("advanced-thorium-nuclear-fuel-reprocessing-b",{type="item",name="lead-oxide",amount= 2,probability=rec_chance},"res")
    end
    if data.raw.recipe["thorium-fuel-reprocessing"] then
      clowns.functions.add_to_table("thorium-fuel-reprocessing",{type="item",name="lead-oxide",amount= 2,probability=rec_chance},"res")
    end
  else
    clowns.functions.add_to_table("advanced-nuclear-fuel-reprocessing-2",{type="item",name="lead-oxide",amount= 2,probability=rec_chance},"res")
  end
end

--[[nuclear reactor fuel group updates
data.raw["item-subgroup"]["clowns-uranium-centrifuging"].group = "angels-power-nuclear-processing"
data.raw["item-subgroup"]["clowns-uranium-centrifuging"].order = "d[clowns]-ac[centrifuging]"
data.raw["item-subgroup"]["clowns-nuclear-fuels"].group = "angels-power-nuclear"
data.raw["item-subgroup"]["clowns-nuclear-fuels"].order = "d[clowns]-ab[fuels]"
data.raw["item-subgroup"]["clowns-nuclear-cells"].group = "angels-power-nuclear-fuel-cell"
data.raw["item-subgroup"]["clowns-nuclear-cells"].order = "d[clowns]-ad[cells]"
data.raw["item-subgroup"]["clowns-nuclear-isotopes"].group = "angels-power-nuclear-processing"
data.raw["item-subgroup"]["clowns-nuclear-isotopes"].order = "d[clowns]-ae[isotopes]"
]]
--set ingedient limit higher...
local ct = data.raw["assembling-machine"]["centrifuge"].ingredient_count
if ct+1>5 then
  ct=ct+1
else
  ct=5 -- in case it is not actually set
end
--thermal/train fuel updates
--data.raw["item-subgroup"]["clowns-nuclear-fuels"].group = "angels-power-nuclear"
--data.raw["item-subgroup"]["clowns-nuclear-fuels"].order = "d[clowns]-ac[centrifuging]"
OV.patch_recipes({
    {name = "thorium-purification",results = {{type = "item", name = "angels-plutonium-239", amount = 1, probability=0.15}}},
})
--fix odd interactions
data.raw.recipe["uranium-fuel-cell"].ingredients =
{
  {type="item", name="iron-plate", amount=10}, --enforce lead plate
  {type="item", name="35pc-uranium", amount=20},
}
data.raw.recipe["mixed-oxide"].ingredients =
{
  {type="item", name="iron-plate", amount=2}, --enforce lead plate
  {type="item", name="uranium-238", amount=2},
  {type="item", name="angels-plutonium-239", amount=2}
}
--execute functions after being called
OV.execute()