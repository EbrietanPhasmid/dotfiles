-- Add the sketchybar module to the package cpath
package.cpath = package.cpath .. ";/Users/" .. os.getenv("USER") .. "/.local/share/sketchybar_lua/?.so"
package.path = package.path .. ";/Users/" .. os.getenv("USER") .. "/.config/sketchybar/helpers/event_makers/?.lua"
package.path = package.path .. ";../?.lua"

os.execute("(cd helpers && make)")
