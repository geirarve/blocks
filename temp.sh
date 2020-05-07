#!/bin/sh
cputemp=$(sed 's/000$/°C/' /sys/module/coretemp/drivers/platform\:coretemp/coretemp.0/hwmon/hwmon0/temp1_input)
gputemp=$(sed 's/000$/°C/' /sys/module/amdgpu/drivers/pci:amdgpu/0000:01:00.0/hwmon/hwmon1/temp1_input)

printf " CPU:%s GPU:%s \\n" "$cputemp" "$gputemp"
