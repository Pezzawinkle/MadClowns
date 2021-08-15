if not mods["angelsrefining"] then --use angels function if available, if not, use this version
  angelsmods={}
  angelsmods.functions={}
 --taken directly from angels refining library, tweaked to run independantly, original author of code is Lovely_santa

 local function unify_tint(tint)
  -- allows tints to be defined as {255, 255, 255, 255}
  -- meaning doesn't need keys rgba (but assumes that order)
  -- doesn't need to be in range 0..1, but up to 255 as well
    if tint then
      local unified_tint = {}

      unified_tint.r = tint.r or tint[1] or 0
      unified_tint.g = tint.g or tint[2] or 0
      unified_tint.b = tint.b or tint[3] or 0

      if unified_tint.r > 1 or unified_tint.g > 1 or unified_tint.b > 1 then
        unified_tint.r = (unified_tint.r <= 255 and unified_tint.r or 255) / 255
        unified_tint.g = (unified_tint.g <= 255 and unified_tint.g or 255) / 255
        unified_tint.b = (unified_tint.b <= 255 and unified_tint.b or 255) / 255
      end

      unified_tint.a = tint.a or tint[4] or 1
      unified_tint.a = unified_tint.a > 1 and unified_tint.a / 255 or unified_tint.a

      return unified_tint
    else
      return nil
    end
  end

  function angelsmods.functions.add_number_icon_layer(icon_layers, number_tier, number_tint, outline_tint)
    -- adds a new layer to icon_layers to show the tier number (with a color)
    -- outline_tint is optional
    local icon_size_scale = 1
    local icon_size_shift = {0, 0}

    icon_layers = icon_layers or {}
    if #icon_layers == 0 then
      -- if the icon_layer is empty, we make sure it will be a full sized number after usage in the recipe functions
      icon_size_scale = 32 / 10.24
      icon_size_shift = {11.5 * icon_size_scale, 12 * icon_size_scale}
    elseif type(icon_layers)=="string" then --to deal with errors passing the void icon as a string
      icon_layers={{icon=icon_layers, icon_size = 32}}
    elseif icon_layers[1].scale then
      icon_size_scale = (icon_layers[1].icon_size or 32) * (icon_layers[1].scale) / 32
    end

    return angelsmods.functions.add_icon_layer(icon_layers, {
      {
        icon = "__Clowns-Science__/graphics/icons/numerals/num-"..number_tier.."-outline.png",
        icon_size = 64, icon_mipmaps = 2,
        tint = unify_tint(outline_tint or {0, 0, 0, 1}),
        scale = 0.5 * icon_size_scale,
        shift = icon_size_shift
      },
      {
        icon = "__Clowns-Science__/graphics/icons/numerals/num-"..number_tier..".png",
        icon_size = 64, icon_mipmaps = 2,
        tint = unify_tint(number_tint),
        scale = 0.5 * icon_size_scale,
        shift = icon_size_shift
      }
    })
  end

  function angelsmods.functions.add_icon_layer(icon_layers, layers_to_add, layer_shift, layer_scale)
    local icon_layers = util.table.deepcopy(icon_layers)
  
    if layers_to_add[1] then
      for _, layer_to_add in pairs(layers_to_add) do
        table.insert(icon_layers,
          {
            icon = layer_to_add.icon,
            icon_size = layer_to_add.icon_size,
            icon_mipmaps = layer_to_add.icon_mipmaps,
            tint = layer_to_add.tint,
            scale = (layer_to_add.scale or 1) * (layer_scale or 1),
            shift =
            {
              (layer_to_add.shift and (layer_to_add.shift[1] or layer_to_add.shift.x) or 0) * (layer_scale or 1) + (layer_shift and (layer_shift[1] or layer_shift.x) or 0),
              (layer_to_add.shift and (layer_to_add.shift[2] or layer_to_add.shift.y) or 0) * (layer_scale or 1) + (layer_shift and (layer_shift[2] or layer_shift.y) or 0),
            }
          }
        )
      end
    else
      table.insert(icon_layers,
        {
          icon = layers_to_add.icon,
          icon_size = layers_to_add.icon_size,
          icon_mipmaps = layers_to_add.icon_mipmaps,
          tint = layers_to_add.tint,
          scale = (layers_to_add.scale or 1) * (layer_scale or 1),
          shift =
          {
              (layers_to_add.shift and (layers_to_add.shift[1] or layers_to_add.shift.x) or 0) * (layer_scale or 1) + (layer_shift and (layer_shift[1] or layer_shift.x) or 0),
              (layers_to_add.shift and (layers_to_add.shift[2] or layers_to_add.shift.y) or 0) * (layer_scale or 1) + (layer_shift and (layer_shift[2] or layer_shift.y) or 0),
          }
        }
      )
    end
  
    return icon_layers
  end
  --a cut down version of the original by arch666angel
  function angelsmods.functions.allow_productivity(recipe_name)
    if data.raw.recipe[recipe_name] then
      for i, module in pairs(data.raw.module) do
        if module.limitation and module.effect.productivity then
          table.insert(module.limitation, recipe_name)
        end
      end
    end
  end
end
--custom function
function clowns.functions.get_pack_name(name) -- map angels cores
  if clowns.triggers.angels_tech then
    local core_match = {
      ["automation"]="datacore-basic",
      ["logistic"]="datacore-logistic-1",
      ["chemical"]="datacore-energy-1",
      ["military"]="datacore-war-1",
      ["production"]="datacore-processing-1",
      ["utility"]="datacore-enhance-1"
    }
    return core_match.name
  else
    return name.."-science-pack"
  end
end