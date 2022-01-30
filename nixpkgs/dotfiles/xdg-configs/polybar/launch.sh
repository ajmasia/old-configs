#!/usr/bin/env bash

DIR="$HOME/.config/polybar"
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar

polybar -q main-laptop -c "$DIR"/config.ini &
# polybar -q secondary-laptop -c "$DIR"/config.ini &
# ~/.local/share/scripts/launch_polybar.sh 
