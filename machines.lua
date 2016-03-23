local material = {}
local shape = {}
local make_ok = {}
local anzahl = {}


minetest.register_node("mymillwork:machine", {
	description = "Millwork Machine",
	tiles = {
		"mymillwork_machine_top.png",
		"mymillwork_machine_bottom.png",
		"mymillwork_machine_side2.png",
		"mymillwork_machine_side1.png",
		"mymillwork_machine_back.png",
		"mymillwork_machine_front.png"
		},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {oddly_breakable_by_hand=2, cracky=3, dig_immediate=1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.1875, -0.5, 0.5, -0.0625, 0.5}, -- Table
			{-0.5, -0.5, -0.5, -0.3125, -0.1875, -0.3125}, -- leg
			{-0.5, -0.5, 0.3125, -0.3125, -0.1875, 0.5}, -- leg
			{0.3125, -0.5, 0.3125, 0.5, -0.1875, 0.5}, -- leg
			{0.3125, -0.5, -0.5, 0.5, -0.1875, -0.3125}, -- leg
			{0, -0.0625, 0.25, 0.0625, 0.375, 0.5}, -- verticle
			{-0.125, -0.0625, 0.25, -0.0625, 0.375, 0.5}, -- verticle
			{-0.1875, 0.125, -0.3125, 0.125, 0.5, 0.0625}, -- motor
			{-0.125, 0.375, 0.0625, 0.0625, 0.5, 0.5}, -- arm
			{-0.0625, 0.0625, -0.3125, 0, 0.125, 0.0625}, -- blade
			{-0.0625, 0, -0.25, 0, 0.125, 0}, -- blade
		}
	},

	after_place_node = function(pos, placer)
	local meta = minetest.get_meta(pos);
			meta:set_string("owner",  (placer:get_player_name() or ""));
			meta:set_string("infotext",  "Millwork Machine (owned by " .. (placer:get_player_name() or "") .. ")");
		end,

can_dig = function(pos,player)
	local meta = minetest.get_meta(pos);
	local inv = meta:get_inventory()
	if not inv:is_empty("ingot") then
		return false
	elseif not inv:is_empty("res") then
		return false
	end
	return true
end,

on_construct = function(pos)
	local meta = minetest.get_meta(pos)
	meta:set_string("formspec", "invsize[10,11;]"..
		"background[-0.15,-0.25;10.40,11.75;mymillwork_background.png]"..
		"list[current_name;ingot;7,5.5.5;1,1;]"..
		"list[current_name;res;8.5,5.5;1,1;]"..
		"label[7,5;Input:]"..
		"label[8.5,5;Output:]"..
		"label[0,0;Choose Millwork:]"..

		"label[0.5,0.5;Crown Mould]"..
		"image_button[0.5,1;1,1;mymillwork_mach1.png;crownmould; ]"..
		"image_button[1.5,1;1,1;mymillwork_mach2.png;crownmould_ic; ]"..
		"image_button[2.5,1;1,1;mymillwork_mach3.png;crownmould_oc; ]"..
		"image_button[3.5,1;1,1;mymillwork_mach4.png;crownmould_beam; ]"..

		"label[0.5,2;Columns]"..
		"image_button[0.5,2.5;1,1;mymillwork_mach5.png;column; ]"..
		"image_button[1.5,2.5;1,1;mymillwork_mach6.png;column_base; ]"..
		"image_button[2.5,2.5;1,1;mymillwork_mach7.png;column_half; ]"..
		"image_button[3.5,2.5;1,1;mymillwork_mach8.png;column_half_base; ]"..
		"image_button[4.5,2.5;1,1;mymillwork_mach9.png;column_half_wbeam; ]"..
		"image_button[5.5,2.5;1,1;mymillwork_mach10.png;column_quarter; ]"..
		"image_button[6.5,2.5;1,1;mymillwork_mach11.png;column_quarter_base; ]"..
		"image_button[7.5,2.5;1,1;mymillwork_mach12.png;column_quarter_wbase; ]"..
		"image_button[8.5,2.5;1,1;mymillwork_mach13.png;column_quarter_fancybase; ]"..

		"label[0.5,3.5;Ceiling and Beams]"..
		"image_button[0.5,4;1,1;mymillwork_mach14.png;ceiling; ]"..
		"image_button[1.5,4;1,1;mymillwork_mach15.png;ceiling_post; ]"..
		"image_button[2.5,4;1,1;mymillwork_mach16.png;beam; ]"..
		"image_button[3.5,4;1,1;mymillwork_mach17.png;beam_t; ]"..
		"image_button[4.5,4;1,1;mymillwork_mach18.png;beam_ceiling_t; ]"..

		"label[0.5,5;Base]"..
		"image_button[0.5,5.5;1,1;mymillwork_mach19.png;base; ]"..
		"image_button[1.5,5.5;1,1;mymillwork_mach20.png;base_ic; ]"..
		"image_button[2.5,5.5;1,1;mymillwork_mach21.png;base_oc; ]"..
		"image_button[3.5,5.5;1,1;mymillwork_mach22.png;base_fancy; ]"..
		"image_button[4.5,5.5;1,1;mymillwork_mach23.png;base_fancy_ic; ]"..
		"image_button[5.5,5.5;1,1;mymillwork_mach24.png;base_fancy_oc; ]"..
		"list[current_player;main;1,7;8,4;]")
	meta:set_string("infotext", "Millwork Machine")
	local inv = meta:get_inventory()
	inv:set_size("ingot", 1)
	inv:set_size("res", 1)
