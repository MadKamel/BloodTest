minetest.register_biome({
	name = "forest",
	node_top = "bt_core:dirt_with_grass",
	depth_top = 1,
	node_filler = "bt_core:dirt",
	depth_filler = 2,
	node_riverbed = "bt_core:stone",
	depth_riverbed = 3,
	y_max = 31000,
	y_min = 5,
	heat_point = 30,
	humidity_point = 50,
})

minetest.register_biome({
	name = "tundra",
	node_dust = "bt_core:snow",
	node_top = "bt_core:dirt_with_snow",
	depth_top = 1,
	node_filler = "bt_core:dirt",
	depth_filler = 2,
	node_riverbed = "bt_core:stone",
	depth_riverbed = 3,
	y_max = 31000,
	y_min = 5,
	heat_point = 20,
	humidity_point = 60,
})

minetest.register_biome({
	name = "beach",
	node_top = "bt_core:sand",
	depth_top = 1,
	node_filler = "bt_core:sandstone",
	depth_filler = 2,
	node_riverbed = "bt_core:sandstone",
	depth_riverbed = 3,
	y_max = 5,
	y_min = -31000,
	heat_point = 30,
	humidity_point = 50,
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "bt_core:dirt_with_grass",
	sidelen = 4,
	fill_ratio = 0.01,
	biomes = {"forest"},
	height = 2,
	y_min = 5,
	y_max = 31000,
	place_offset_y = 0,
	schematic = ("plum_tree.mts"),
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random",
})

minetest.register_decoration({
	deco_type = "schematic",
	place_on = "bt_core:dirt_with_grass",
	sidelen = 4,
	fill_ratio = 0.005,
	biomes = {"forest"},
	height = 2,
	y_min = 5,
	y_max = 31000,
	place_offset_y = 0,
	schematic = ("peach_tree.mts"),
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random",
})

minetest.register_decoration({
	decoration = "bt_core:grass",
	deco_type = "simple",
	place_on = "bt_core:dirt_with_grass",
	sidelen = 16,
	fill_ratio = 0.8,
	biomes = {"forest"},
		noise_params = {
		offset = 0.01,
		scale = 0.008,
		spread = {x = 250, y = 250, z = 250},
		seed = 1,
		octaves = 3,
		persist = 0.64
	},
	y_min = 1,
	y_max = 80,
})

--ores

minetest.register_ore({
	ore_type = "scatter",
	ore = "bt_core:stone_with_lead",
	wherein = "bt_core:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 3,
	clust_size = 3,
	y_min = -31000,
	y_max = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "bt_core:stone_with_cobalt",
	wherein = "bt_core:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 6,
	clust_size = 3,
	y_min = -31000,
	y_max = 31000,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "bt_core:dirt_with_flint",
	wherein = "bt_core:dirt",
	clust_scarcity = 5*5*5,
	clust_num_ores = 3,
	clust_size = 3,
	y_min = -31000,
	y_max = 31000,
})