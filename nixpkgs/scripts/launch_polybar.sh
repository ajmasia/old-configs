#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
is_external_monitor_connected=$(xrandr --query | grep 'HDMI-A-0 connected')

if [[ $is_external_monitor_connected == "" ]]; then
  polybar -q main-laptop -c "$DIR"/config.ini & 
else
  polybar -q main-external -c "$DIR"/config.ini &
  polybar -q secondary-laptop -c "$DIR"/config.ini &
fi
