#!/bin/bash
sleep 5

while pgrep steamlink &>/dev/null; do
  sleep 1
done

sudo systemctl restart kodi
