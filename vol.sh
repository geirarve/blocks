#!/bin/sh
# vol=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
vol=$($HOME/.local/bin/pulsemixer --get-volume | awk '{print $1}')
icon='♪'
printf " %s %s%% \\n" "$icon" "$vol"
