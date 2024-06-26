#!/bin/bash

# -l : squelch level
# -g : tuner gain
thisdir="$(dirname $0)"
direwolf_conf="$thisdir/direwolf.conf"
pcm_rate=48000

(
  rtl_fm -M fm -f 144.64M -f 144.66M -f 431.04M -p 36 -s $pcm_rate  -l 70 -  | \
  tee >(direwolf -c "$direwolf_conf" -r $pcm_rate -D 1 -t 0 -B 1200 - | logger -t direwolf1)| \
  direwolf -c "$direwolf_conf" -r $pcm_rate -D 1 -t 0 -B 9600 - | logger -t direwolf9)  &
