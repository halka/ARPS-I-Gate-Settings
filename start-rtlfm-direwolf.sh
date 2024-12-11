#!/bin/bash

# -l : Squelch Level
# -g : Tuner Gain
# -d : Dongle's Device Index or S/N

here="$(dirname $0)"
direwolf_conf="$here/direwolf.conf"
pcm_rate=48000
device=144430
squelch_level=70

[ -z "$squelch_level" ] && squelch_level=70

(
  rtl_fm -M fm -f 144.64M -f 144.66M -f 431.04M -d $device -s $pcm_rate -l $squelch_level -  | \
  tee >(direwolf -c "$direwolf_conf" -r $pcm_rate -D 1 -t 0 -B 1200 - )| \
  direwolf -c "$direwolf_conf" -r $pcm_rate -D 1 -t 1 -B 9600 - 
) 
