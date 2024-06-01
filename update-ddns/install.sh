#!/bin/bash

set -x

install -m 0644 ddns-update.service /etc/systemd/system/
install -m 0644 ddns-update.timer /etc/systemd/system/
install -m 0755 update-ddns-ping6 /usr/local/bin/
install -m 0644 update-ddns-ping6.conf /etc/
systemctl enable ddns-update
systemctl start ddns-update
