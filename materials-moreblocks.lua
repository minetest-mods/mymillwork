-- MOREBLOCKS --------------------------------------------------------------------------------

if minetest.get_modpath("moreblocks") then

	-- STONES --------------------------------------------------------------------------------

	--moreblocks:stone_tile
	mymillwork.register("moreblocks:stone_tile",
		"moreblocks_stone_tile",
		"Stone Tile",
		"moreblocks_stone_tile.png",
		{cracky = 3, not_in_creative_inventory = mymillwork.nici}
	)

	--moreblocks:coal_stone
	mymillwork.register("moreblocks:coal_stone",
		"moreblocks_coal_stone",
		"Coal Stone",
		"moreblocks_coal_stone.png",
		{cracky = 3, not_in_creative_inventory = mymillwork.nici}
	)

	--moreblocks:iron_stone
	mymillwork.register("moreblocks:iron_stone",
		"moreblocks_iron_stone",
		"Iron Stone",
		"moreblocks_iron_stone.png",
		{cracky = 3, not_in_creative_inventory = mymillwork.nici}
	)

	--moreblocks:coal_stone_bricks
	mymillwork.register("moreblocks:coal_stone_bricks",
		"moreblocks_coal_stone_bricks",
		"Coal Stone Bricks",
		"moreblocks_coal_stone_bricks.png",
		{cracky = 3, not_in_creative_inventory = mymillwork.nici}
	)

	--moreblocks:iron_stone_bricks
	mymillwork.register("moreblocks:iron_stone_bricks",
		"moreblocks_iron_stone_bricks",
		"Iron Stone Bricks",
		"moreblocks_iron_stone_bricks.png",
		{cracky = 3, not_in_creative_inventory = mymillwork.nici}
	)


	-- BRICKS --------------------------------------------------------------------------------

	--moreblocks:cactus_brick
	mymillwork.register("moreblocks:cactus_brick",
		"moreblocks_cactus_brick",
		"Cactus Brick",
		"moreblocks_cactus_brick.png",
		{cracky = 3, not_in_creative_inventory = mymillwork.nici}
	)

	--moreblocks:grey_bricks
	mymillwork.register("moreblocks:grey_bricks",
		"moreblocks_grey_bricks",
		"Grey Brick",
		"moreblocks_grey_bricks.png",
		{cracky = 3, not_in_creative_inventory = mymillwork.nici}
	)

end
