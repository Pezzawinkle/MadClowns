local oresGrade = { "crushed", "chunk", "crystal", "pure" }

function get_grade_set(recipe)
	if recipe then
		local firstIng = recipe.normal.ingredients[2]
		for _,oreGrade in pairs(oresGrade) do
			if firstIng.name:find(oreGrade) then
				return oreGrade
			end
		end
	end
end

-- ALL FUNCTIONS PAST HERE ADAPTED FROM OMNICRYSTAL

ingrediences_solvation=function(recipe)
	local ing = {}
	ing[#ing+1]={type = "fluid", name = "hydromnic-acid", amount = 120}
	for _, i in pairs(recipe.normal.ingredients) do
		if i.name ~= "catalysator-brown" and i.name ~= "angels-void" and i.name ~= "catalysator-green" and i.name ~= "catalysator-orange" and i.name ~= "slag" then
			ing[#ing+1]=i
		end
	end
	return ing
end

results_solvation=function(recipe)
  local ing = {}
	--ing[#ing+1]={type = "fluid", name = "hydromnic-acid", amount = 120}
	for _, i in pairs(recipe.normal.results) do
		if i.name ~= "slag" and not string.find(i.name,"void") then
			ing[#ing+1]={type = "item", name=i.name.."-omnide-salt", amount = i.amount}
		end
  end
	return ing
end

get_ore_ic_size=function(metal_ore)
	local ic_sz=32
	if data.raw.item[metal_ore].icon_size then
		ic_sz=data.raw.item[metal_ore].icon_size
	elseif data.raw.item[metal_ore].icons and data.raw.item[metal_ore].icons[1].icon_size then
		ic_sz=data.raw.item[metal_ore].icons[1].icon_size
	end
	return ic_sz
end

salt_omnide_icon = function(metal)
	local nr = 5
	--Build the icons table
	local icons = {}
  local icon_2 = "__omnimatter_crystal__/graphics/icons/omnide-salt.png" --if some error occurs
	if data.raw.item[metal] and data.raw.item[metal].icon then
		icon_2=data.raw.item[metal].icon
	elseif data.raw.item[metal].icons and data.raw.item[metal].icons[1].icon then
		icon_2=data.raw.item[metal].icons[1].icon
	end
	icons[#icons+1] = {icon = "__omnimatter_crystal__/graphics/icons/omnide-salt.png",icon_size=32}
	icons[#icons+1] = {
		icon = icon_2,
		icon_size=get_ore_ic_size(metal),
		scale=0.4*32/get_ore_ic_size(metal),
		shift={-10,10}
	}
	return icons
end

shard_icons = function(metal)
	--Build the icons table
	local icons = {}
	local icon_2 = "__omnimatter_crystal__/graphics/icons/omnide-salt.png" --if some error occurs
	if data.raw.item[metal] and data.raw.item[metal].icon then
		icon_2=data.raw.item[metal].icon
	elseif data.raw.item[metal].icons and data.raw.item[metal].icons[1].icon then
		icon_2=data.raw.item[metal].icons[1].icon
	end
	icons[#icons+1] = {icon = "__Clowns-Extended-Minerals__/graphics/icons/omnicrystals/omnine-base.png", icon_size=32,}
	icons[#icons+1] = {
		icon = icon_2,
		icon_size=get_ore_ic_size(metal),
		scale = 0.5*32/get_ore_ic_size(metal),
		shift = {1,2},
	}
	return icons
end

metal_omnide_icon = function(metal)
	--Build the icons table
	local icons = {}
	local icon_2 = "__omnimatter_crystal__/graphics/icons/omnide-salt.png" --if some error occurs
	if data.raw.item[metal] and data.raw.item[metal].icon then
		icon_2=data.raw.item[metal].icon
	elseif data.raw.item[metal].icons and data.raw.item[metal].icons[1].icon then
		icon_2=data.raw.item[metal].icons[1].icon
	end
	icons[#icons+1] = {icon = "__omnimatter_crystal__/graphics/icons/omnide-solution.png",icon_size=32}
	icons[#icons+1] = {icon = icon_2,icon_size=get_ore_ic_size(metal),scale=0.4*32/get_ore_ic_size(metal),shift={-10,10}}
	return icons
end

add_crystal=function(metal,name,recipe, techlvl)
	if data.raw.item[metal] then
		omni.crystal.metals[#omni.crystal.metals+1]=data.raw.item[metal]
		crystalines={}
		local crystal =   {
			type = "item",
			name = metal.."-crystal",
			localised_name = {"item-name.crystal", name},
			localised_description = {"recipe-description.pure_extraction", name},
			icons={{icon = "__Clowns-Extended-Minerals__/graphics/icons/omnicrystals/"..metal.."-crystal.png",icon_size = 32,}},
			subgroup = "crystallization",
			fuel_category = "crystal",
			fuel_value = "35MJ",
			stack_size = 500
		}
		crystalines[#crystalines+1]=crystal

		local ic = shard_icons(metal)
		local shard =   {
			type = "item",
			name = metal.."-shard",
			localised_name = {"item-name.shard", name},
			localised_description = {"recipe-description.pure_extraction", name},
			icons = ic,
			subgroup = "crystallization",
			stack_size = 200
		}
		crystalines[#crystalines+1]=shard

		ic = metal_omnide_icon(metal)
		local omnide = {
			type = "fluid",
			name = metal.."-omnide-solution",
			icon_size = 32,
			localised_name = {"fluid-name.omnide-solution", name},
			icons = ic,
			icon_size=32,
			default_temperature = 25,
			heat_capacity = "0.1kJ",
			base_color = {r = 1, g = 1, b = 1},
			flow_color = {r = 1, g = 1, b = 1},
			max_temperature = 100,
			pressure_to_speed_ratio = 0.4,
			flow_to_energy_ratio = 0.59,
    }
		crystalines[#crystalines+1]=omnide

		--omni.lib.create_barrel(omnide)

		ic = salt_omnide_icon(metal)
		local salt = {
			type = "item",
			name = metal.."-omnide-salt",
			localised_name = {"item-name.omnide-salt", name},
			icons = ic,
			subgroup = "crystallization",
			stack_size = 200
		}
		crystalines[#crystalines+1]=salt

		--ing[#ing+1]={type = fluid, name = metal.."-omnide-solution", amount = 120}

		local crystalization = {
			type = "recipe",
			name = metal.."-crystal",
			localised_name = {"recipe-name.crystallization", name},
			localised_description = {"recipe-description.pure_extraction", name},
			category = "omniplant",
			subgroup = "crystallization",
			enabled = false,
			ingredients = {
			{type = "item", name = "omnine-shards", amount = 1},
			{type = "fluid", name = metal.."-omnide-solution", amount = 120},
			{type = "fluid", name = "omnisludge", amount = 120},
			},
			order = "a[angelsore1-crushed]",
			icons = {{icon="__Clowns-Extended-Minerals__/graphics/icons/omnicrystals/"..metal.."-crystal.png",icon_size = 32,}},
			results = {{type = "item", name = metal.."-crystal", amount=10}},
			energy_required = 2.5,
			}
		crystalines[#crystalines+1]=crystalization

		ic = metal_omnide_icon(metal)
		local solvation = {
			type = "recipe",
			name = metal.."-omnide-solution",
			localised_name = {"recipe-name.ore-solvation", name},
			localised_description = {"recipe-description.pure_extraction", name},
			category = "omniplant",
			subgroup = "solvation",
			enabled = false,
			ingredients = {
			{type = "item", name = metal.."-omnide-salt", amount = 1},
			{type = "fluid", name = "water", amount = 100},
			},
			order = "a[angelsore1-crushed]",
			icons = ic,
			results = {{type = "fluid", name = metal.."-omnide-solution", amount=120}},
			energy_required = 2.5,
			}
		crystalines[#crystalines+1]=solvation

		local icon_2 = "__omnimatter_crystal__/graphics/icons/omnide-salt.png" --if some error occurs
		if data.raw.item[metal] and data.raw.item[metal].icon then
			icon_2=data.raw.item[metal].icon
		elseif data.raw.item[metal].icons and data.raw.item[metal].icons[1].icon then
			icon_2=data.raw.item[metal].icons[1].icon
		end
		local omnitraction = {
			type = "recipe",
			name = metal.."-crystal-omnitraction",
			localised_name = {"item-name."..metal},
			localised_description = {"recipe-description.pure_extraction", name},
			category = "omnite-extraction",
			subgroup = "traction",
			enabled = false,
			ingredients = {
			{type = "item", name = metal.."-crystal", amount=3}
			},
			order = "a[angelsore1-crushed]",
			icons = {{icon=icon_2,	icon_size = get_ore_ic_size(metal),}},
			results = {{type = "item", name = metal, amount=4}},
			energy_required = 2.5,
			}
		crystalines[#crystalines+1]=omnitraction
		if not techlvl then
			techlvl = 1
		end
		data:extend(crystalines)
		for _,each in pairs({"-crystal", "-omnide-solution", "-crystal-omnitraction"}) do
			omni.lib.add_unlock_recipe("omnitech-crystallology-"..techlvl, metal..each)
		end
	end
end
