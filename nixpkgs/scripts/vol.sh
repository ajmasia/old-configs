#!/usr/bin/env bash

# TODO: Add system sounds
function get_volume {
  amixer -D default get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
  amixer -D default get Master | grep '%' | grep -oE '[^ ]+$' | grep off >/dev/null
}

function send_notification {
  volume=$(get_volume)
  # dunstify -h string:x-dunst-stack-tag:test -A 'volume,default' -a VOLUME "$volume" -i '~/.config/dunst/icons/volume.svg'
  dunstify -h string:x-dunst-stack-tag:test -a VOLUME "$volume%" -i '~/.config/dunst/icons/volume.svg'
}

case $1 in
up)
  # Set the volume on (if it was muted)
  amixer -D default set Master on >/dev/null
  # Up the volume (+ 5%)
  amixer -D default sset Master 5%+ >/dev/null
  send_notification
  ;;
down)
  amixer -D default set Master on >/dev/null
  amixer -D default sset Master 5%- >/dev/null
  send_notification
  ;;
mute)
  # Toggle mute
  amixer -D default set Master 1+ toggle >/dev/null
  if is_mute; then
    DIR=$(dirname "$0")
    # dunstify -h string:x-dunst-stack-tag:test -A 'volume,default' -a VOLUME "$volume" -i '~/.config/dunst/icons/015-sound.svg'
    # TODO: Change muted icon
    dunstify -h string:x-dunst-stack-tag:test -a VOLUME "MUTED" -i '~/.config/dunst/icons/volume.svg'
  else
    send_notification
  fi
  ;;
esac
