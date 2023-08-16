#!/usr/bin/env bash
#pactl set-sink-port alsa_output.pci-0000_00_1f.3.analog-stereo analog-output-headphones &&
# pactl set-sink-port bluez_sink.E4_41_22_13_88_57.a2dp_sink &&
set -x
pactl set-source-port alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__source \[In\]\ Mic2 ;
pactl set-sink-port alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__sink \[Out\]\ Headphones ;
pactl set-default-sink alsa_output.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__sink ;
  pactl set-default-source alsa_input.pci-0000_00_1f.3-platform-skl_hda_dsp_generic.HiFi__hw_sofhdadsp__source ;
  touch /tmp/headphones

