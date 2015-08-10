#!/usr/bin/env bash

# Truncate logs
find /var/log -type f -regex ".*\.gz$" -delete
find /var/log -type f -regex ".*\.[0-9]$" -delete
find /var/log -type f -exec truncate -s 0 {} +

# init 1
# mount -o remount,ro /dev/sda1
# zerofree /dev/sda1
# halt
