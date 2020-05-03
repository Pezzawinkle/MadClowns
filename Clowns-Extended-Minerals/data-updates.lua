angelsmods.functions.allow_productivity("clowns-ore1-crushed-processing")
angelsmods.functions.allow_productivity("clowns-ore2-crushed-processing")
angelsmods.functions.allow_productivity("clowns-ore3-crushed-processing")
angelsmods.functions.allow_productivity("clowns-ore4-crushed-processing")
angelsmods.functions.allow_productivity("clowns-ore5-crushed-processing")
angelsmods.functions.allow_productivity("clowns-ore6-crushed-processing")
angelsmods.functions.allow_productivity("clowns-ore7-crushed-processing")

angelsmods.functions.allow_productivity("clowns-ore1-chunk-processing")
angelsmods.functions.allow_productivity("clowns-ore2-chunk-processing")
angelsmods.functions.allow_productivity("clowns-ore3-chunk-processing")
angelsmods.functions.allow_productivity("clowns-ore4-chunk-processing")
angelsmods.functions.allow_productivity("clowns-ore5-chunk-processing")
angelsmods.functions.allow_productivity("clowns-ore6-chunk-processing")
angelsmods.functions.allow_productivity("clowns-ore7-chunk-processing")

angelsmods.functions.allow_productivity("clowns-ore1-crystal-processing")
angelsmods.functions.allow_productivity("clowns-ore2-crystal-processing")
angelsmods.functions.allow_productivity("clowns-ore3-crystal-processing")
angelsmods.functions.allow_productivity("clowns-ore4-crystal-processing")
angelsmods.functions.allow_productivity("clowns-ore5-crystal-processing")
angelsmods.functions.allow_productivity("clowns-ore6-crystal-processing")
angelsmods.functions.allow_productivity("clowns-ore7-crystal-processing")

angelsmods.functions.allow_productivity("clowns-ore1-pure-processing")
angelsmods.functions.allow_productivity("clowns-ore2-pure-processing")
angelsmods.functions.allow_productivity("clowns-ore3-pure-processing")
angelsmods.functions.allow_productivity("clowns-ore4-pure-processing")
angelsmods.functions.allow_productivity("clowns-ore5-pure-processing")
angelsmods.functions.allow_productivity("clowns-ore6-pure-processing")
angelsmods.functions.allow_productivity("clowns-ore7-pure-processing")

--ADD RESOURCE PROCESSING RECIPES TO THE APPROPRIATE TECHNOLOGIES
table.insert(data.raw["technology"]["water-washing-2"].effects, {type = "unlock-recipe", recipe = "clowns-resource1-sluicing"})
table.insert(data.raw["technology"]["oil-gas-extraction"].effects, {type = "unlock-recipe", recipe = "clowns-resource2-liquification"})

--CONFIGURE RESOURCES WITH OMNIMATTER FUNCTIONS, INPUTS ARE {NAME, TIER??, LOCALE, NAME OF MOD}
local ore1fluid
local ore2fluid
local ore3fluid
local ore4fluid
local ore5fluid
local ore6fluid
local ore7fluid
if mods["angelspetrochem"] and settings.startup["angels-enable-acids"].value then
	ore1fluid = "liquid-hydrofluoric-acid"
	ore2fluid = "liquid-sulfuric-acid"
	ore3fluid = "liquid-nitric-acid"
	ore4fluid = "liquid-hydrochloric-acid"
	ore5fluid = "liquid-nitric-acid"
	ore6fluid = "liquid-sulfuric-acid"
	ore7fluid = "liquid-hydrofluoric-acid"
else
	ore1fluid = "liquid-sulfuric-acid"
	ore2fluid = "liquid-sulfuric-acid"
	ore3fluid = "liquid-sulfuric-acid"
	ore4fluid = "liquid-sulfuric-acid"
	ore5fluid = "liquid-sulfuric-acid"
	ore6fluid = "liquid-sulfuric-acid"
	ore7fluid = "liquid-sulfuric-acid"
end
local add_new = bobmods.lib.recipe.add_new_ingredient
add_new("clowns-ore1-crystal", {type="fluid", name = ore1fluid, amount=10})
add_new("clowns-ore2-crystal", {type="fluid", name = ore2fluid, amount=10})
add_new("clowns-ore3-crystal", {type="fluid", name = ore3fluid, amount=10})
add_new("clowns-ore4-crystal", {type="fluid", name = ore4fluid, amount=10})
add_new("clowns-ore5-crystal", {type="fluid", name = ore5fluid, amount=10})
add_new("clowns-ore6-crystal", {type="fluid", name = ore6fluid, amount=10})
add_new("clowns-ore7-crystal", {type="fluid", name = ore7fluid, amount=10})

if mods["omnimatter"] then
	omni.add_resource("clowns-ore1",3,"Adamantite","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore2",2,"Antitate","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore3",2,"Pro-Galena","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore4",2,"Orichalcite","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore5",2,"Phosphorite","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore6",3,"Sanguinate","Clowns-Extended-Minerals")
	omni.add_resource("clowns-ore7",3,"Elionagate","Clowns-Extended-Minerals")
	omni.add_resource("clowns-resource1",2,"Alluvial Deposit","Clowns-Extended-Minerals")
	omni.add_resource("clowns-resource2",2,"Oil Sands","Clowns-Extended-Minerals")
	--omni.add_resource(data.raw.item["clowns-resource3"],3,"Crystal Deposit","Clowns-Extended-Minerals")
end

--APPLY THE EFFECTS OF SETTINGS THAT ARE RELEVANT TO ANGEL'S INFINITE ORES
--if mods["angelsinfiniteores"] then
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

--MODIFY LOCALIZATION STRINGS

data.raw["resource"]["clowns-ore1"].localised_description = {"resource-description.clowns-ore1"}
data.raw["resource"]["clowns-ore2"].localised_description = {"resource-description.clowns-ore1"}
data.raw["resource"]["clowns-ore3"].localised_description = {"resource-description.clowns-ore1"}
data.raw["resource"]["clowns-ore4"].localised_description = {"resource-description.clowns-ore1"}
data.raw["resource"]["clowns-ore5"].localised_description = {"resource-description.clowns-ore1"}
data.raw["resource"]["clowns-ore6"].localised_description = {"resource-description.clowns-ore1"}

--if omnimatter crystal, add crystals
require("prototypes.omnicrystals.omnicrystal_updates")