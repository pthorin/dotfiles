#!/usr/bin/env bash
if [ -f /tmp/analog-stereo ]; then
  pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:hdmi-stereo+input:analog-stereo &&
  rm /tmp/analog-stereo
else
  pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo+input:analog-stereo &&
  touch /tmp/analog-stereo
fi

