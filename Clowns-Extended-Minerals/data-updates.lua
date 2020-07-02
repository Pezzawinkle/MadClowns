for i=1,15 do --allow for many options, particularly for the second step (minimum is ore count)
  for _,name in pairs({"-crushed","-chunk","-crystal","-pure"}) do
    --add prod to regular ore sorting
    if data.raw.recipe["clowns-ore".. i .. name .. "-processing"] then
      angelsmods.functions.allow_productivity("clowns-ore".. i .. name .. "-processing")
    end
    --add prod to mixed ore sorting
    if data.raw.recipe["clowns".. name .."-mix".. i .. "-processing"] then
      angelsmods.functions.allow_productivity("clowns".. name .."-mix".. i .. "-processing")
    end
  end
end

--ADD RESOURCE PROCESSING RECIPES TO THE APPROPRIATE TECHNOLOGIES

table.insert(data.raw["technology"]["oil-gas-extraction"].effects, {type = "unlock-recipe", recipe = "clowns-resource2-liquification"})
if not clowns.special_vanilla then
  table.insert(data.raw["technology"]["water-washing-2"].effects, {type = "unlock-recipe", recipe = "clowns-resource1-sluicing"}) --is this not a processing item?
end

--if omnimatter crystal, add crystals
require("prototypes.omnicrystals.omnicrystal_updates")
--pyanodon updates
require("prototypes.pyanodon_updates")