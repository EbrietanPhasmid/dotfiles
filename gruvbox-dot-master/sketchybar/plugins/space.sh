#!/usr/bin/env bash
if [[ $SELECTED = true ]]; then
  sketchybar -m --set $NAME background.drawing=on icon.highlight=on
else
  sketchybar -m --set $NAME background.drawing=off icon.highlight=off
fi
