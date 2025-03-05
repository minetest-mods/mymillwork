-- ETHEREAL --------------------------------------------------------------------------------

if minetest.get_modpath("ethereal") then

	-- WOOD --------------------------------------------------------------------------------

	--ethereal:bamboo
	mymillwork.register("ethereal:bamboo_block",
		"ethereal_bamboo_block",
		"Bamboo Block",
		"ethereal_bamboo_floor.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:banana_wood
	mymillwork.register("ethereal:banana_wood",
		"ethereal_banana_wood",
		"Banana Wood",
		"ethereal_banana_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:birch_wood
	mymillwork.register("ethereal:birch_wood",
		"ethereal_birch_wood",
		"Birch Wood",
		"moretrees_birch_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:frost_wood
	mymillwork.register("ethereal:frost_wood",
		"ethereal_frost_wood",
		"Frost Wood",
		"ethereal_frost_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:palm_wood
	mymillwork.register("ethereal:palm_wood",
		"ethereal_palm_wood",
		"Palm Wood",
		"moretrees_palm_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:redwood_wood
	mymillwork.register("ethereal:redwood_wood",
		"ethereal_redwood_wood",
		"Redwood Wood",
		"ethereal_redwood_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:sakura_wood
	mymillwork.register("ethereal:sakura_wood",
		"ethereal_sakura_wood",
		"Sakura Wood",
		"ethereal_sakura_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:willow_wood
	mymillwork.register("ethereal:willow_wood",
		"ethereal_willow_wood",
		"Willow Wood",
		"ethereal_willow_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

	--ethereal:green_wood
	mymillwork.register("ethereal:yellow_wood",
		"ethereal_yellow_wood",
		"Healing Tree Wood",
		"ethereal_yellow_wood.png",
		{tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2, not_in_creative_inventory = mymillwork.nici}
	)

end








