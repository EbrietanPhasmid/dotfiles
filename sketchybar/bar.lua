local colors = require("colors")

-- Equivalent to the --bar domain
sbar.bar({
    corner_radius = 8,
		border_width = 1,
		border_color = colors.bar.border,
		color = colors.bar.bg,
		margin = 30,
		height = 45,
		position = top, 
		y_offset = 12,
		padding_left = 40,
		padding_right = 40, 
		shadow = true,
		topmost = false,
})
