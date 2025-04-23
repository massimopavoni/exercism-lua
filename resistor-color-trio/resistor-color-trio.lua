local colors = {
	black = 0,
	brown = 1,
	red = 2,
	orange = 3,
	yellow = 4,
	green = 5,
	blue = 6,
	violet = 7,
	grey = 8,
	white = 9,
}

local units = { "ohms", "kiloohms", "megaohms", "gigaohms" }

return {
	decode = function(c1, c2, c3)
		local n, z = colors[c1] + colors[c2] * 0.1, colors[c3] + 1

		return n * 10 ^ (z % 3), units[z // 3 + 1]
	end,
}
