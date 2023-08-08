#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <porcentaje>"
    exit 1
fi

exec brightnessctl s "$1%" -q

