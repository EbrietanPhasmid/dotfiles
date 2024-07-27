local settings = require("settings")
local colors = require("colors")

local spaces = {}
for i = 1, 10, 1 do
  local space = sbar.add("space", "space.".. i, {
    icon = { string = settings.icons.spaces[i], padding_left = 10, font = {size = settings.sizes.spaces[i]} },
    space = i,
    background = {color = colors.highlight, height = 20},
    script = settings.PLUGIN_DIR .. "space.sh",
    click_script = "yabai -m space --focus " .. i -- requires csrutil disabled
  })
  spaces[i] = space.name
end

local space_bracket = sbar.add("bracket", spaces, {
  background = {color = colors.darkgrey, drawing=true, height = 28}

})
