local OV = angelsmods.functions.OV

clowns.functions.replace_ing = function(name,old,new,kind)
  --check if correct, fail otherwise
  local continue = true
  if not (kind == "res" or kind == "ing") then
    continue=false
  end
  if not type(name) == "string" then
    continue=false
  else
    list=data.raw.recipe[name].kind
  end
  if not type(old) == "string" then
    log("string for old please")
    continue=false
  end
  if not type(new) == "string" then
    log("string for new please")
    continue=false
  end
  if continue == true  and list then
    for i, item in pairs(list) do
      if item.name then
        if item.name == old then
          item.name = new
        elseif type(item[1]) == "string" and item[1] == old then
          item[1] = new
        end
      end
    end
  end
  return list
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
  local list=data.raw.recipe[name].kind
  index=""
  for i,ing in pairs(list) do
    if ing.name == to_rem or (ing.name and ing[1] == to_rem) then
      index=i
    end
  end
  table.remove(list,index) -- remove after loop, not while in it.
end