local gas_param = 100
local icons = clowns.tables.science_icons
--ICONS
local icon_checker = function(recipe_name, tag, number)
	data.raw.recipe[recipe_name].icons = data.raw.recipe[recipe_name].icons or {}
	data.raw.recipe[recipe_name].icons = angelsmods.functions.add_number_icon_layer({icons[tag]}, number , clowns.icon_tint)
end

icon_checker("automation-science-pack","automation", 1)
icon_checker("logistic-science-pack","logistic", 1)
icon_checker("chemical-science-pack","chemical", 1)
icon_checker("military-science-pack","military", 1)
icon_checker("production-science-pack","production", 1)
icon_checker("utility-science-pack","utility", 1)
if data.raw.recipe["advanced-logistic-science-pack"] then
	icon_checker("advanced-logistic-science-pack","advlog", 1)
end

data.raw["tool"]["automation-science-pack"].subgroup = "automation-science-pack"
data.raw["tool"]["logistic-science-pack"].subgroup = "logistic-science-pack"
data.raw["tool"]["chemical-science-pack"].subgroup = "chemical-science-pack"
data.raw["tool"]["military-science-pack"].subgroup = "military-science-pack"
data.raw["tool"]["production-science-pack"].subgroup = "production-science-pack"
data.raw["tool"]["utility-science-pack"].subgroup = "utility-science-pack"

data.raw["tool"]["automation-science-pack"].order = "a-a"
data.raw["tool"]["logistic-science-pack"].order = "c-a"
data.raw["tool"]["chemical-science-pack"].order = "g-a"
data.raw["tool"]["military-science-pack"].order = "i-a"
data.raw["tool"]["production-science-pack"].order = "k-a"
data.raw["tool"]["utility-science-pack"].order = "m-a"

if data.raw.recipe["advanced-logistic-science-pack"] then
	data.raw["tool"]["advanced-logistic-science-pack"].subgroup = "advanced-logistic-science-pack"
	data.raw["tool"]["advanced-logistic-science-pack"].order = "o-a"

	data:extend({{
		type = "recipe",
		name = "advanced-logistic-science-pack-alt1",
		enabled = false,
		energy_required = 14,
		subgroup = "advanced-logistic-science-pack",
		order = "a-b",
		icons = angelsmods.functions.add_number_icon_layer(icons.advlog, 2 , clowns.icon_tint),
		ingredients ={
			{type="item", name="rail", amount=3},
			{type="item", name="angels-plate-chrome", amount=1},
			{type="item", name="substation", amount=1},
			{type="item", name="filter-inserter", amount=1}
		},
		results = {{type="item", name="advanced-logistic-science-pack", amount=3}}
  }})
  if angelsmods and angelsmods.trigger.ores then
    angelsmods.trigger.ores["chrome"] = true
  end
  if angelsmods and angelsmods.trigger.smelting_products then
    angelsmods.trigger.smelting_products["chrome"].plate = true --in case it does not already trigger
  end
end
if data.raw.tool["token-bio"] then
	data.raw["tool"]["token-bio"].subgroup = "logistic-science-pack"
	data.raw["tool"]["token-bio"].order = "c-b"
end

if data.raw.recipe["omni-pack"] then
	data.raw["tool"]["omni-pack"].subgroup = "omni-science-pack"
	data.raw["tool"]["omni-pack"].order = "e-a"
end

local new_ing = "gas-carbon-monoxide"
if data.raw.fluid["liquid-mercury"] then
  new_ing = "liquid-mercury"
end
for i,rec in pairs({"utility-science-pack-facility","advanced-logistic-science-pack-facility","production-science-pack-facility"}) do
  if data.raw.recipe[rec] then
    if data.raw.recipe[rec].ingredients then table.insert(data.raw.recipe[rec].ingredients,{type="fluid", name=new_ing, amount=gas_param}) end
    if data.raw.recipe[rec].normal and data.raw.recipe[rec].normal.ingredients then table.insert(data.raw.recipe[rec].normal.ingredients,{type="fluid", name=new_ing, amount=gas_param}) end
    if data.raw.recipe[rec].expensive and data.raw.recipe[rec].expensive.ingredients then table.insert(data.raw.recipe[rec].expensive.ingredients,{type="fluid", name=new_ing, amount=gas_param}) end
  end
