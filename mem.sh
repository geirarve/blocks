#!/bin/sh
used="$(command free -h | grep Mem: | awk '{print $3}')"
total="$(command free -h | grep Mem: | awk '{print $2}')"
icon='🧠'
printf " %s %s/%s \\n" "$icon" "$used" "$total"
