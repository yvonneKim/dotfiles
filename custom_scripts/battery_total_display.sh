#!/usr/bin/zsh

CHARGING=0

for x in "$(acpi | awk '{print $3}')"; do
    if [ "$x" = "Discharging," ]
       CHARGING=1
    echo $CHARGING
done
