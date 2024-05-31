# APRS I-Gate station configs for JF1PEQ,JI2IWN

This repo include config files to enable APRS I-Gate Station for JF1PEQ and JI2IWN.

## Contents

- `direwolf.conf` : config file for direwolf
- `start-rtlfm-direwolf.sh` : bash script to start rtl_fm and direwolf


## How to install

- prepare Ubuntu or Debian on PC or Raspberry PI
- create a user `aprs` 
- Run command `sudo apt install direwolf rtl_fm` to install.
- Put files of this repo into `/home/aprs/aprs-direwolf` .
- test to execute `/home/aprs/aprs-direwolf/start-rtlfm-direwolf.sh`
  - To get permission to use RTL-SDR device, need to add the user `aprs` into some groups.
- Add following to `/etc/rc.local`

```
su aprs /home/aprs/aprs-direwolf/start-rtlfm-direwolf.sh
```






