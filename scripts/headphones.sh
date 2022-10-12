#!/usr/bin/env bash
#pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-headphones &&
pactl set-sink-port bluez_sink.E4_41_22_13_88_57.a2dp_sink &&
  touch /tmp/headphones

