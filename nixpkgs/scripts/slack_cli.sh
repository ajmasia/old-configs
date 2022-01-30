#!/usr/bin/env bash

MONO_REPO_PATH=~/projects/genially/mono/

run_slack() {
  nix-shell \
    --packages slack-cli jq fzy rofi \
    --run "slack $* | jq .ok"
}

clear_status() {
  run_slack "status" "clear"
}

set_away() {
  run_slack presence away
}

set_status() {
  result=$(run_slack "status" "edit" "\"$1\"" "\"$2\"")
  [ "$result" = "true" ] && notify-send "Slack status set to: $1 $2"
  [ "$result" != "true" ] && notify-send -u critical "Slack status set failed"
}

SELECTED=$(echo -e "working on\nbreakfast\ncooking\nlunch\nmeeting\npause\noff\nout" | rofi -dmenu -matching fuzzy -p 'Set Slack status to' -sort -levenshtein-sort)

case $SELECTED in
  "working on") set_status "Trabajando en: $(git -C $MONO_REPO_PATH branch --show-current)" ":-git:" ;;
  "breakfast") set_status "Desayunando" ":croissant:" ;;
  "cooking") set_status "Cocinando" ":cook:" ;;
  "lunch") set_status "Almuerzo" ":yum:" ;;
  "meeting") set_status "Reunido" ":slack_call:" ;;
  "pause") set_status "Parada técnica" ":stopwatch:" ;;
  "off") set_status "Fuera por hoy" ":wave:" && set_away ;;
  "out") set_status "Vuelvo en un rato" ":away:" ;;
  # more cases...
  "") clear_status ;;
  *) echo "Options: Working on | breakfast | Cooking | Lunch | Meeting | Pause | off | out" ;;
esac
