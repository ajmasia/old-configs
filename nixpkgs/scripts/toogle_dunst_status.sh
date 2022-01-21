#!/usr/bin/env bash

is_paused=$(dunstctl is-paused)
next_is_paused="false"

if [[ $is_paused == "false" ]]; then
  next_is_paused="true"
fi


if [[ $next_is_paused == "true" ]]; then
  notify-send Dunst "Notifications are paused" && sleep 6 && dunstctl set-paused toggle

else
  dunstctl set-paused toggle && notify-send Dunst "Notifications are active"
fi
