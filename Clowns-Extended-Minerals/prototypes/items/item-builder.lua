--ore table
local ore_table={"clowns-ore1","clowns-ore2","clowns-ore3","clowns-ore4","clowns-ore5","clowns-ore6","clowns-ore7"--[[,"clowns-ore8", --"clowns-ore9"]]}

for _, name in pairs(ore_table) do
data:extend(
  {
    --Crushed
    {
      type = "item",
      name = ""..name.."-crushed",
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crushed.png", 
      icon_size = 32,
      subgroup = "clowns-ore-processing-a",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Chunk
    {
      type = "item",
      name = ""..name.."-chunk",
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/chunk.png",
      icon_size = 32,
      subgroup = "clowns-ore-processing-b",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Crystal
    {
      type = "item",
      name = ""..name.."-crystal",
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/crystal.png",
      icon_size = 32,
      subgroup = "clowns-ore-processing-c",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Pure
    {
      type = "item",
      name = ""..name.."-pure",
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/pure.png",
      icon_size = 32,
      subgroup = "clowns-ore-processing-d",
      order = "a["..name.."]",
      stack_size = 200
    },
    --Ore
    {
      type = "item",
      name = name,
      icon = "__Clowns-Extended-Minerals__/graphics/icons/"..name.."/ore.png",
      icon_size = 32,
      subgroup = "angels-ores",
      order = "a["..name.."]",
      stack_size = 200
    }
  }
)
end