local gas_param = 100

--ICONS
data.raw.recipe["automation-science-pack"].icons ={
  {icon = "__base__/graphics/icons/automation-science-pack.png", icon_size=64},
	{	icon = "__angelsrefining__/graphics/icons/num_1.png",
		icon_size=32,
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}}}
data.raw.recipe["logistic-science-pack"].icons ={
	{icon = "__base__/graphics/icons/logistic-science-pack.png", icon_size=64},
	{	icon = "__angelsrefining__/graphics/icons/num_1.png",
		icon_size=32,
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}}}
data.raw.recipe["chemical-science-pack"].icons ={
	{	icon = "__base__/graphics/icons/chemical-science-pack.png", icon_size=64},
	{	icon = "__angelsrefining__/graphics/icons/num_1.png",
		icon_size=32,
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}}}
data.raw.recipe["military-science-pack"].icons ={
	{	icon = "__base__/graphics/icons/military-science-pack.png", icon_size=64},
	{	icon = "__angelsrefining__/graphics/icons/num_1.png",
		icon_size=32,
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}}}
data.raw.recipe["production-science-pack"].icons ={
	{	icon = "__base__/graphics/icons/production-science-pack.png", icon_size=64},
	{	icon = "__angelsrefining__/graphics/icons/num_1.png",
		icon_size=32,
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}}}
data.raw.recipe["utility-science-pack"].icons ={
	{	icon = "__base__/graphics/icons/utility-science-pack.png", icon_size=64},
	{	icon = "__angelsrefining__/graphics/icons/num_1.png",
		icon_size=32,
		tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
		scale = 0.32,
		shift = {-12, -12}}}
