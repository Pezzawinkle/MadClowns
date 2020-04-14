if mods["omnienergy"] and mods["omnichem"] then
   omni.lib.add_recipe_ingredient("alt1-science-pack-1", "engine-unit")
   omni.lib.add_recipe_ingredient("alt1-science-pack-1", "omnicium-iron-alloy")
   omni.lib.add_recipe_ingredient("alt1-science-pack-1", "omnicium-steel-gear-box")
   if mods["aai-industry"] then
      omni.lib.add_recipe_ingredient("alt2-science-pack-1", "burner-lab")
      omni.lib.add_recipe_ingredient("alt2-science-pack-1", "electric-motor")
   end
   if mods["KaoExtended"] then
      omni.lib.add_recipe_ingredient("alt2-science-pack-1", "advsci-component-3")
      omni.lib.add_recipe_ingredient("alt1-science-pack-2", "simple-io")
   end
   omni.lib.add_recipe_ingredient("alt1-science-pack-2", "electric-engine-unit")
   omni.lib.add_recipe_ingredient("alt1-science-pack-2", "steam-engine")
elseif mods["omnimatter"] then
  omni.lib.add_recipe_ingredient("alt1-science-pack-1", "omnicium-plate")
  if mods["aai-industry"] then
     omni.lib.add_recipe_ingredient("alt2-science-pack-1", "burner-lab")
  end
  if mods["KaoExtended"] then
     omni.lib.add_recipe_ingredient("alt2-science-pack-1", "advsci-component-3")
     omni.lib.add_recipe_ingredient("alt1-science-pack-2", "simple-io")
  end
end
