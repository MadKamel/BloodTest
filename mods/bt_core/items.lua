minetest.register_craftitem("bt_core:lead_lump", {
    description = "Lead Lump",
    inventory_image = "bt_core_lead_lump.png"
})

minetest.register_craftitem("bt_core:flint", {
    description = "Flint",
    inventory_image = "bt_core_flint.png"
})

minetest.register_craftitem("bt_core:plum", {
    description = "Plum",
    inventory_image = "bt_core_plum.png",
    on_use = minetest.item_eat(1)
})

minetest.register_craftitem("bt_core:stick", {
    description = "Stick",
    inventory_image = "bt_core_stick.png"
})