data.raw.recipe["automation-science-pack"].icon_size = 32
data.raw.recipe["logistic-science-pack"].icon_size = 32
data.raw.recipe["chemical-science-pack"].icon_size = 32
data.raw.recipe["military-science-pack"].icon_size = 32
data.raw.recipe["production-science-pack"].icon_size = 32
data.raw.recipe["utility-science-pack"].icon_size = 32

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
	data.raw.recipe["advanced-logistic-science-pack"].icons ={
		{	icon = "__bobtech__/graphics/icons/logistic-science-pack.png", icon_size=32},
		{	icon = "__angelsrefining__/graphics/icons/num_1.png",
			icon_size=32,
			tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
			scale = 0.32,
			shift = {-12, -12}}}
	data.raw.recipe["advanced-logistic-science-pack"].icon_size = 32
	data.raw["tool"]["advanced-logistic-science-pack"].subgroup = "advanced-logistic-science-pack"
	data.raw["tool"]["advanced-logistic-science-pack"].order = "o-a"
	table.insert(data.raw["technology"]["advanced-logistic-science-pack"].effects, {type = "unlock-recipe", recipe = "alt1-logistic-science-pack"})

	data:extend({{
		type = "recipe",
		name = "alt1-logistic-science-pack",
		enabled = false,
		energy_required = 14,
		subgroup = "advanced-logistic-science-pack",
		order = "a-b",
		icons ={
      { icon = "__bobtech__/graphics/icons/logistic-science-pack.png"},
			{	icon = "__angelsrefining__/graphics/icons/num_2.png",
				icon_size=32,
				tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
				scale = 0.32,
				shift = {-12, -12}}},
		icon_size = 32,
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
	data.raw["tool"]["omni-pack"].subgroup = "omni-pack"
	data.raw["tool"]["omni-pack"].order = "e-a"
end

local new_ing = "gas-carbon-monoxide"
if data.raw.fluid["liquid-mercury"] then
  new_ing = "liquid-mercury"
end
for i,rec in pairs({"facility-high-tech-science-pack","facility-logistic-science-pack","facility-production-science-pack"}) do
  if data.raw.recipe[rec] then
    if data.raw.recipe[rec].ingredients then table.insert(data.raw.recipe[rec].ingredients,{type="fluid", name=new_ing, amount=gas_param}) end
    if data.raw.recipe[rec].normal and data.raw.recipe[rec].normal.ingredients then table.insert(data.raw.recipe[rec].normal.ingredients,{type="fluid", name=new_ing, amount=gas_param}) end
    if data.raw.recipe[rec].expensive and data.raw.recipe[rec].expensive.ingredients then table.insert(data.raw.recipe[rec].expensive.ingredients,{type="fluid", name=new_ing, amount=gas_param}) end
  end
end
if data.raw.recipe["clowns-plate-osmium"] and not (mods["angelsindustries"] and angelsmods.industries.tech) then
	data.raw["recipe"]["alt2-production-science-pack"].ingredients=
	{
			{"angels-plate-manganese", 1},
			{"clowns-plate-osmium", 1},
			{"angels-flare-stack", 1},
			{"accumulator", 1},
		}
end
--unlock facility regarless of angels industries
table.insert(data.raw["technology"]["military-science-pack"].effects, {type = "unlock-recipe", recipe = "facility-military-science-pack"})
table.insert(data.raw["technology"]["chemical-science-pack"].effects, {type = "unlock-recipe", recipe = "facility-science-pack-3"})
table.insert(data.raw["technology"]["utility-science-pack"].effects, {type = "unlock-recipe", recipe = "facility-high-tech-science-pack"})
table.insert(data.raw["technology"]["production-science-pack"].effects, {type = "unlock-recipe", recipe = "facility-production-science-pack"})
if data.raw.recipe["advanced-logistic-science-pack"] then
  table.insert(data.raw["technology"]["advanced-logistic-science-pack"].effects, {type = "unlock-recipe", recipe = "facility-logistic-science-pack"})
end
if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value == true then
  table.insert(data.raw["technology"]["facility-1"].prerequisites,"automation-science-pack")
end
if not (mods["angelsindustries"] and angelsmods.industries.tech) then
  table.insert(data.raw["technology"]["logistic-science-pack"].effects, {type = "unlock-recipe", recipe = "alt1-science-pack-2"})

  table.insert(data.raw["technology"]["military-science-pack"].effects, {type = "unlock-recipe", recipe = "alt1-military-science-pack"})
  if data.raw.recipe["alt2-military-science-pack"] then
    table.insert(data.raw["technology"]["military-science-pack"].effects, {type = "unlock-recipe", recipe = "alt2-military-science-pack"})
  end
  
  table.insert(data.raw["technology"]["chemical-science-pack"].effects, {type = "unlock-recipe", recipe = "alt1-science-pack-3"})
  table.insert(data.raw["technology"]["chemical-science-pack"].effects, {type = "unlock-recipe", recipe = "alt2-science-pack-3"})
  
  table.insert(data.raw["technology"]["utility-science-pack"].effects, {type = "unlock-recipe", recipe = "alt1-high-tech-science-pack"})
  table.insert(data.raw["technology"]["utility-science-pack"].effects, {type = "unlock-recipe", recipe = "alt2-high-tech-science-pack"})
  
  table.insert(data.raw["technology"]["production-science-pack"].effects, {type = "unlock-recipe", recipe = "alt1-production-science-pack"})
  table.insert(data.raw["technology"]["production-science-pack"].effects, {type = "unlock-recipe", recipe = "alt2-production-science-pack"})

  if mods["omnimatter_crystal"] then
    omni.lib.add_recipe_ingredient("alt1-science-pack-3","basic-crystallonic")
    omni.lib.add_recipe_ingredient("alt2-science-pack-3","basic-crystallonic")
    omni.lib.add_recipe_ingredient("alt1-production-science-pack","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("alt2-production-science-pack","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("alt1-high-tech-science-pack","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("alt2-high-tech-science-pack","basic-oscillo-crystallonic")
    omni.lib.add_recipe_ingredient("alt1-logistic-science-pack","basic-oscillo-crystallonic")
  end
  if mods["bobtech"] and settings.startup["bobmods-burnerphase"].value == true then
    data.raw.recipe["alt1-science-pack-1"].enabled=false
    data.raw.recipe["alt2-science-pack-1"].enabled=false
    table.insert(data.raw["technology"]["automation-science-pack"].effects, {type = "unlock-recipe", recipe = "alt1-science-pack-1"})
    table.insert(data.raw["technology"]["automation-science-pack"].effects, {type = "unlock-recipe", recipe = "alt2-science-pack-1"})
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
angelsmods.trigger.smelting_products["manganese"].plate = true
angelsmods.trigger.smelting_products["manganese"].ingot = true
angelsmods.trigger.ores["manganese"] = true