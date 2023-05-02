#!/bin/bash

# <bitbar.title>Copy CF/SD photos</bitbar.title>
# <bitbar.author>Abel Guillen (abelazo@gmail.com)</bitbar.author>
# <bitbar.author.github>abelazo</bitbar.author.github>
# <bitbar.desc>Copies the photos from the CF or SD cards to the Desktop</bitbar.desc>
# <bitbar.version>1.1</bitbar.version>

# Hack for language not being set properly and unicode support
export LANG="${LANG:-en_US.UTF-8}"

function copy {
  target_folder=${1}
  mv /Volumes/NIKON\ D300S/DCIM/301D300S ${target_folder}
  chmod 755 ${target_folder}
  chmod 644 ${target_folder}/*
}

function eject {
  diskutil eject ${1}
}

if [[ "$1" = "cf" ]]; then
  target_folder=$HOME/Desktop/301D300S_CF
  if [ -d /Volumes/NIKON\ D300S/DCIM/301D300S ]; then
    copy ${target_folder}
    diskutil eject "/Volumes/NIKON D300S"/
    osascript -e 'display notification "Memory card photos copied to '${target_folder}'" with title "Copy photos" subtitle "CF card"'
  else
    osascript -e 'display notification "CF memory card not mounted.\nNothing to copy" with title "Copy photos" subtitle "CF card"'
  fi
fi

if [[ "$1" = "sd" ]]; then
  target_folder=$HOME/Desktop/301D300S_SD
  if [ -d /Volumes/NIKON\ D300S/DCIM/301D300S ]; then
    copy ${target_folder}
    diskutil eject "/Volumes/NIKON D300S"/
    osascript -e 'display notification "Memory card photos copied to '${target_folder}'" with title "Copy photos" subtitle "SD card"'
  else
    osascript -e 'display notification "SD memory card not mounted.\nNothing to copy" with title "Copy photos" subtitle "SD card"'
  fi
fi

echo '📸'
echo "---"

echo "Copy CF| bash='$0' param1=cf terminal=false refresh=true"
echo "Copy SD| bash='$0' param1=sd terminal=false refresh=true"
