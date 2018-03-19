#!/bin/bash

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

# Needs dunstify

function get_volume {
    amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

function is_mute {
    amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

function send_notification {
    volume=`get_volume`

    if (($volume == 0))
    then
        icon='audio-volume-muted'
    elif (($volume > 0)) && (($volume <= 40))
    then
        icon='audio-volume-low'
    elif (($volume > 40)) && (($volume <= 75))
    then
        icon='audio-volume-medium'
    else
        icon='audio-volume-high'
    fi

    # Send the notification
    dunstify -i $icon -t 1000 -r 2593 -u  normal "$volume"
}

case $1 in
   up)
      # Set the volume on (if it was muted)
      amixer -D pulse set Master on > /dev/null
      # Up the volume (+ 2%)
      amixer -D pulse sset Master 2%+ > /dev/null
      send_notification
      ;;
   down)
      amixer -D pulse set Master on > /dev/null
      amixer -D pulse sset Master 2%- > /dev/null
      send_notification
      ;;
   mute)
      # Toggle mute
      amixer -D pulse set Master 1+ toggle > /dev/null
      if is_mute ; then
         dunstify -i audio-volume-muted -r 2593 -u normal "Mute"
      else
         send_notification
      fi
      ;;
esac
