angelsmods.functions.allow_productivity("facility-science-pack-1")
angelsmods.functions.allow_productivity("facility-science-pack-2")
angelsmods.functions.allow_productivity("facility-science-pack-3")
angelsmods.functions.allow_productivity("facility-production-science-pack")
angelsmods.functions.allow_productivity("facility-military-science-pack")
angelsmods.functions.allow_productivity("facility-high-tech-science-pack")

if data.raw.recipe["omni-pack"] then
	angelsmods.functions.allow_productivity("facility-omni-pack")
end
if data.raw.recipe["logistic-science-pack"] then
	angelsmods.functions.allow_productivity("facility-logistic-science-pack")
	angelsmods.functions.allow_productivity("alt1-logistic-science-pack")
end

if data.raw.recipe["alt2-military-science-pack"] then
	angelsmods.functions.allow_productivity("alt2-military-science-pack")
end

angelsmods.functions.allow_productivity("alt1-science-pack-1")
angelsmods.functions.allow_productivity("alt2-science-pack-1")
angelsmods.functions.allow_productivity("alt1-science-pack-2")
angelsmods.functions.allow_productivity("alt1-science-pack-3")
angelsmods.functions.allow_productivity("alt2-science-pack-3")
angelsmods.functions.allow_productivity("alt1-production-science-pack")
angelsmods.functions.allow_productivity("alt2-production-science-pack")
angelsmods.functions.allow_productivity("alt1-high-tech-science-pack")
angelsmods.functions.allow_productivity("alt2-high-tech-science-pack")
angelsmods.functions.allow_productivity("alt1-military-science-pack")

if data.raw.recipe["facility-omni-pack"] then
	table.insert(data.raw["technology"]["facility-1"].effects, {type = "unlock-recipe", recipe = "facility-omni-pack"})
end

if settings.startup["allow-space-science-generation"].value == true then
	table.insert(data.raw["technology"]["particle-accelerator-2"].effects, {type = "unlock-recipe", recipe = "particle-accelerator-4"})
end
if not (mods["angelsindustries"] and angelsmods.industries.tech) then

  if mods["omnimatter_science"] and mods["bobplates"] then
    data.raw.recipe["production-science-pack"].icons =
    {
      {
        icon = "__omnilib__/graphics/icons/science-pack/production-science-pack.png",
        icon_size=64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/num_1.png",
        icon_size=32,
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12}
      }
    }
    data.raw.recipe["alt1-production-science-pack"].icons =
    {
      {
        icon = "__omnilib__/graphics/icons/science-pack/production-science-pack.png",
        icon_size=64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/num_2.png",
        icon_size=32,
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12}
      }
    }
    data.raw.recipe["alt2-production-science-pack"].icons =
    {
      {
        icon = "__omnilib__/graphics/icons/science-pack/production-science-pack.png",
        icon_size=64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/num_3.png",
        icon_size=32,
        tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5},
        scale = 0.32,
        shift = {-12, -12}
      }
    }
    data.raw.recipe["facility-production-science-pack"].icons =
    {
      {
        icon = "__omnilib__/graphics/icons/science-pack/production-science-pack.png",
        icon_size=64,
      },
      {
        icon = "__Clowns-Science__/graphics/icons/facility.png",
        icon_size=32,
        scale = 0.32,
        shift = {-12, -12}
      }
    }
  end


  if not mods["omnimatter"] and mods["bobtech"] and settings.startup["bobmods-tech-colorupdate"].value then
    --science pack 1
    for _,rec in pairs({"facility-science-pack-1","alt1-science-pack-1","alt2-science-pack-1","automation-science-pack"}) do
      --find old icon and replace it with the new one
      local search=data.raw.recipe[rec]
      if search and search.icons then
        for i,ico in pairs(search.icons) do
          if ico.icon == "__base__/graphics/icons/automation-science-pack.png" then
            ico.icon = "__base__/graphics/icons/utility-science-pack.png"
            break
          end
        end
      elseif search and search.icon then
        search.icon=nil
        search.icon_size=nil
        search.icons={{icon = "__base__/graphics/icons/utility-science-pack.png",icon_size=64}}
      end
    end
    --science pack 2
    for _,rec in pairs({"facility-science-pack-2","alt1-science-pack-2","alt2-science-pack-2","logistic-science-pack"}) do
      --find old icon and replace it with the new one
      local search=data.raw.recipe[rec]
      if search and search.icons then
        for i,ico in pairs(search.icons) do
          if ico.icon == "__base__/graphics/icons/logistic-science-pack.png" then
            ico.icon = "__base__/graphics/icons/automation-science-pack.png"
            break
          end
        end
      elseif search and search.icon then
        search.icon=nil
        search.icon_size=nil
        search.icons={{icon = "__base__/graphics/icons/automation-science-pack.png",icon_size=64}}
      end
    end
    --high-tech
    for _,rec in pairs({"facility-high-tech-science-pack","alt1-high-tech-science-pack","alt2-high-tech-science-pack","utility-science-pack"}) do
      --find old icon and replace it with the new one
      local search=data.raw.recipe[rec]
      if search and search.icons then
        for i,ico in pairs(search.icons) do
          if ico.icon == "__base__/graphics/icons/utility-science-pack.png" then
            ico.icon = "__base__/graphics/icons/logistic-science-pack.png"
            break
          end
        end
      elseif search and search.icon then
        search.icon=nil
        search.icon_size=nil
        search.icons={{icon = "__base__/graphics/icons/logistic-science-pack.png",icon_size=64}}
      end
    end
  end
end