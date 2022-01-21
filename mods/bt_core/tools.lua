local register_node = minetest.register_node


--pickaxes

minetest.register_craftitem("bt_core:admin_pickaxe", {
	description = "Admin Pickaxe",
	inventory_image = "bt_core_admin_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {
				times = {[1] = 0.30, [2] = 0.30, [3] = 0.30},
				uses = 0,
			},
			snappy = {
				times = {[1] = 0.30, [2] = 0.30, [3] = 0.30},
				uses = 0,
			},
			cracky = {
				times = {[1] = 0.30, [2] = 0.30, [3] = 0.30},
				uses = 0,
			},
		},
		damage_groups = {fleshy = 5},
	}
})

--bowls

minetest.register_craftitem("bt_core:raw_clay_bowl", {
	description = "Raw Clay Bowl",
	inventory_image = "bt_core_raw_clay_bowl.png",
})

minetest.register_craftitem("bt_core:baked_clay_bowl", {
	description = "Baked Clay Bowl",
	inventory_image = "bt_core_baked_clay_bowl.png",
})

minetest.register_craftitem("bt_core:baked_clay_bowl_with_potato_soup", {
    description = ("Potato Soup"),
    inventory_image = "bt_core_clay_bowl_with_potato_soup.png",
    on_use = function (itemstack, user, pointed_thing)
        return minetest.do_item_eat(5, "bt_core:baked_clay_bowl", itemstack, user, pointed_thing)
    end,
})

--misc

minetest.register_craftitem("bt_core:flint_axe", {
	description = "Flint Axe",
	inventory_image = "bt_core_flint_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {
				times = {[1] = 1.50, [2] = 1.00, [3] = 0.50},
				uses = 0,
			},
			snappy = {
				times = {[1] = 0.90, [2] = 0.60, [3] = 0.30},
				uses = 0,
			},
			cracky = {
				times = {[1] = 10.00, [2] = 5.00, [3] = 3.00},
				uses = 0,
			},
			choppy = {
				times = {[1] = 3.30, [2] = 2.30, [3] = 1.30},
				uses = 0,
			},
		},
		damage_groups = {fleshy = 5},
	}
})
