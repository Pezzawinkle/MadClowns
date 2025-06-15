data:extend(
{
	{
		type = "item",
		name = "plutonium-239",
		icon = "__Clowns-Nuclear__/graphics/icons/plutonium-239.png",
		icon_size = 32,
		subgroup = "clowns-nuclear-isotopes",
		order = "c",
		stack_size = 50
	},
	{
		type = "ammo",
		name = "thermonuclear-bomb",
		icons =
		{
			{
				icon = "__Clowns-Nuclear__/graphics/icons/thermonuclear-bomb.png",
				shift = {-10, -10},
				icon_size=32
			},
		},
		ammo_category="rocket",
		ammo_type =
		{
			range_modifier = 5,
			cooldown_modifier = 10,
			target_type = "position",
			category = "rocket",
			action =
			{
				type = "direct",
				action_delivery =
				{
				type = "projectile",
				projectile = "thermonuclear-rocket",
				starting_speed = 0.02,
				source_effects =
				{
					type = "create-entity",
					entity_name = "explosion-hit"
				}
				}
			}
		},
		subgroup = "ammo",
		order = "d[rocket-launcher]-c[thermonuclear-bomb]",
		stack_size = 1,
		},
	}
)

if settings.startup["artillery-shells"].value == true then
	data:extend(
	{
		{
			type = "ammo",
			name = "artillery-shell-nuclear",
			ammo_category="artillery-shell",
			icons =
			{
				{
					icon = "__base__/graphics/icons/artillery-shell.png",
					icon_size=64,
				},
				{
					icon = "__base__/graphics/icons/atomic-bomb.png",
					scale = 0.5*0.4,
					shift = {-10, -10},-- -10's
					icon_size=64,
				},
			},
			icon_size = 32,
			ammo_type =
			{
				category = "artillery-shell",
				target_type = "position",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "artillery",
						projectile = "artillery-projectile-nuclear",
						starting_speed = 1,
						direction_deviation = 0,
						range_deviation = 0,
						source_effects =
						{
							type = "create-explosion",
							entity_name = "artillery-cannon-muzzle-flash"
						}
					}
				}
			},
			subgroup = "ammo",
			order = "e[artillery-shell]-b[nuclear]",
			stack_size = 3
		},

		{
			type = "ammo",
			name = "artillery-shell-thermonuclear",
			ammo_category="artillery-shell",
			icons =
			{
				{
					icon = "__base__/graphics/icons/artillery-shell.png",
					icon_size=64,
				},
				{
					icon = "__Clowns-Nuclear__/graphics/icons/thermonuclear-bomb.png",
					scale = 0.4,
					shift = {-10, -10},
					icon_size=32,
				},
			},
			icon_size=32,
			ammo_type =
			{
				category = "artillery-shell",
				target_type = "position",
				action =
				{
					type = "direct",
					action_delivery =
					{
						type = "artillery",
						projectile = "artillery-projectile-thermonuclear",
						starting_speed = 1,
						direction_deviation = 0,
						range_deviation = 0,
						source_effects =
						{
							type = "create-explosion",
							entity_name = "artillery-cannon-muzzle-flash"
						}
					}
				}
			},
			subgroup = "ammo",
			order = "e[artillery-shell]-b[thermonuclear]",
			stack_size = 1
		},
	}
	)
end
