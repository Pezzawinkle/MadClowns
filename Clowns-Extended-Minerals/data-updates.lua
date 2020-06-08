
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

table.insert(data.raw["technology"]["oil-gas-extraction"].effects, {type = "unlock-recipe", recipe = "clowns-resource2-liquification"})

--MODIFY LOCALIZATION STRINGS
--data.raw["resource"]["clowns-ore1"].localised_description = {"resource-description.clowns-ore1"}
--data.raw["resource"]["clowns-ore4"].localised_description = {"resource-description.clowns-ore1"}
--data.raw["resource"]["clowns-ore5"].localised_description = {"resource-description.clowns-ore1"}
--data.raw["resource"]["clowns-ore7"].localised_description = {"resource-description.clowns-ore1"}
if not clowns.special_vanilla then
  --data.raw["resource"]["clowns-ore2"].localised_description = {"resource-description.clowns-ore1"}
  --data.raw["resource"]["clowns-ore3"].localised_description = {"resource-description.clowns-ore1"}
  --data.raw["resource"]["clowns-ore6"].localised_description = {"resource-description.clowns-ore1"}
  table.insert(data.raw["technology"]["water-washing-2"].effects, {type = "unlock-recipe", recipe = "clowns-resource1-sluicing"}) --is this not a processing item?
end

--if omnimatter crystal, add crystals
require("prototypes.omnicrystals.omnicrystal_updates")