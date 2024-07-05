local settings = require("settings")
local colors = require("colors")

-- Equivalent to the --default domain
sbar.default({
  updates = "when_shown",
  associated_display = 1,
  icon = {
    font = "Hack Nerd Font:Bold:14.0",
    color = colors.ivory,
    padding_left = settings.paddings,
    padding_right = settings.paddings,
    highlight_color = colors.yellow,
    background = { image = { corner_radius = settings.corner_rads } },
  },
  label = {
    font = "IosevkaTermSlab NF:Bold:12.0",
    color = colors.ivory,
    associated_display=1,
    padding_left = settings.paddings,
    padding_right = settings.paddings,
  },
  background = {
    height = 24,
    border_width = 1,
    border_color = colors.border,
    corner_radius = settings.corner_rads,
    color = colors.darkgrey,
    image = {
      corner_radius = settings.corner_rads,
      border_color = colors.image.border,
      border_width = 1
    },
  },
  popup = {
    background = {
      border_width = 20,
      corner_radius =  settings.corner_rads,
      border_color = colors.bar.border,
      color = colors.popup.bg,
      shadow = { drawing = true },
    },
  },
  padding_left = 5,
  padding_right = 5,
  scroll_texts = true,
})
