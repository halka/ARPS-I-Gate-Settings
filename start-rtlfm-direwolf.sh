#!/bin/bash

here="$(dirname $0)"
direwolf_conf="$here/direwolf.conf"
pcm_rate=48000
device=00000001
squelch_level=35
gain=0
pll=36

[ -z "$squelch_level" ] && squelch_level=70

(
  rtl_fm -f 144.64M:144.66M:431.04M:431.09M -p $pll -g $gain -s $pcm_rate -d $device -l $squelch_level -  | \
  tee >(direwolf -c "$direwolf_conf" -r $pcm_rate -D 1 -t 0 -B 1200 - | logger -t direwolf1)| \
  direwolf -c "$direwolf_conf" -r $pcm_rate -D 1 -t 0 -B 9600 - | logger -t direwolf9)  &