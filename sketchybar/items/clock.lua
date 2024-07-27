local settings = require("settings")
local colors = require("colors")

local clock = sbar.add("item", {
  icon = {string = settings.icons.clock, padding_left=7},
  position = "right",
  update_freq = 1,
  background = {drawing = false},
  label = {padding_right = 7},
  popup = {height = 20, y_offset = -5, drawing=false, 
    background = { color = colors.transparent, border_width=1 }},
  script = 'sketchybar --set $NAME label="$(date "+%H:%M:%S")" && -set ',
})

local calendar = sbar.add("item", {
  position = "popup." .. clock.name,
  align = "right",
  label = { padding_left = 0},
  background = {drawing = false},
  update_freq = 1,
})

local function update()
  local date = os.date("%a. %d %b.")
  print(date)
  local current_color = tonumber(clock:query().popup.background.color)
  local anim_time = 10
if current_color == colors.popup.bg then
  sbar.animate("sin", anim_time, function() 
    clock:set({popup = {background = {color = colors.transparent, shadow = {drawing=false}}}}) end)
    clock:set({popup = {drawing = false}})
  else
    clock:set({popup = {drawing = true}})
    sbar.animate("sin", anim_time, function() 
      clock:set({popup = {background = {color = colors.popup.bg,shadow = {drawing=true} }}}) end)
  end
calendar:set({ label = {string = date} })
end

clock:subscribe("mouse.clicked", function () update() end)
--clock:subscribe("mouse.entered", function () update() end)
--clock:subscribe("mouse.exited", function () update() end)
clock:subscribe("routine", function() sbar.exec('sketchybar --set ' .. clock.name ..  ' label="$(date "+%H:%M:%S")"') end)




