#!/bin/bash

set -x

install -m 0644 reboot.service /etc/systemd/system/
install -m 0644 reboot.timer /etc/systemd/system/
sudo systemctl enable --now reboot.timer
