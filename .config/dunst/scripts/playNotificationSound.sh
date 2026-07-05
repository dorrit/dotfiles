#!/bin/bash

set -euo pipefail

sound_file="/usr/share/sounds/freedesktop/stereo/message.oga"

if command -v canberra-gtk-play >/dev/null 2>&1 && canberra-gtk-play -i message >/dev/null 2>&1; then
  exit 0
fi

if command -v paplay >/dev/null 2>&1; then
  paplay "$sound_file" >/dev/null 2>&1 && exit 0
fi

if command -v pw-play >/dev/null 2>&1; then
  pw-play "$sound_file" >/dev/null 2>&1 && exit 0
fi
