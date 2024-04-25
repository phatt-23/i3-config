#!/usr/bin/env bash

# Define an associative array:
typeset -A mode
# And its content:
mode=(
  [1) Single]="autorandr hdmi_mon"
  [2) Extended]="autorandr horizontal-reverse"
  [3) Mirror]="autorandr mirror "
  [4) Cancel]=""
)

mode_nrows=${#mode[@]}

selected="$(printf '%s\n' "${!mode[@]}" | sort | rofi -dmenu -p "Monitor setup" -i -lines 2)"
i3-msg -q "exec --no-startup-id ${mode[${selected}]}"
