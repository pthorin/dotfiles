#!/bin/bash

######################################
## /usr/local/bin/hotplug_monitor.sh
######################################
export X_USER=pthorin
export DISPLAY=:0
export XAUTHORITY=/home/$X_USER/.Xauthority
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

function connect() {
    #dual monitor - HDMI1 at right - xfce panel on left (LVDS1)
    xrandr --output "$1" --auto --scale 1 --primary --above eDP-1 >> /tmp/screen
}

function disconnect() {
  xrandr --output "$1" --off
}

if [ "$(cat /sys/class/drm/card0-**/status|grep -c ^connected)" -eq 1 ]; then
  xrandr --auto --output eDP-1 --scale 2
else
  MONITORS=(DP-1 DP-2 DP-3 DP-4 DP-5 DP-6)
  for MONITOR in "${MONITORS[@]}"; do
    if [ "$(cat /sys/class/drm/card0-"$MONITOR"/status)" == "connected" ] ; then
      connect "$MONITOR"
    elif [ "$(cat /sys/class/drm/card0-"$MONITOR"/status)" == "disconnected" ] ; then
      disconnect "$MONITOR"
    else
      exit
    fi
  done
fi

# shellcheck source=/home/pthorin/.fehbg
/home/$X_USER/.fehbg
