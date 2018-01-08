#!/bin/sh
#
# Script by Daniel Radtke <DanTheMan827>
#
source /etc/preinit
script_init

script_path="$(dirname "$0")"

if [ "$cfg_usb_rw" == "y" ]; then
  unset cfg_usb_rw
  decodepng "$script_path/disabled.png" > /dev/fb0
else
  cfg_usb_rw='y'
  decodepng "$script_path/enabled.png" > /dev/fb0
fi

save_config
reboot