local OV = mods["angelsrefining"] and angelsmods.functions.OV or clowns.functions

local function fl_or_s(name)
  local out=""
  if data.raw.item[name] then
    out= "item"
  elseif data.raw.fluid[name] then
    out= "fluid"
  else
    out= "research-progress"
  end
  return out
end
clowns.functions.replace_ing = function(name,old,new,kind)
  --check if correct, fail otherwise
  local continue = true
  local new_name=""
  local new_amount=0
  if not data.raw.recipe[name] or not (kind == "res" or kind == "ing") or not type(name) == "string" or not type(new_name) == "string" or not type(old) == "string" then
    continue = false
    return --failed
  end  
  if type(new)=="table" then
    new_name = new.name or new[1]
    new_amount = new.amount or new[2]
    new_type = fl_or_s(new_name)
  elseif type(new)=="string" then
    new_name=new
  end
--Check if ingredient or result
  if data.raw.recipe[name] then
    if kind == "res" then
      list = data.raw.recipe[name].results
    elseif kind == "ing" then
      list = data.raw.recipe[name].ingredients
    end
  end

  if continue == true  and list then
    for i, item in pairs(list) do
      local block={type=item.type,name=item.name,amount=item.amount}
      if item.name and item.name == old then
        block.name = new_name
        block.amount = new_amount ~=0 and new_amount or block.amount
        block.type = new_type
      end
    end
  end
  return list
end

clowns.functions.add_to_table = function(name,new,kind)
  --check if correct, fail otherwise
  local continue = true
  --Fix new format
  if not data.raw.recipe[name] or not (kind == "res" or kind == "ing") or not type(name) == "string" or not type(new) == "table" then
    continue = false
    return
  end
  if new[1] and new[2] and not new[type] then --note, format was only available for items
  log{"beep"}
    local newname=new[1]
    local newamount=new[2]
    new={type="item",name=newname,amount=newamount}
  end
  
  if data.raw.recipe[name] then
    if kind == "res" then
      list = data.raw.recipe[name].results
      --[[if not list then
        list = data.raw.recipe[name].normal.results
        if data.raw.recipe[name].expensive.results then
          expensive=data.raw.recipe[name].expensive.results
        end
      end]]
    elseif kind == "ing" then
      list = data.raw.recipe[name].ingredients
      --[[if not list then
        list = data.raw.recipe[name].normal.ingredients
        if data.raw.recipe[name].expensive.ingredients then
          expensive=data.raw.recipe[name].expensive.ingredients
        end
      end]]
    end
  end
  if continue == true  and list then
    list = table.insert(list,new)
  end
  --[[if continue == true and expensive then
    expensive = table.insert(expensive,new)
  end]]
  --return
end

clowns.functions.remove_unlock = function(techname, recipe)
  local tech_top = data.raw.technology[techname].effects
  for i,tech in pairs(tech_top) do
    if tech.recipe == recipe then
      table.remove(tech_top,i)
      break
    end
  end
end

clowns.functions.add_unlock = function(techname, rec)
  local tech_top = data.raw.technology[techname].effects
  local to_add = true
  for i,tech in pairs(tech_top) do
    if tech.recipe == rec then
      to_add=false
      break
    end
  end
  if to_add == true then
    table.insert(tech_top,{type = "unlock-recipe",recipe = rec})
  end
end

clowns.functions.remove_prereq = function(techname,prereq)
  local tech_top = data.raw.technology[techname].prerequisites
  for i, tech in pairs(tech_top) do
    if tech == prereq then
      table.remove(tech_top,i)
      break
    end
  end
end

clowns.functions.add_prereq = function(techname,prereq)
  --sanity check
  local tech_top = data.raw.technology[techname].prerequisites
  local to_add = true
  for i, tech in pairs(tech_top) do
    if tech == prereq then
      to_add=false
      break
    end
  end
  if to_add == true then
    table.insert(tech_top,prereq)
  end
end

--lifted from industries...
clowns.functions.pre_req_repl = function(techname, old_tech, new_tech1, new_tech2) -- tech prerequisite replacements
  OV.remove_prereq(techname, old_tech)
  OV.add_prereq(techname, new_tech1)
  if new_tech2 then
    OV.add_prereq(techname, new_tech2)
  end
end

clowns.functions.remove_res = function(name, to_rem, kind)
  --convert shorthand to long-form
  if kind == "res" then
    kind = "results"
  elseif kind == "ing" then
    kind = "ingredients"
  end
  local temp = data.raw.recipe[name]
  if temp then --terminate if recipe does not exist
    local keys, list = {},{}
    if temp[kind] then
      keys["reg"] = temp[kind]
    end
    --[[if temp.normal and temp.normal[kind] then
      keys["normal"] = temp.normal[kind]
    end
    if temp.expensive and temp.expensive[kind] then
      keys["expensive"] = temp.expensive[kind]
    end]]
    for q,list in pairs(keys) do
      index=""
      if list then
        for i,ing in pairs(list) do
          if ing.name == to_rem or ing[1] == to_rem then
            --index=i
            if q=="reg" then 
              table.remove(temp[kind],i)
            else
              table.remove(temp[q][kind],i)
            end
          end
        end
      end
    end
  end
end