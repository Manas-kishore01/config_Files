#!/bin/bash

FILE="/sys/devices/pci0000:00/0000:00:1f.0/PNP0C09:00/VPC2004:00/conservation_mode"

if [ -f "$FILE" ]; then
    STATUS=$(cat "$FILE")
    if [ "$STATUS" = "1" ]; then
        echo "󰂉 CONSERVE: ON"
        echo "Conservation Mode is enabled"
        echo "#FFCC00"  # amber/yellow
    else
        echo "󰂊 CONSERVE: OFF"
        echo "Conservation Mode is disabled"
        echo "#00FF66"  # green
    fi
else
    echo "󰂄 No Info"
    echo "conservation_mode not found"
    echo "#FF0000"
fi

