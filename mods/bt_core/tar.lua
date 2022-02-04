minetest.register_node("bt_core:tar_source", {
	description = "Tar",
	drawtype = "liquid",
	tiles = {"bt_core_tar_source.png"},
	paramtype = "light",
	walkable = false,
	pointable = false,
	buildable_to = true,
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "bt_core:tar_flowing",
	liquid_alternative_source = "bt_core:tar_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 100, r = 120, g = 105, b = 196},
	groups = { disable_jump = 1 }
})

minetest.register_node("bt_core:tar_flowing", {
	description = "Tar",
	drawtype = "flowingliquid",
	tiles = {"bt_core_tar_flowing.png"},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	buildable_to = true,
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "bt_core:tar_flowing",
	liquid_alternative_source = "bt_core:tar_source",
	liquid_renewable = false,
	liquid_viscosity = 1,
	post_effect_color = {a = 100, r = 120, g = 105, b = 196},
	groups = { disable_jump = 1 }
})