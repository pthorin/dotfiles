#!/usr/bin/env bash
pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-headphones &&
  touch /tmp/headphones

