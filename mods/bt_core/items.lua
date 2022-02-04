minetest.register_craftitem("bt_core:lead_lump", {
    description = "Lead Lump",
    inventory_image = "bt_core_lead_lump.png"
})

minetest.register_craftitem("bt_core:clay_ball", {
    description = "Clay Ball",
    inventory_image = "bt_core_clay_ball.png"
})

minetest.register_craftitem("bt_core:cotton_ball", {
    description = "Cotton Ball",
    inventory_image = "bt_core_cotton_ball.png"
})

minetest.register_craftitem("bt_core:cobalt_lump", {
    description = "Cobalt Lump",
    inventory_image = "bt_core_cobalt_lump.png"
})

minetest.register_craftitem("bt_core:flint", {
    description = "Flint",
    inventory_image = "bt_core_flint.png"
})

minetest.register_craftitem("bt_core:plum", {
    description = "Plum",
    inventory_image = "bt_core_plum.png",
    on_use = function (itemstack, user, pointed_thing)
        return minetest.do_item_eat(1, "bt_core:plum_seed", itemstack, user, pointed_thing)
    end,
})

minetest.register_craftitem("bt_core:stick", {
    description = "Stick",
    inventory_image = "bt_core_stick.png"
})