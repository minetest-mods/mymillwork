mymillwork.registered = {}

function mymillwork.register_all(mat, desc, image, group, itm)

minetest.register_node(":mymillwork:crownmould_"..mat, {
	description = desc.." Crown Mould",
	drawtype = "mesh",
    mesh = "mymillwork_mach1.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:crownmould_ic_"..mat, {
	description = desc.." Crown Mould IC",
	drawtype = "mesh",
    mesh = "mymillwork_mach2.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        	sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:crownmould_oc_"..mat, {
	description = desc.." Crown Mould OC",
	drawtype = "mesh",
    mesh = "mymillwork_mach3.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:crownmould_beam_"..mat, {
	description = desc.." Crown Mould with Beam",
	drawtype = "mesh",
    mesh = "mymillwork_mach4.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_" ..mat, {
	description = desc.." Column",
	drawtype = "mesh",
    mesh = "mymillwork_mach5.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_base_"..mat, {
	description = desc.." Column Base",
	drawtype = "mesh",
    mesh = "mymillwork_mach6.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_half_"..mat, {
	description = desc.." Half Column",
	drawtype = "mesh",
    mesh = "mymillwork_mach7.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,0,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,0,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_half_base_"..mat, {
	description = desc.." Half Column Base",
	drawtype = "mesh",
    mesh = "mymillwork_mach8.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.0625,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.0625,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_half_wbeam_"..mat, {
	description = desc.." Half Column Base With Beam",
	drawtype = "mesh",
    mesh = "mymillwork_mach9.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_quarter_"..mat, {
	description = desc.." Quarter Column",
	drawtype = "mesh",
    mesh = "mymillwork_mach10.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,0,0,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,0,0,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_quarter_base_"..mat, {
	description = desc.." Quarter Column Base",
	drawtype = "mesh",
    mesh = "mymillwork_mach11.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_quarter_wbase_"..mat, {
	description = desc.." Quarter Column Base Baseboard",
	drawtype = "mesh",
    mesh = "mymillwork_mach12.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:column_quarter_fancybase_"..mat, {
	description = desc.." Quarter Column Base Fancy Baseboard",
	drawtype = "mesh",
    mesh = "mymillwork_mach13.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5,-0.5,-0.5,0.5,0.5,0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:ceiling_" ..mat, {
	description = desc.." Ceiling",
	drawtype = "mesh",
    mesh = "mymillwork_mach14.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:ceiling_post_"..mat, {
	description = desc.." Ceiling with Post",
	drawtype = "mesh",
    mesh = "mymillwork_mach15.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
			{-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5},
			{-0.125, 0.5, -0.0625, 0.125, -0.5, 0.0625},
			{-0.0625, 0.5, -0.125, 0.0625, -0.5, 0.125},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.4375, -0.5, 0.5, -0.5, 0.5},
			{-0.125, 0.5, -0.0625, 0.125, -0.5, 0.0625},
			{-0.0625, 0.5, -0.125, 0.0625, -0.5, 0.125},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:beam_ceiling_"..mat, {
	description = desc.." Ceiling with Beam",
	drawtype = "mesh",
    mesh = "mymillwork_mach16.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:beam_ceiling_t_"..mat, {
	description = desc.." Ceiling with Beam T",
	drawtype = "mesh",
    mesh = "mymillwork_mach18.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:beam_" ..mat, {
	description = desc.." Beam",
	drawtype = "mesh",
    mesh = "mymillwork_mach16.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.25, -0.1875, -0.5, 0.25, -0.5, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.25, -0.1875, -0.5, 0.25, -0.5, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:beam_t_"..mat, {
	description = desc.." Beam T",
	drawtype = "mesh",
    mesh = "mymillwork_mach17.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.1875, -0.5, 0.5, -0.5, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:base_" ..mat, {
	description = desc.." Baseboard",
	drawtype = "mesh",
    mesh = "mymillwork_mach19.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.3375, 0.5, -0.0875, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.3375, 0.5, -0.0875, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:base_ic_"..mat, {
	description = desc.." Baseboard IC",
	drawtype = "mesh",
    mesh = "mymillwork_mach20.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
			{-0.5, -0.5, 0.3375, 0.5, -0.0875, 0.5},
			{-0.3375, -0.5, -0.5, -0.5, -0.0875, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.3375, 0.5, -0.0875, 0.5},
			{-0.3375, -0.5, -0.5, -0.5, -0.0875, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:base_oc_"..mat, {
	description = desc.." Baseboard OC",
	drawtype = "mesh",
    mesh = "mymillwork_mach21.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.3, -0.3, -0.1875, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.3, -0.3, -0.1875, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:base_fancy_"..mat, {
	description = desc.." Fancy Baseboard",
	drawtype = "mesh",
    mesh = "mymillwork_mach22.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:base_fancy_ic_"..mat, {
	description = desc.." Fancy Baseboard IC",
	drawtype = "mesh",
    mesh = "mymillwork_mach23.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
                {-0.5, -0.5, -0.5, -0.25, 0.25, 0.5},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.25, 0.5, 0.25, 0.5},
                {-0.5, -0.5, -0.5, -0.25, 0.25, 0.5},
        },
        },
        sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

minetest.register_node(":mymillwork:base_fancy_oc_"..mat, {
	description = desc.." Fancy Baseboard OC",
	drawtype = "mesh",
    mesh = "mymillwork_mach24.obj",
	tiles = {image},
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	is_ground_content = true,
	groups = group,
        selection_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.5, -0.25, 0.25, 0.25},
       		}
        },
        collision_box = {
                type = "fixed",
                fixed = {
                {-0.5, -0.5, 0.5, -0.25, 0.25, 0.25},
        },
        },sounds = default.node_sound_wood_defaults(),
	on_place = minetest.rotate_node,
})

table.insert(mymillwork.registered, {itm, mat})

end
