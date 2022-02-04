minetest.register_craftitem("bt_core:pistol", {
    description = "Pistol",
    inventory_image = "bt_core_pistol.png"
})

minetest.register_craftitem("bt_core:pistol_with_lead_bullet", {
    description = "Loaded Pistol",
    inventory_image = "bt_core_pistol.png"
})

minetest.register_craft({
	output = "bt_core:pistol_with_lead_bullet",
                  type = "shapeless",
	recipe = {
		{"", "bt_core:lead_bullet", ""},
		{"", "bt_core:pistol", ""},
	}
})