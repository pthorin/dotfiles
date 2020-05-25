#!/usr/bin/env bash
if [ -f /tmp/headphones ]; then
  pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-speaker &&
  rm /tmp/headphones
else
  pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-headphones &&
  touch /tmp/headphones
fi

