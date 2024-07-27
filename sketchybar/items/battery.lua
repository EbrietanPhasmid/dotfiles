#!/usr/bin/env lua

package.path = package.path .. ";../?.lua"

local settings = require("settings")

local battery = sbar.add("item", {
  position = "right",
  update_freq = 20,
  background = {drawing = false},
  icon = {padding_left = 10},
  label = {padding_right =10},
})

function run_applescript(script)
    -- Use double quotes for osascript command and escape inside AppleScript
    local handle = io.popen(script)
    local result = handle:read("*a")
    handle:close()
    return result:match("^%s*(.-)%s*$")  -- Trim leading/trailing whitespace
end

function get_info()
  PERCENTAGE=tonumber(run_applescript([[pmset -g batt | grep -Eo '\d+%' | cut -d% -f1]]))
  CHARGING=run_applescript( [[pmset -g batt | grep 'AC Power']])
local ICON = ""
if PERCENTAGE == nil then 
  print('Oops!')
elseif 90<=PERCENTAGE and PERCENTAGE<=100 then
  ICON=""
elseif 60<=PERCENTAGE and PERCENTAGE<90 then
  ICON=""
elseif 30<=PERCENTAGE and PERCENTAGE<60 then
  ICON=""
elseif 10<=PERCENTAGE and PERCENTAGE<30 then 
  ICON=""
else 
  ICON=""
end
if CHARGING ~= "" then
  ICON=""
end
  local data = {}
  data["icon"] = ICON
  data["%"]= tostring(PERCENTAGE) .. "%"
  return data
end

battery:subscribe({"routine","power_source_change","system_woke"}, function(env) 
  local result = get_info()
  battery:set({icon = {string = result["icon"]}, label = {string = result["%"]},}) end)
