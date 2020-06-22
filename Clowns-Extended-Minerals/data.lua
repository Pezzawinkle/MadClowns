-- function to know if this is special vanilla or not (DUPLICATE OF ANGELS, since this mod seems to be calling it earlier)
if not clowns then clowns={} end
if not clowns.functions then clowns.functions={} end
--check vanilla settings
clowns.special_vanilla = true --assume true, then find out if false 
for ore_name, ore_enabled in pairs(angelsmods.trigger.ores or {}) do
  if ore_enabled and ore_name ~= "iron" and ore_name ~= "copper" and ore_enabled ~= "uranium" then
    clowns.special_vanilla = false
  end
end

clowns.tables={}
clowns.tables.ores={"clowns-ore1","clowns-ore4","clowns-ore5","clowns-ore7"}
if not clowns.special_vanilla then
  table.insert(clowns.tables.ores,"clowns-ore2")
  table.insert(clowns.tables.ores,"clowns-ore3")
  table.insert(clowns.tables.ores,"clowns-ore6")
  table.insert(clowns.tables.ores,"clowns-ore8")
  table.insert(clowns.tables.ores,"clowns-ore9")
end
--add to angels ore triggers (for refining products)
--CLOWNS ORES (no need to check these)
angelsmods.trigger.ores["phosphorus"] = true --phosphorus
angelsmods.trigger.ores["osmium"]=true --osmium
angelsmods.trigger.ores["magnesium"]=true --osmium
--angels intermediates not sure i need to check these... 
angelsmods.trigger.ores["limestone"] = angelsmods.trigger.ores["limestone"] or true
angelsmods.trigger.ores["sand"] = angelsmods.trigger.ores["sand"] or true
angelsmods.trigger.ores["calcium-sulfate"]=true --calcium-sulfate
angelsmods.trigger.ores["sodium-carbonate"]=true --sodium-carbonate
if angelsmods.trigger.ores["lithium"] then
  angelsmods.trigger.ores["solid-lithium"]=true --lithium-chloride
end
--actual ores in the ores table
local temp_triggers={["uranium"]=table.deepcopy(angelsmods.trigger.ores["uranium"]),["fluorite"]=table.deepcopy(angelsmods.trigger.ores["fluorite"])}
angelsmods.trigger.ores["uranium"]=true --uranium
angelsmods.trigger.ores["fluorite"]=true

require("prototypes.categories")

require("prototypes.generation.clowns-ore-set")
require("prototypes.generation.clowns-resource1")
require("prototypes.generation.clowns-resource2")
require("prototypes.generation.infinite-clowns-resource1")
require("prototypes.generation.infinite-clowns-resource2")

require("prototypes.items.item-builder")
require("prototypes.items.resource-processing")

require("prototypes.recipes.ore-refining")
require("prototypes.recipes.ore-sorting-mix")
require("prototypes.recipes.ore-sorting")
require("prototypes.recipes.ore-sorting-mix-static")

require("prototypes.recipes.liquification")
--require("prototypes.recipes.mining")
require("prototypes.recipes.sluicing")

require("prototypes.technology.water-treatment")
require("prototypes.technology.ore-refining")

--functions for omnimatter crystals
require("prototypes.omnicrystals.omnicrystal_functions")
--CONFIGURE RESOURCES WITH OMNIMATTER FUNCTIONS, INPUTS ARE {NAME, TIER??, LOCALE, NAME OF MOD}
local ore1fluid,ore2fluid,ore3fluid,ore4fluid,ore5fluid,ore6fluid,ore7fluid,ore8fluid,ore9fluid

if mods["angelspetrochem"] and settings.startup["angels-enable-acids"].value then
	ore1fluid = "liquid-hydrofluoric-acid"
	ore2fluid = "liquid-sulfuric-acid"
	ore3fluid = "liquid-nitric-acid"
	ore4fluid = "liquid-hydrochloric-acid"
	ore5fluid = "liquid-nitric-acid"
	ore6fluid = "liquid-sulfuric-acid"
  ore7fluid = "liquid-hydrofluoric-acid"
  ore8fluid = "liquid-hydrochloric-acid"
  ore9fluid = "liquid-phosphoric-acid"
