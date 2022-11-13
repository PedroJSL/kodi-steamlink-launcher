#!/bin/bash
sudo systemctl stop kodi

sleep 0.5

while pgrep kodi &>/dev/null; do
  sleep 0.5
done

sudo openvt -c 1 -s -f -v -- su kodi -c "/usr/bin/steamlink & bash ~/.kodi/addons/plugin.program.steamlink/resources/lib/heartbeat.sh &"