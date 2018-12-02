-- STONE --------------------------------------------------------------------------------

mymillwork.register_all(
	"default_stone",
	"Stone",
	"default_stone.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:stone"
	)

mymillwork.register_all(
	"default_stone_brick",
	"Stone Brick",
	"default_stone_brick.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:stonebrick"
	)

mymillwork.register_all(
	"default_desert_stone",
	"Desert Stone",
	"default_desert_stone.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:desert_stone"
	)

mymillwork.register_all(
	"default_desert_stonebrick",
	"Desert Stone Brick",
	"default_desert_stone_brick.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:desert_stonebrick"
	)

mymillwork.register_all(
	"default_cobble",
	"Cobble",
	"default_cobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:cobble"
	)

mymillwork.register_all(
	"default_mossycobble",
	"Mossy Cobble",
	"default_mossycobble.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:mossycobble"
	)

-- SANDSTONE -----------------------------------------------------------------------------

mymillwork.register_all(
	"default_sandstone",
	"Sandstone",
	"default_sandstone.png",
	{crumbly=2,  cracky = 3,  not_in_creative_inventory=1},
	"default:sandstone"
	)

mymillwork.register_all(
	"default_sandstone_brick",
	"Sandstone Brick",
	"default_sandstone_brick.png",
	{crumbly=2,  cracky = 3,  not_in_creative_inventory=1},
	"default:sandstonebrick"
	)

mymillwork.register_all(
	"default_desert_sandstone",
	"Desert Sandstone",
	"default_desert_sandstone.png",
	{crumbly=2,  cracky = 3,  not_in_creative_inventory=1},
	"default:desert_sandstone"
	)

mymillwork.register_all(
	"default_desert_sandstone_brick",
	"Desert Sandstone Brick",
	"default_desert_sandstone_brick.png",
	{crumbly=2,  cracky = 3,  not_in_creative_inventory=1},
	"default:desert_sandstone_brick"
	)

mymillwork.register_all(
	"default_silver_sandstone",
	"Silver Sandstone",
	"default_silver_sandstone.png",
	{crumbly=2,  cracky = 3,  not_in_creative_inventory=1},
	"default:silver_sandstone"
	)

mymillwork.register_all(
	"default_silver_sandstone_brick",
	"Silver Sandstone Brick",
	"default_silver_sandstone_brick.png",
	{crumbly=2,  cracky = 3,  not_in_creative_inventory=1},
	"default:silver_sandstone_brick"
	)


-- CLAY ----------------------------------------------------------------------------------

mymillwork.register_all(
	"default_clay",
	"Clay",
	"default_clay.png",
	{crumbly=3,  not_in_creative_inventory=1},
	"default:clay"
	)

if minetest.get_modpath("bakedclay") then
	
	local clay = {
		{"white", "White"},
		{"grey", "Grey"},
		{"black", "Black"},
		{"red", "Red"},
		{"yellow", "Yellow"},
		{"green", "Green"},
		{"cyan", "Cyan"},
		{"blue", "Blue"},
		{"magenta", "Magenta"},
		{"orange", "Orange"},
		{"violet", "Violet"},
		{"brown", "Brown"},
		{"pink", "Pink"},
		{"dark_grey", "Dark Grey"},
		{"dark_green", "Dark Green"},
	}

	for _,c in ipairs(clay) do
		mymillwork.register_all(
			"bakedclay_" .. c[1],
			c[2] .. " Clay",
			"baked_clay_" .. c[1] .. ".png",
			{cracky=3,  not_in_creative_inventory=1},
			"bakedclay:" .. c[1]
			)
	end

elseif minetest.get_modpath("ethereal") then
	
	local clay = {
		{"grey", "Grey"},
		{"red", "Red"},
		{"yellow", "Yellow"},
	}

	for _,c in ipairs(clay) do
		mymillwork.register_all(
			"bakedclay_" .. c[1],
			c[2] .. " Clay",
			"baked_clay_" .. c[1] .. ".png",
			{cracky=3,  not_in_creative_inventory=1},
			"bakedclay:" .. c[1]
			)
	end

end


-- WOOD ----------------------------------------------------------------------------------

mymillwork.register_all(
	"default_wood",
	"Wood",
	"default_wood.png",
	{choppy = 3, not_in_creative_inventory=1},
	"default:wood"
	)

mymillwork.register_all(
	"default_junglewood",
	"Jungle Wood",
	"default_junglewood.png",
	{choppy=2, oddly_breakable_by_hand=2, flammable=2, not_in_creative_inventory=1},
	"default:junglewood"
	)

mymillwork.register_all(
	"default_pine_wood",
	"Pine Wood",
	"default_pine_wood.png",
	{choppy = 3, not_in_creative_inventory=1},
	"default:pine_wood"
	)

mymillwork.register_all(
	"default_acacia_wood",
	"Acacia Wood",
	"default_acacia_wood.png",
	{choppy = 3, not_in_creative_inventory=1},
	"default:pine_acacia"
	)

mymillwork.register_all(
	"default_aspen_wood",
	"Aspen Wood",
	"default_aspen_wood.png",
	{choppy = 3, not_in_creative_inventory=1},
	"default:aspen_wood"
	)

	
-- BRICKS --------------------------------------------------------------------------------

mymillwork.register_all(
	"default_brick",
	"Brick",
	"default_brick.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:brick"
	)

if minetest.get_modpath("moreblocks") then
	
	mymillwork.register_all(
		"moreblocks_cactus_brick",
		"Cactus Brick",
		"moreblocks_cactus_brick.png",
		{cracky = 3, not_in_creative_inventory=1},
		"moreblocks:cactus_brick"
		)

	mymillwork.register_all(
		"moreblocks_grey_bricks",
		"Grey Brick",
		"moreblocks_grey_bricks.png",
		{cracky = 3, not_in_creative_inventory=1},
		"moreblocks:grey_bricks"
		)

end


-- MISC ----------------------------------------------------------------------------------

--[[
mymillwork.register_all(
	"default_coal_block",
	"Coal Block",
	"default_coal_block.png",
	{cracky = 3, not_in_creative_inventory=1},
	"default:coalblock"

	)
]]

mymillwork.register_all(
	"default_obsidian",
	"Obsidian",
	"default_obsidian.png",
	{cracky = 1, not_in_creative_inventory=1},
	"default:obsidian"
	)

mymillwork.register_all(
	"default_obsidian_brick",
	"Obsidian Brick",
	"default_obsidian_brick.png",
	{cracky = 1, not_in_creative_inventory=1},
	"default:obsidianbrick"
	)