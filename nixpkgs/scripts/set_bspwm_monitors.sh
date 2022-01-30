#!/usr/bin/env bash

is_external_monitor_connected=$(xrandr --query | grep 'HDMI-A-0 connected')

if [[ $is_external_monitor_connected == "" ]]; then
  bspc monitor eDP -d 1 2 3 4
else
  bspc monitor eDP -d 1 2 3 4
  bspc monitor HDMI-A-0 -d 5 6 7 8
fi

