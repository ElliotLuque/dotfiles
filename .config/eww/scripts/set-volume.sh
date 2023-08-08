#!/bin/bash

set_volume() {
    local volume_percent=$1

    if [ $volume_percent -le 30 ]; then
        pactl set-sink-volume @DEFAULT_SINK@ 0
    else
        pactl set-sink-volume @DEFAULT_SINK@ "$volume_percent%"
    fi
}

if [ -z "$1" ]; then
    echo "Uso: $0 <porcentaje>"
    exit 1
fi

set_volume "$1"
