if data.raw.item["angels-thorium-fuel-cell"] then
  table.insert(data.raw["technology"]["angels-thorium-power"].effects, {type = "unlock-recipe", recipe = "clowns-thorium-mixed-oxide"})
  clowns.functions.replace_ing("mixed-oxide","iron-plate","iron-plate","ing")
  clowns.functions.add_to_table("thorium-nuclear-fuel-reprocessing",{type="item", name="iron-plate", amount=5},"res")
else
	angelsmods.functions.OV.add_unlock("nuclear-fuel-reprocessing-2","advanced-nuclear-fuel-reprocessing-2")
  angelsmods.functions.OV.add_unlock("nuclear-fuel-reprocessing-2","advanced-nuclear-fuel-reprocessing-b")
end
angelsmods.functions.make_void("clowns-water-radioactive-waste", "water")
--update nuclear cells
clowns.functions.replace_ing("angels-advanced-mixed-oxide-reprocessing","uranium-235","35pc-uranium","res")
--lower plutonium returns on thorium reprocessing
angelsmods.functions.OV.patch_recipes({
  {name = "advanced-thorium-nuclear-fuel-reprocessing-b", results = {{"plutonium-239", 2}}},
  {name = "advanced-thorium-nuclear-fuel-reprocessing", results = {{"thorium-232", 0}}},
  {name = "clowns-thorium-mixed-oxide", results={{"angels-thorium-fuel-cell", 2}, {"thorium-fuel-cell", 0}}},
  {name = "clowns-centrifuging-20pc-hexafluoride", results = {{type = "item", name = "angels-uranium-234", amount = 1, probability = 0.000055}}},
})
data.raw.recipe["advanced-thorium-nuclear-fuel-reprocessing"].localised_name={"recipe-name.advanced-clowns-amox-reprocessing"}