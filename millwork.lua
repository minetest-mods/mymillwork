
function mymillwork.register_all(mat, desc, image, groups, craft)

minetest.register_node("mymillwork:crownmould_"..mat, {
	description = desc.." Crown Mould",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,	 0.5,		 0.4375,	 0.5,	 -0.5,	 0.5}, 
			{-0.5,	 0.4375,	 0.375, 	 0.5,	 0.25,	 0.5}, 
			{-0.5,	 0.125,	 	0.375,		 0.5,	 -0.5,	 0.5}, 
			{-0.5,	 -0.0625, 	0.3125,		 0.5,	 -0.5,	 0.5}, 
			{-0.5,	 -0.1875, 	0.25,		 0.5,	 -0.5,	 0.5}, 
			{-0.5,	 -0.4375, 	-0.5,		 0.5,	 -0.5,	 0.5}, 
			{-0.5,	 -0.375, 	-0.4375,	 0.5,	 -0.5,	 -0.25}, 
			{-0.5,	 -0.375,	-0.125,	 	 0.5,	 -0.5,	 0.5}, 
			{-0.5,	 -0.3125,	 0.0625,	 0.5,	 -0.5,	 0.5}, 
			{-0.5,	 -0.25,		 0.1875,	 0.5,	 -0.5,	 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:crownmould_ic_"..mat, {
	description = desc.." Crown Mould IC",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.4375, 0.5, -0.5, 0.5}, 
			{-0.5, 0.4375, 0.375, 0.5, 0.25, 0.5}, 
			{-0.5, 0.125, 0.375, 0.5, -0.5, 0.5}, 
			{-0.5, -0.0625, 0.3125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.1875, 0.25, 0.5, -0.5, 0.5}, 
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.5, -0.375, -0.4375, 0.5, -0.5, -0.25}, 
			{-0.5, -0.375, -0.125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.3125, 0.0625, 0.5, -0.5, 0.5}, 
			{-0.5, -0.25, 0.1875, 0.5, -0.5, 0.5}, 
			{0.4375, 0.5, -0.5, 0.5, -0.5, 0.5}, 
			{0.375, 0.4375, -0.5, 0.5, 0.25, 0.5}, 
			{0.375, 0.125, -0.5, 0.5, -0.5, 0.5}, 
			{0.3125, -0.0625, -0.5, 0.5, -0.5, 0.5}, 
			{0.25, -0.1875, -0.5, 0.5, -0.5, 0.5}, 
			{-0.4375, -0.375, -0.5, -0.25, -0.5, 0.5}, 
			{-0.125, -0.375, -0.5, 0.5, -0.5, 0.5}, 
			{0.0625, -0.3125, -0.5, 0.5, -0.5, 0.5}, 
			{0.1875, -0.25, -0.5, 0.5, -0.5, 0.5}, 
			{-0.25, -0.375, -0.25, 0.5, -0.5, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:crownmould_oc_"..mat, {
	description = desc.." Crown Mould OC",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.5, 0.5, 0.4375, -0.4375, -0.5, 0.5}, 
			{-0.5, 0.4375, 0.375, -0.375, 0.25, 0.5}, 
			{-0.5, 0.125, 0.375, -0.375, -0.5, 0.5}, 
			{-0.5, -0.0625, 0.3125, -0.3125, -0.5, 0.5}, 
			{-0.5, -0.1875, 0.25, -0.25, -0.5, 0.5}, 
			{-0.5, -0.25, 0.1875, -0.1875, -0.5, 0.5}, 
			{-0.5, -0.3125, 0.0625, -0.0625, -0.5, 0.5}, 
			{-0.5, -0.375, -0.125, 0.125, -0.5, 0.5}, 
			{-0.5, -0.375, -0.4375, 0.4375, -0.5, -0.25}, 
			{0.25, -0.375, -0.4375, 0.4375, -0.5, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:crownmould_beam_"..mat, {
	description = desc.." Crown Mould with Beam",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.4375, 0.5, -0.5, 0.5}, 
			{-0.5, 0.4375, 0.375, 0.5, 0.25, 0.5}, 
			{-0.5, 0.125, 0.375, 0.5, -0.5, 0.5}, 
			{-0.5, -0.0625, 0.3125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.1875, 0.25, 0.5, -0.5, 0.5}, 
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.5, -0.375, -0.4375, 0.5, -0.5, -0.25}, 
			{-0.5, -0.375, -0.125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.3125, 0.0625, 0.5, -0.5, 0.5}, 
			{-0.5, -0.25, 0.1875, 0.5, -0.5, 0.5}, 
			{-0.25, -0.25, -0.5, 0.25, -0.5, 0.5}, 
			{-0.25, -0.1875, -0.5, -0.1875, -0.5, 0.5}, 
			{0.1875, -0.1875, -0.5, 0.25, -0.5, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_" ..mat, {
	description = desc.." Column",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875}, 
			{-0.4375, -0.5, -0.3125, 0.4375, 0.5, 0.3125}, 
			{-0.375, -0.5, -0.375, 0.375, 0.5, 0.375}, 
			{-0.3125, -0.5, -0.4375, 0.3125, 0.5, 0.4375}, 
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_base_"..mat, {
	description = desc.." Column Base",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.1875, 0.5, 0.5, 0.1875}, 
			{-0.4375, -0.5, -0.3125, 0.4375, 0.5, 0.3125}, 
			{-0.375, -0.5, -0.375, 0.375, 0.5, 0.375}, 
			{-0.3125, -0.5, -0.4375, 0.3125, 0.5, 0.4375}, 
			{-0.1875, -0.5, -0.5, 0.1875, 0.5, 0.5}, 
			{-0.5, -0.5, -0.5, 0.5, -0.1875, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_half_"..mat, {
	description = desc.." Half Column",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5}, 
			{-0.4375, -0.5, 0.1875, 0.4375, 0.5, 0.5}, 
			{-0.375, -0.5, 0.125, 0.375, 0.5, 0.5}, 
			{-0.3125, -0.5, 0.0625, 0.3125, 0.5, 0.4375}, 
			{-0.1875, -0.5, 0, 0.1875, 0.5, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,0,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_half_base_"..mat, {
	description = desc.." Half Column Base",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, 0.5, 0.5}, 
			{-0.1875, -0.5, 0, 0.1875, 0.5, 0.5}, 
			{-0.4375, -0.5, 0.1875, 0.4375, 0.5, 0.5}, 
			{-0.3125, -0.5, 0.0625, 0.3125, 0.5, 0.5}, 
			{-0.375, -0.5, 0.125, 0.375, 0.5, 0.5}, 
			{-0.5, -0.5, -0.0625, 0.5, -0.1875, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.0625,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_half_wbeam_"..mat, {
	description = desc.." Half Column Base With Beam",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0.5, 0.3125, 0.5, -0.5, 0.5}, 
			{-0.4375, 0.5, 0.1875, 0.4375, -0.5, 0.5}, 
			{-0.375, 0.5, 0.125, 0.375, -0.5, 0.5}, 
			{-0.3125, 0.5, 0.0625, 0.3125, -0.5, 0.4375}, 
			{-0.1875, 0.5, 0, 0.1875, -0.5, 0.5}, 
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.25, -0.25, -0.5, 0.25, -0.5, 0.5}, 
			{-0.25, -0.1875, -0.5, -0.1875, -0.5, 0.5}, 
			{0.1875, -0.1875, -0.5, 0.25, -0.5, 0.5}, 
			{-0.5, -0.375, -0.4375, 0.5, -0.5, -0.25}, 
			{-0.5, -0.375, -0.125, 0.5, -0.5, 0.5}, 
			{-0.5, -0.3125, 0.0625, 0.5, -0.5, 0.5}, 
			{-0.5, -0.25, 0.1875, 0.5, -0.5, 0.5}, 
			{-0.5, -0.1875, 0.25, 0.5, -0.5, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_quarter_"..mat, {
	description = desc.." Quarter Column",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0, 0.5, 0.5}, 
			{-0.5, -0.5, 0, -0.3125, 0.5, 0.5}, 
			{-0.5, -0.5, 0.1875, -0.0625, 0.5, 0.5}, 
			{-0.5, -0.5, 0.0625, -0.1875, 0.5, 0.5}, 
			{-0.5, -0.5, 0.125, -0.125, 0.5, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,0,0,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_quarter_base_"..mat, {
	description = desc.." Quarter Column Base",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0, 0.5, 0.5}, 
			{-0.5, -0.5, 0, -0.3125, 0.5, 0.5}, 
			{-0.5, -0.5, 0.1875, -0.0625, 0.5, 0.5}, 
			{-0.5, -0.5, 0.0625, -0.1875, 0.5, 0.5}, 
			{-0.5, -0.5, 0.125, -0.125, 0.5, 0.5}, 
			{-0.5, -0.5, -0.0625, 0.0625, -0.1875, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_quarter_wbase_"..mat, {
	description = desc.." Quarter Column Base Baseboard",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0, 0.5, 0.5}, 
			{-0.5, -0.5, 0, -0.3125, 0.5, 0.5}, 
			{-0.5, -0.5, 0.1875, -0.0625, 0.5, 0.5}, 
			{-0.5, -0.5, 0.0625, -0.1875, 0.5, 0.5}, 
			{-0.5, -0.5, 0.125, -0.125, 0.5, 0.5}, 
			{-0.5, -0.5, -0.0625, 0.0625, -0.1875, 0.5}, 
			{-0.5, -0.5, 0.4375, 0.5, -0.1875, 0.5}, 
			{-0.4375, -0.5, -0.5, -0.5, -0.1875, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:column_quarter_fancybase_"..mat, {
	description = desc.." Quarter Column Base Fancy Baseboard",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0, 0.5, 0.5}, 
			{-0.5, -0.5, 0, -0.3125, 0.5, 0.5}, 
			{-0.5, -0.5, 0.1875, -0.0625, 0.5, 0.5}, 
			{-0.5, -0.5, 0.0625, -0.1875, 0.5, 0.5}, 
			{-0.5, -0.5, 0.125, -0.125, 0.5, 0.5}, 
			{-0.5, -0.5, 0.3125, 0.5, -0.1875, 0.5}, 
			{-0.5, -0.5, 0.4375, 0.5, 0.1875, 0.5}, 
			{-0.5, -0.5, 0.375, 0.5, -0.0625, 0.5}, 
			{-0.5, 0, 0.375, 0.5, 0.125, 0.5}, 
			{-0.5, -0.5, -0.5, -0.4375, 0.1875, 0.5}, 
			{-0.5, -0.5, -0.5, -0.3125, -0.1875, 0.5}, 
			{-0.5, -0.5, -0.5, -0.375, -0.0625, 0.5}, 
			{-0.5, 0, -0.5, -0.375, 0.125, 0.5},  
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:ceiling_" ..mat, {
	description = desc.." Ceiling",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:ceiling_post_"..mat, {
	description = desc.." Ceiling with Post",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.125, 0.5, -0.0625, 0.125, -0.5, 0.0625}, 
			{-0.0625, 0.5, -0.125, 0.0625, -0.5, 0.125}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5}, 
			{-0.125, 0.5, -0.0625, 0.125, -0.5, 0.0625}, 
			{-0.0625, 0.5, -0.125, 0.0625, -0.5, 0.125},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:beam_ceiling_"..mat, {
	description = desc.." Ceiling with Beam",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.1875, -0.5, -0.1875, -0.5, 0.5},
			{-0.1875, -0.25, -0.5, 0.25, -0.5, 0.5},
			{0.1875, -0.1875, -0.5, 0.25, -0.5, 0.5},
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:beam_ceiling_t_"..mat, {
	description = desc.." Ceiling with Beam T",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.1875, -0.5, -0.1875, -0.5, 0.5},
			{-0.1875, -0.25, -0.5, 0.25, -0.5, 0.5}, 
			{0.1875, -0.1875, -0.5, 0.25, -0.5, 0.5}, 
			{-0.5, -0.25, -0.25, 0.5, -0.5, 0.25},
			{-0.5, -0.1875, -0.25, 0.5, -0.5, -0.1875},
			{-0.5, -0.1875, 0.1875, 0.5, -0.5, 0.25},
			{-0.25, -0.1875, -0.25, 0.25, -0.5, 0.1875}, 
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:beam_" ..mat, {
	description = desc.." Beam",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.1875, -0.5, -0.1875, -0.5, 0.5},
			{-0.1875, -0.25, -0.5, 0.25, -0.5, 0.5},
			{0.1875, -0.1875, -0.5, 0.25, -0.5, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.25, -0.1875, -0.5, 0.25, -0.5, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:beam_t_"..mat, {
	description = desc.." Beam T",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.1875, -0.5, -0.1875, -0.5, 0.5},
			{-0.1875, -0.25, -0.5, 0.25, -0.5, 0.5}, 
			{0.1875, -0.1875, -0.5, 0.25, -0.5, 0.5}, 
			{-0.5, -0.25, -0.25, 0.5, -0.5, 0.25},
			{-0.5, -0.1875, -0.25, 0.5, -0.5, -0.1875},
			{-0.5, -0.1875, 0.1875, 0.5, -0.5, 0.25},
			{-0.25, -0.1875, -0.25, 0.25, -0.5, 0.1875},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:base_" ..mat, {
	description = desc.." Baseboard",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, -0.1875, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.3375, 0.5, -0.0875, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:base_ic_"..mat, {
	description = desc.." Baseboard IC",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, 0.5, -0.1875, 0.5}, 
			{-0.4375, -0.5, -0.5, -0.5, -0.1875, 0.5},
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
			{-0.5, -0.5, 0.3375, 0.5, -0.0875, 0.5}, 
			{-0.3375, -0.5, -0.5, -0.5, -0.0875, 0.5}, 
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:base_oc_"..mat, {
	description = desc.." Baseboard OC",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.4375, -0.4375, -0.1875, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.3, -0.3, -0.1875, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:base_fancy_"..mat, {
	description = desc.." Fancy Baseboard",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, -0.1875, 0.5}, 
			{-0.5, -0.5, 0.4375, 0.5, 0.1875, 0.5}, 
			{-0.5, -0.5, 0.375, 0.5, -0.0625, 0.5}, 
			{-0.5, 0, 0.375, 0.5, 0.125, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:base_fancy_ic_"..mat, {
	description = desc.." Fancy Baseboard IC",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, 0.5, -0.1875, 0.5}, 
			{-0.5, -0.5, 0.4375, 0.5, 0.1875, 0.5}, 
			{-0.5, -0.5, 0.375, 0.5, -0.0625, 0.5}, 
			{-0.5, 0, 0.375, 0.5, 0.125, 0.5}, 
			{-0.5, -0.5, -0.5, -0.4375, 0.1875, 0.5}, 
			{-0.5, -0.5, -0.5, -0.3125, -0.1875, 0.5}, 
			{-0.5, -0.5, -0.5, -0.375, -0.0625, 0.5}, 
			{-0.5, 0, -0.5, -0.375, 0.125, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
                {-0.5, -0.5, -0.5, -0.25, 0.25, 0.5},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node("mymillwork:base_fancy_oc_"..mat, {
	description = desc.." Fancy Baseboard OC",
	drawtype = "nodebox",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = {cracky = 1, oddly_breakable_by_hand = 1,not_in_creative_inventory=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.3125, -0.3125, -0.1875, 0.5}, 
			{-0.5, -0.5, 0.4375, -0.4375, 0.1875, 0.5}, 
			{-0.5, -0.5, 0.375, -0.375, -0.0625, 0.5}, 
			{-0.5, 0, 0.375, -0.375, 0.125, 0.5}, 
		}
	},
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.5, -0.25, 0.25, 0.25},
       		}
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

end
