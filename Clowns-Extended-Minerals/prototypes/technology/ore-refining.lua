local crushing_eff, flotation_eff, leeching_eff, refining_eff = {}, {}, {}, {}
for i=1,9,1 do --clowns-ore count, excluding blendded
  --add static recipe unlocks
  crushing_eff[#crushing_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-crushed"}
  crushing_eff[#crushing_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-crushed-processing"}
  flotation_eff[#flotation_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-chunk"}
  flotation_eff[#flotation_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-chunk-processing"}
  leeching_eff[#leeching_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-crystal"}
  leeching_eff[#leeching_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-crystal-processing"}
  refining_eff[#refining_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-pure"}
  refining_eff[#refining_eff+1] = {type = "unlock-recipe",recipe = "clowns-ore"..i.."-pure-processing"}
  --add dynamic recipe unlocks
  if data.raw.recipe["clowns-crushed-mix"..i.."-processing"] then
    crushing_eff[#crushing_eff+1] = {type = "unlock-recipe",recipe = "clowns-crushed-mix"..i.."-processing"}
  end
  if data.raw.recipe["clowns-chunk-mix"..i.."-processing"] then
    flotation_eff[#flotation_eff+1] = {type = "unlock-recipe",recipe = "clowns-chunk-mix"..i.."-processing"}
  end
  if data.raw.recipe["clowns-crystal-mix"..i.."-processing"] then
    leeching_eff[#leeching_eff+1] = {type = "unlock-recipe",recipe = "clowns-crystal-mix"..i.."-processing"}
  end
  if data.raw.recipe["clowns-pure-mix"..i.."-processing"] then
    refining_eff[#refining_eff+1] = {type = "unlock-recipe",recipe = "clowns-pure-mix"..i.."-processing"}
  end
end
data:extend(
{
	{
		type = "technology",
		name = "clowns-ore-crushing",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/mechanical-refining.png",
		effects = crushing_eff,
		prerequisites = {"ore-crushing"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
			},
			time = 15,
			count = 20
		},
		order = "c-b"
	},
	{
		type = "technology",
		name = "clowns-ore-floatation",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/hydro-refining.png",
		effects = flotation_eff,
		prerequisites = {"ore-floatation", "clowns-ore-crushing"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
			},
			time = 30,
			count = 80
		},
		order = "c-b"
	},
	{
		type = "technology",
		name = "clowns-ore-leaching",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/chemical-refining.png",
		effects = leeching_eff,
		prerequisites = {"ore-leaching", "clowns-ore-floatation"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30,
			count = 80
		},
		order = "c-b"
	},
	{
		type = "technology",
		name = "clowns-ore-refining",
		icon_size = 128,
		icon = "__angelsrefining__/graphics/technology/thermal-refining.png",
		effects = refining_eff,
		prerequisites = {"ore-refining", "clowns-ore-leaching"},
		unit =
		{
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
			},
			time = 30,
			count = 80
		},
		order = "c-b"
	}
}
)
if not clowns.special_vanilla then --add in the mixed sorting recipes to the techs
  table.insert(data.raw.technology["clowns-ore-crushing"].effects,{type = "unlock-recipe",recipe = "manganese-pure-processing"})
  table.insert(data.raw.technology["clowns-ore-crushing"].effects,{type = "unlock-recipe",recipe = "phosphorus-pure-processing"})
  table.insert(data.raw.technology["clowns-ore-leaching"].effects,{type = "unlock-recipe",recipe = "chrome-pure-processing"})
  table.insert(data.raw.technology["clowns-ore-floatation"].effects,{type = "unlock-recipe",recipe = "magnesium-pure-processing"})
  table.insert(data.raw.technology["clowns-ore-refining"].effects,{type = "unlock-recipe",recipe = "osmium-pure-processing"})
  if mods["Clowns-AngelBob-Nuclear"] and not ((mods["angelsindustries"] and angelsmods.industries.overhaul) or (mods["bobpower"] and mods["bobplates"])) then
    --add in thorium
    table.insert(data.raw.technology["clowns-ore-leaching"].effects,{type = "unlock-recipe",recipe = "thorium-pure-processing"})
  end
end
--add in advanced ore stuffs
if not special_vanilla then
  for i=11,15,1 do
    table.insert(data.raw.technology["ore-advanced-crushing"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-crushed"})
    table.insert(data.raw.technology["ore-advanced-crushing"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-crushed-processing"})
    table.insert(data.raw.technology["ore-powderizer"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-powder"})
    table.insert(data.raw.technology["ore-powderizer"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-powder-processing"})
    table.insert(data.raw.technology["ore-advanced-floatation"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-sludge"})
    table.insert(data.raw.technology["ore-advanced-floatation"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-dust"})
    table.insert(data.raw.technology["ore-advanced-floatation"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-dust-processing"})
    table.insert(data.raw.technology["ore-electro-whinning-cell"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-solution"})
    table.insert(data.raw.technology["ore-electro-whinning-cell"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-anode-sludge-filtering"})
    table.insert(data.raw.technology["ore-electro-whinning-cell"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-anode-sludge"})
    table.insert(data.raw.technology["ore-electro-whinning-cell"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-crystal"})
    table.insert(data.raw.technology["ore-electro-whinning-cell"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-crystal-processing"})
  end
else --special vanilla case
  --table.insert(data.raw.technology["ore-advanced-crushing"].effects,{type = "unlock-recipe",recipe = "clownsore"..i.."-crushed"})
end