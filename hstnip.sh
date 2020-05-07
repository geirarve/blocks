#!/bin/sh
usrnm=$(whoami)
hstnm=$(hostname)
ipee=$(ip a show wlan0 | grep 'inet ' | sed 's/^.*inet //;s/\/.*$//')
printf " %s@%s:%s \\n" "$usrnm" "$hstnm" "$ipee"
