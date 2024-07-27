#!/usr/bin/env lua
require("spotify_changed") -- CHECKS FOR SPOTIFY UPDATES
local settings = require("settings")

local spotify = sbar.add("item", {
  position = "center",
  label = {string = ""},
  background = {drawing = false},
  click_script = "osascript -e 'tell application \"Spotify\" to pause'",
  script = settings.PLUGIN_DIR .. "spotify.sh",
})

spotify:subscribe("front_app_switched", function(env)
  spotify:set({ label = { string = env.INFO } })
end)
--spotify:subscribe("spotify_changed", function(env) sbar.exec(settings.PLUGIN_DIR .. "spotify.sh " .. env.NAME)end)
