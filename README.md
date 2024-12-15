# APRS I-Gate Station Configs

Receive Various frequencies and baudrates.

## Contents

- `direwolf.conf` : config file for direwolf
- `start-rtlfm-direwolf.sh` : bash script to start rtl_fm and direwolf

## Prepare for Operating

- Get Raspberry PI and SDR Dongle
- Install `direwolf` and `rtl_fm` there are depends on your dongle.
- Edit `direwolf.conf` as yours
- Test Run for Operating `./start-rtlfm-direwolf.sh`
  ```
  ./start-rtlfm-direwolf.sh
  ```
- Start When Reboot by crontab
`cotntab -e`
`@reboot /usr/bin/bash /path/to/start-rtlfm-direwolf.sh`
  <!-- Start and Enable as a Service
  - Modfify `aprs.service` and Copy to `/etc/systemd/system` -->

## Thanks
- Masaru Yokoi (JF1PEQ)
  - [masaruyokoi/aprs-direwolf-config-jf1peq: APRS direwolf + RTL-SDR I-Gate site config for JF1PEQ](https://github.com/masaruyokoi/aprs-direwolf-config-jf1peq)