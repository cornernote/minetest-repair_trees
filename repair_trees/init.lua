--[[

Repair Trees for Minetest

Copyright (c) 2012 cornernote, Brett O'Donnell <cornernote@gmail.com>
Source Code: https://github.com/cornernote/minetest-particles
License: GPLv3

]]--

minetest.register_abm({
	nodenames = {"default:tree"},
	interval = 60,
	chance = 10,
	action = function(pos)
		local np = {x=pos.x,y=pos.y-1,z=pos.z}
		if minetest.env:get_node(np).name == "air" then
			minetest.env:add_node(np, {name="default:tree"})
		end
	end,
})

-- log that we started
minetest.log("action", "[MOD]"..minetest.get_current_modname().." -- loaded from "..minetest.get_modpath(minetest.get_current_modname()))