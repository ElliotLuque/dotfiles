#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 posición_en_microsegundos"
    exit 1
fi

position=$1

spotifyInstance="$(playerctl -l | head -n 1)"
trackUrl=$(qdbus org.mpris.MediaPlayer2.$spotifyInstance /org/mpris/MediaPlayer2 "org.mpris.MediaPlayer2.Player.Metadata" | grep -oP 'xesam:url: \K\S+')
trackId=/spotify/track/$(basename "$trackUrl")

exec qdbus org.mpris.MediaPlayer2.$spotifyInstance /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.SetPosition $trackId $position 


