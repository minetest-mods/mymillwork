mymillwork
========

Crown Mold, Baseboards, Columns and more To minetest

Licence - DWYWPL 

If you want to add or remove a texture simply edit the table at the top of millwork.lua file.

Right now I have these textures: White, Sandstone, Desert Sand and Clay. The others are commented out. 

Each texture has 28 nodes so careful that you don't add too many textures.


local material = {--{Name for description}, {image without .png}, {item name}, {mod name}

	{ "White", "crownmold_white","white","wool"},

--	{ "Cobble", "default_cobble","cobble","default"},

	{ "Sandstone", "default_sandstone","sandstone","default"},	

--	{ "Desert Stone", "default_desert_stone","desert_stone","default"},

--	{ "Stone", "default_stone","stone","default"},

--	{ "Tree", "default_tree","tree","default"},

	{ "Desert Sand", "default_desert_sand","desert_sand","default"},

	{ "Clay", "default_clay","clay","default"},

--	{ "Dirt", "default_dirt","dirt","default"},
}
