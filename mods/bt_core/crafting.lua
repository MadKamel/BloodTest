
minetest.register_craft({
	output = "bt_core:raw_clay_bowl 9",
	recipe = {
		{"bt_core:raw_clay", "", "bt_core:raw_clay"},
		{"", "bt_core:raw_clay", ""},
	}
})

minetest.register_craft({
	output = "bt_core:stick 5",
	recipe = {
		{"", "bt_core:plum_planks", ""},
		{"", "bt_core:plum_planks", ""},
	}
})

minetest.register_craft({
	output = "bt_core:flint_axe",
	recipe = {
		{"", "bt_core:flint", ""},
		{"", "bt_core:grass", ""},
		{"", "bt_core:stick", ""},
	}
})

minetest.register_craft({
	output = "bt_core:plum_planks 2",
	recipe = {
		{"bt_core:plum_log"},
	}
})