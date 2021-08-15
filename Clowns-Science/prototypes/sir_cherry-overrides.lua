if mods["omnienergy"] and mods["omnichem"] then
   omni.lib.add_recipe_ingredient("automation-science-pack-alt1", "engine-unit")
   omni.lib.add_recipe_ingredient("automation-science-pack-alt1", "omnicium-iron-alloy")
   omni.lib.add_recipe_ingredient("automation-science-pack-alt1", "omnicium-steel-gear-box")
   if mods["aai-industry"] then
      omni.lib.add_recipe_ingredient("automation-science-pack-alt2", "burner-lab")
      omni.lib.add_recipe_ingredient("automation-science-pack-alt2", "electric-motor")
   end
   if mods["KaoExtended"] then
      omni.lib.add_recipe_ingredient("automation-science-pack-alt2", "advsci-component-3")
      omni.lib.add_recipe_ingredient("logistic-science-pack-alt1", "simple-io")
   end
   omni.lib.add_recipe_ingredient("logistic-science-pack-alt1", "electric-engine-unit")
   omni.lib.add_recipe_ingredient("logistic-science-pack-alt1", "steam-engine")
elseif mods["omnimatter"] then
  omni.lib.add_recipe_ingredient("automation-science-pack-alt1", "omnicium-plate")
  if mods["aai-industry"] then
     omni.lib.add_recipe_ingredient("automation-science-pack-alt2", "burner-lab")
  end
  if mods["KaoExtended"] then
     omni.lib.add_recipe_ingredient("automation-science-pack-alt2", "advsci-component-3")
     omni.lib.add_recipe_ingredient("logistic-science-pack-alt1", "simple-io")
  end
end