else
	ore1fluid = "liquid-sulfuric-acid"
	ore2fluid = "liquid-sulfuric-acid"
	ore3fluid = "liquid-sulfuric-acid"
	ore4fluid = "liquid-sulfuric-acid"
	ore5fluid = "liquid-sulfuric-acid"
	ore6fluid = "liquid-sulfuric-acid"
  ore7fluid = "liquid-sulfuric-acid"
  ore8fluid = "liquid-sulfuric-acid"
  ore9fluid = "liquid-sulfuric-acid"
end

if mods["omnimatter"] then
	omni.add_resource("clowns-ore1",3,"Adamantite","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore2",2,"Antitate","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore3",2,"Pro-Galena","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore4",2,"Orichalcite","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore5",2,"Phosphorite","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore6",3,"Sanguinate","Clowns-Extended-Minerals")
  omni.add_resource("clowns-ore7",3,"Elionagate","Clowns-Extended-Minerals")
  omni.add_resource("clowns-ore8",3,"Meta-Garnierite","Clowns-Extended-Minerals")
  omni.add_resource("clowns-ore9",3,"Nova-Leucoxene","Clowns-Extended-Minerals")
	omni.add_resource("clowns-resource1",2,"Alluvial Deposit","Clowns-Extended-Minerals")
	omni.add_resource("clowns-resource2",2,"Oil Sands","Clowns-Extended-Minerals")
end

--APPLY THE EFFECTS OF SETTINGS THAT ARE RELEVANT TO ANGEL'S INFINITE ORES
if mods["angelsinfiniteores"] and settings.startup["angels-enable-acids"].value then
	if settings.startup["enableinfiniteclownsore1"].value then
		data.raw["resource"]["infinite-clowns-ore1"].minable.fluid_amount = 10
		data.raw["resource"]["infinite-clowns-ore1"].minable.required_fluid = ore1fluid
	end
	if settings.startup["enableinfiniteclownsore2"].value then
		data.raw["resource"]["infinite-clowns-ore2"].minable.fluid_amount = 10
		data.raw["resource"]["infinite-clowns-ore2"].minable.required_fluid = ore2fluid
	end
	if settings.startup["enableinfiniteclownsore3"].value then
		data.raw["resource"]["infinite-clowns-ore3"].minable.fluid_amount = 10
		data.raw["resource"]["infinite-clowns-ore3"].minable.required_fluid = ore3fluid
	end
	if settings.startup["enableinfiniteclownsore4"].value then
		data.raw["resource"]["infinite-clowns-ore4"].minable.fluid_amount = 10
		data.raw["resource"]["infinite-clowns-ore4"].minable.required_fluid = ore4fluid
	end
	if settings.startup["enableinfiniteclownsore5"].value then
		data.raw["resource"]["infinite-clowns-ore5"].minable.fluid_amount = 10
		data.raw["resource"]["infinite-clowns-ore5"].minable.required_fluid = ore5fluid
	end
	if settings.startup["enableinfiniteclownsore6"].value then
		data.raw["resource"]["infinite-clowns-ore6"].minable.fluid_amount = 10
		data.raw["resource"]["infinite-clowns-ore6"].minable.required_fluid = ore6fluid
	end
	if settings.startup["enableinfiniteclownsore7"].value then
		data.raw["resource"]["infinite-clowns-ore7"].minable.fluid_amount = 10
		data.raw["resource"]["infinite-clowns-ore7"].minable.required_fluid = ore7fluid
	end

	if settings.startup["enableinfiniteclownsresource1"].value then
		data.raw["resource"]["infinite-clowns-resource1"].minable.fluid_amount = nil
	end
	if settings.startup["enableinfiniteclownsresource2"].value then
		data.raw["resource"]["infinite-clowns-resource2"].minable.fluid_amount = 50
		data.raw["resource"]["infinite-clowns-resource2"].minable.required_fluid = "steam"
	end
end
--set triggers to empty after being used locally
angelsmods.trigger.ores["phosphorus"] = nil --phosphorus
angelsmods.trigger.ores["limestone"] = nil
angelsmods.trigger.ores["sand"] = nil
angelsmods.trigger.ores["calcium-sulfate"] = nil --calcium-sulfate
angelsmods.trigger.ores["sodium-carbonate"] = nil --sodium-carbonate
angelsmods.trigger.ores["uranium"] = temp_triggers["uranium"] --uranium
angelsmods.trigger.ores["osmium"] = nil --osmium
angelsmods.trigger.ores["fluorite"]= temp_triggers["fluorite"]
if angelsmods.trigger.ores["lithium"] then
  angelsmods.trigger.ores["solid-lithium"] = nil --lithium-chloride
end