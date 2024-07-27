local CONFIG_DIR = "~/.config/sketchybar/"
return {
  paddings = 3,
  group_paddings = 5,
  corner_rads = 4,
  CONFIG_DIR = CONFIG_DIR,
  PLUGIN_DIR = CONFIG_DIR.."plugins/",
  icons = require("icons"),
  sizes = require("sizes"),
  -- This is a font configuration for SF Pro and SF Mono (installed manually)
  font = require("helpers.default_font"),

  -- Alternatively, this is a font config for JetBrainsMono Nerd Font
  -- font = {
  --   text = "JetBrainsMono Nerd Font", -- Used for text
  --   numbers = "JetBrainsMono Nerd Font", -- Used for numbers
  --   style_map = {
  --     ["Regular"] = "Regular",
  --     ["Semibold"] = "Medium",
  --     ["Bold"] = "SemiBold",
  --     ["Heavy"] = "Bold",
  --     ["Black"] = "ExtraBold",
  --   },
  -- },
}
