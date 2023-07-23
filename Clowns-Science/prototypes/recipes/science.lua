local icons = clowns.tables.science_icons
local ctrig = clowns.triggers
--dynamic recipe building
local recipe_list = {}
local rec_names = {}
clowns.tables.tech_unlock = {}
if not ctrig.sct then
  for time,name in pairs({"automation","logistic","military","chemical","production","utility"}) do
    for i = 1,4 do
      --get params
      local vals = clowns.tables.pack_costs[name.."_"..i]
      local result = clowns.functions.get_pack_name(name)
      local subgroup = data.raw["item-subgroup"][name.."-science-pack"] and name.."-science-pack" or "advanced-science"
      local tech_unlocked = clowns.functions.recipe_unlocked(name)
      --general subgroup
      if vals then --check it is in the table first
        table.insert(recipe_list,{
          type = "recipe",
          name = name.."-science-pack-alt"..i,
          enabled = tech_unlocked,
          category = "crafting",
          energy_required = (time + 4) * (vals.result_count or 1),
          subgroup = name.."-science-pack",
          icons = angelsmods.functions.add_number_icon_layer({icons[name]}, i+1 , clowns.icon_tint),
          ingredients = vals.ingredients,
          results = {{type = "item", name = result, amount = vals.result_count or 1}},
          order = "a-b[alt-"..i.."]",
        })
        table.insert(rec_names,name.."-science-pack-alt"..i)
        table.insert(clowns.tables.tech_unlock, {name,i})
      else
        --log("tech name:"..name.."-science-pack-alt"..i.." not listed")
      end
    end
  end
  data:extend(recipe_list)
  --allow productivity.
  for _,name in pairs(rec_names) do
    angelsmods.functions.allow_productivity(name)
  end
end