end,

on_receive_fields = function(pos, formname, fields, sender)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()

-----------------------------
if fields["crownmould"] 
or fields["crownmould_ic"]
or fields["crownmould_oc"]
or fields["crownmould_beam"]
or fields["column"] 
or fields["column_base"]
or fields["column_half"] 
or fields["column_half_base"]
or fields["column_half_wbeam"]  
or fields["column_quarter"]   
or fields["column_quarter_base"] 
or fields["column_quarter_wbase"]
or fields["column_quarter_fancybase"]
or fields["ceiling"] 
or fields["ceiling_post"] 
or fields["beam"] 
or fields["beam_t"] 
or fields["beam_ceiling_t"]
or fields["base"] 
or fields["base_ic"] 
or fields["base_oc"] 
or fields["base_fancy"]
or fields["base_fancy_ic"]
or fields["base_fancy_oc"] 
then

--Crown Mould-----------------------------------------
	if fields["crownmould"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymillwork:crownmould_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["crownmould_ic"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymillwork:crownmould_ic_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["crownmould_oc"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymillwork:crownmould_oc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["crownmould_beam"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymillwork:crownmould_beam_"
		if inv:is_empty("ingot") then
			return
		end
	end

--Columns----------------------------------------------

	if fields["column"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymillwork:column_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_base"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymillwork:column_base_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_half"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymillwork:column_half_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_half_base"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymillwork:column_half_base_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_half_wbeam"] then
		make_ok = "0"
		anzahl = "1"
		shape = "mymillwork:column_half_wbeam_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_quarter"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymillwork:column_quarter_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_quarter_base"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymillwork:column_quarter_base_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_quarter_wbase"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymillwork:column_quarter_wbase_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["column_quarter_fancybase"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymillwork:column_quarter_fancybase_"
		if inv:is_empty("ingot") then
			return
		end
	end

--Ceiling--------------------------------------------------

	if fields["ceiling"] then
		make_ok = "0"
		anzahl = "6"
		shape = "mymillwork:ceiling_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["ceiling_post"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymillwork:ceiling_post_"
		if inv:is_empty("ingot") then
			return
		end
	end

--Beam----------------------------------------------

	if fields["beam"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymillwork:beam_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["beam_t"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymillwork:beam_t_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["beam_ceiling_t"] then
		make_ok = "0"
		anzahl = "2"
		shape = "mymillwork:beam_ceiling_t_"
		if inv:is_empty("ingot") then
			return
		end
	end

--Base----------------------------------------------

	if fields["base"] then
		make_ok = "0"
		anzahl = "8"
		shape = "mymillwork:base_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["base_ic"] then
		make_ok = "0"
		anzahl = "4"
		shape = "mymillwork:base_ic_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["base_oc"] then
		make_ok = "0"
		anzahl = "10"
		shape = "mymillwork:base_oc_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["base_fancy"] then
		make_ok = "0"
		anzahl = "6"
		shape = "mymillwork:base_fancy_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["base_fancy_ic"] then
		make_ok = "0"
		anzahl = "3"
		shape = "mymillwork:base_fancy_ic_"
		if inv:is_empty("ingot") then
			return
		end
	end

	if fields["base_fancy_oc"] then
		make_ok = "0"
		anzahl = "8"
		shape = "mymillwork:base_fancy_oc_"
		if inv:is_empty("ingot") then
			return
		end
	end

		local ingotstack = inv:get_stack("ingot", 1)
		local resstack = inv:get_stack("res", 1)
----------------------------------------------------------------------
--Register Items
----------------------------------------------------------------------
		if ingotstack:get_name()=="default:sandstone" then
				material = "default_sandstone"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:desert_sand" then
				material = "default_desert_sand"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:clay" then
				material = "default_clay"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:desert_stone" then
				material = "default_desert_stone"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:cobble" then
				material = "default_cobble"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:stone" then
				material = "default_stone"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:cactus" then
				material = "default_cactus"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="default:sand" then
				material = "default_sand"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:wood" then
				material = "default_wood"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:pinewood" then
				material = "default_pinewood"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:dirt" then
				material = "default_dirt"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:brick" then
				material = "default_brick"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:bronzeblock" then
				material = "default_bronze_block"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:coalblock" then
				material = "default_coal_block"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:copperblock" then
				material = "default_copper_block"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:desert_cobble" then
				material = "default_desert_cobble"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:diamondblock" then
				material = "default_diamond_block"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="default:glass" then
				material = "default_glass"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="default:goldblock" then
				material = "default_gold_block"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="default:gravel" then
				material = "default_gravel"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="default:ice" then
				material = "default_ice"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:jungletree" then
				material = "default_jungletree"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:junglewood" then
				material = "default_junglewood"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:lava_source" then
				material = "default_lava"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="default:mese" then
				material = "default_mese"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:mossycobble" then
				material = "default_mossycobble"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:obsidian" then
				material = "default_obsidian"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:obsidian_glass" then
				material = "default_obsidian_glass"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:obsidianbrick" then
				material = "default_obsidian_brick"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:pinetree" then
				material = "default_pinetree"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:sandstonebrick" then
				material = "default_sandstone_brick"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:snowblock" then
				material = "default_snow"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="default:steelblock" then
				material = "default_steel_block"
				make_ok = "1"
		end
--]]
		if ingotstack:get_name()=="default:stonebrick" then
				material = "default_stone_brick"
				make_ok = "1"
		end

		if ingotstack:get_name()=="default:tree" then
				material = "default_tree"
				make_ok = "1"
		end
--[[
		if ingotstack:get_name()=="default:water_source" then
				material = "default_water"
				make_ok = "1"
		end
--]]
--[[
		if ingotstack:get_name()=="farming:straw" then
				material = "farming_straw"
				make_ok = "1"
		end
--]]
----------------------------------------------------------------------------
--wool
--[[
		if ingotstack:get_name()=="wool:white" then
				material = "wool_white"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:black" then
				material = "wool_black"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:blue" then
				material = "wool_blue"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:brown" then
				material = "wool_brown"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:cyan" then
				material = "wool_cyan"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:dark_green" then
				material = "wool_dark_green"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:dark_grey" then
				material = "wool_dark_grey"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:green" then
				material = "wool_green"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:grey" then
				material = "wool_grey"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:magenta" then
				material = "wool_magenta"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:orange" then
				material = "wool_orange"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:pink" then
				material = "wool_pink"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:red" then
				material = "wool_red"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:violet" then
				material = "wool_violet"
				make_ok = "1"
		end
		if ingotstack:get_name()=="wool:yellow" then
				material = "wool_yellow"
				make_ok = "1"
		end
--]]
----------------------------------------------------------------------
		if make_ok == "1" then
			local give = {}
			for i = 0, anzahl-1 do
				give[i+1]=inv:add_item("res",shape..material)
			end
			ingotstack:take_item()
			inv:set_stack("ingot",1,ingotstack)
		end            

	
end
end


})

--Craft

minetest.register_craft({
		output = 'mymillwork:machine',
		recipe = {
			{'default:steelblock', 'default:steelblock', 'default:steelblock'},
			{'default:steelblock', 'default:steel_ingot', 'default:steelblock'},
			{'default:steelblock', "default:steelblock", 'default:steelblock'},
		},
})













