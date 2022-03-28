for _,tech in pairs(clowns.tables.tech_unlock) do
	--double check base pack's tech unlock
	if data.raw.recipe[tech[1] .."-science-pack"] then
    local unlocked = clowns.functions.recipe_unlocked(tech[1])
    --log(serpent.block(data.raw.recipe[tech[1] .."-science-pack"]))
		if unlocked == false then
			if data.raw["technology"][tech[1] .."-science-pack"] then
				table.insert(data.raw["technology"][tech[1] .."-science-pack"].effects,{type = "unlock-recipe", recipe = tech[1].."-science-pack-alt"..tech[2]})
			else
				log("tech name not found")
        unlocked = true
			end
		else
			log(tech[1].." enabled from start")
      unlocked = true
		end
    data.raw.recipe[tech[1].."-science-pack-alt"..tech[2]].enabled = unlocked --re-sync the recipe
	end
end