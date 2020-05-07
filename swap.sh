#!/bin/sh
used="$(free -h | grep Swap: | awk '{print $3}')"
total="$(free -h | grep Swap: | awk '{print $2}')"
icon='🔀'
printf " %s %s/%s \\n" "$icon" "$used" "$total"