end
if data.raw.recipe["clowns-plate-osmium"] and not (mods["angelsindustries"] and angelsmods.industries.tech) then
	data.raw["recipe"]["production-science-pack-alt2"].ingredients=
	{
			{"angels-plate-manganese", 1},
			{"clowns-plate-osmium", 1},
			{"angels-flare-stack", 1},
			{"accumulator", 1},
		}
end
--unlock facility regardless of angels industries
if mods["angelspetrochem"] then
	table.insert(data.raw["technology"]["military-science-pack"].effects, {type = "unlock-recipe", recipe = "military-science-pack-facility"})
	table.insert(data.raw["technology"]["chemical-science-pack"].effects, {type = "unlock-recipe", recipe = "chemical-science-pack-facility"})
	table.insert(data.raw["technology"]["utility-science-pack"].effects, {type = "unlock-recipe", recipe = "utility-science-pack-facility"})
	table.insert(data.raw["technology"]["production-science-pack"].effects, {type = "unlock-recipe", recipe = "production-science-pack-facility"})
	if data.raw.recipe["advanced-logistic-science-pack"] then
		table.insert(data.raw["technology"]["advanced-logistic-science-pack"].effects, {type = "unlock-recipe", recipe = "advanced-logistic-science-pack-facility"})
	end
	if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value == true then
		table.insert(data.raw["technology"]["facility-1"].prerequisites,"automation-science-pack")
	end
end
if not (mods["angelsindustries"] and angelsmods.industries.tech) then
  if mods["omnimatter_crystal"] then
    omni.lib.add_recipe_ingredient("chemical-science-pack-alt1","basic-crystallonic")
    omni.lib.add_recipe_ingredient("chemical-science-pack-alt2","basic-crystallonic")
    omni.lib.add_recipe_ingredient("production-science-pack-alt1","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("production-science-pack-alt2","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("utility-science-pack-alt1","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("utility-science-pack-alt2","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("logistic-science-pack-alt1","basic-oscillo-crystallonic")
		omni.lib.add_recipe_ingredient("logistic-science-pack-alt2","basic-oscillo-crystallonic")
  end
  if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value == true then
    data.raw.recipe["automation-science-pack-alt1"].enabled=false
    data.raw.recipe["automation-science-pack-alt2"].enabled=false
  end
end
if mods["bobmodules"] and settings.startup["bobmods-modules-enablerawspeedmodules"].value then
  data.raw["assembling-machine"]["particle-accelerator-mk1"].allowed_effects={"speed", "pollution"} --remove efficiency
  data.raw["assembling-machine"]["particle-accelerator-mk2"].allowed_effects={"speed", "pollution"} --remove efficiency
end
--update grouping if angels
if mods["angelsindustries"] and angelsmods.industries.tech then
  data.raw["item-subgroup"]["particle-accelerator-recipes"].group = "angels-tech"
  data.raw["item-subgroup"]["particle-accelerator-recipes"].order = "ba[particle-accelerator]"
end
-----------------------------------------
-- enable recipes from angels
-----------------------------------------
if mods["angelsmelting"] then
	angelsmods.trigger.smelting_products["manganese"].plate = true
	angelsmods.trigger.smelting_products["manganese"].ingot = true
	angelsmods.trigger.ores["manganese"] = true
end
--------------------------------------------------------------------------------------------------
-- RECIPE ORDER CLEAN-UP
--------------------------------------------------------------------------------------------------
for _,pack in pairs({"automation","logistic","chemical","production","utility","military","advanced-logistic","omni"}) do
	if data.raw.recipe[pack.."-science-pack"] then
		data.raw.recipe[pack.."-science-pack"].order="a-a"
		if data.raw.recipe[pack.."-science-pack-facility"] then
			data.raw.recipe[pack.."-science-pack-facility"].order = "b"
		end
	end
end