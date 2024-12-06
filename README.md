# APRS I-Gate Station Configs

Receive Various frequencies and baudrate.

## Contents

- `direwolf.conf` : config file for direwolf
- `start-rtlfm-direwolf.sh` : bash script to start rtl_fm and direwolf
- `arps.service` : service file

## Prepare for Operating

- Prepare Ubuntu or Debian on PC or Raspberry PI
- Install `direwolf` and `rtl_fm` there are depends on your dongle.
- Create a user `aprs`.
- Edit `direwolf.conf`
- Test Run for Operating `./start-rtlfm-direwolf.sh`
  ```
  su aprs ./start-rtlfm-direwolf.sh
  ```
  - To get permission to use RTL-SDR device, need to add the user `aprs` into some groups.
- Start and Enable as a Service
  - Modfify and copy to `/etc/systemd/system`

## Thanks
- Masaru Yokoi (JF1PEQ)
  - [masaruyokoi/aprs-direwolf-config-jf1peq: APRS direwolf + RTL-SDR I-Gate site config for JF1PEQ](https://github.com/masaruyokoi/aprs-direwolf-config-jf1peq)