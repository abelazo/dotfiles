#!/bin/bash

# <bitbar.title>Copy CF/SD photos</bitbar.title>
# <bitbar.author>Abel Guillen (abelazo@gmail.com)</bitbar.author>
# <bitbar.author.github>abelazo</bitbar.author.github>
# <bitbar.desc>Copies the photos from the CF or SD cards to the Desktop</bitbar.desc>
# <bitbar.version>1.1</bitbar.version>

# Hack for language not being set properly and unicode support
export LANG="${LANG:-en_US.UTF-8}"

function copy {
  source_folder=${1}
  target_folder=${2}
  mv "${source_folder}" "${target_folder}"
  chmod 755 "${target_folder}"
  chmod 644 "${target_folder}/*"
}

d300_source_folder="/Volumes/NIKON D300S/DCIM/301D300S"

if [[ "$1" = "D300_CF" ]]; then
  target_folder="$HOME/Desktop/301D300S_CF"
  if [ -d "${d300_source_folder}" ]; then
    copy "${d300_source_folder}" "${target_folder}"
    diskutil eject "/Volumes/NIKON D300S/"
    osascript -e 'display notification "Memory card photos copied to '${target_folder}'" with title "Copy photos" subtitle "CF card"'
  else
    osascript -e 'display notification "CF memory card not mounted.\nNothing to copy" with title "Copy photos" subtitle "CF card"'
  fi
fi

if [[ "$1" = "D300_SD" ]]; then
  target_folder="$HOME/Desktop/301D300S_SD"
  if [ -d "${d300_source_folder}" ]; then
    copy "${d300_source_folder}" "${target_folder}"
    diskutil eject "/Volumes/NIKON D300S/"
    osascript -e 'display notification "Memory card photos copied to '${target_folder}'" with title "Copy photos" subtitle "SD card"'
  else
    osascript -e 'display notification "SD memory card not mounted.\nNothing to copy" with title "Copy photos" subtitle "SD card"'
  fi
fi

z6_source_folder="/Volumes/NIKON Z 6_2/DCIM/100NZ6_2"

if [[ "$1" = "Z6_CF" ]]; then
  target_folder="$HOME/Desktop/100NZ6_2_CF"
  if [ -d "${z6_source_folder}" ]; then
    copy "${z6_source_folder}" "${target_folder}"
    diskutil eject "/Volumes/NIKON Z 6_2/"
    osascript -e 'display notification "Memory card photos copied to '${target_folder}'" with title "Copy photos" subtitle "CF card"'
  else
    osascript -e 'display notification "CF memory card not mounted.\nNothing to copy" with title "Copy photos" subtitle "CF card"'
  fi
fi

if [[ "$1" = "Z6_SD" ]]; then
  target_folder="$HOME/Desktop/100NZ6_2_SD"
  if [ -d "${z6_source_folder}" ]; then
    copy "${z6_source_folder}" "${target_folder}"
    diskutil eject "/Volumes/NIKON Z 6_2/"
    osascript -e 'display notification "Memory card photos copied to '${target_folder}'" with title "Copy photos" subtitle "SD card"'
  else
    osascript -e 'display notification "SD memory card not mounted.\nNothing to copy" with title "Copy photos" subtitle "SDF card"'
  fi
fi


echo '📸'
echo "---"

echo "Copy D300 CF| bash='$0' param1=D300_CF terminal=false refresh=true"
echo "Copy D300 SD| bash='$0' param1=D300_SD terminal=false refresh=true"
echo "Copy Z6 CF| bash='$0' param1=Z6_CF terminal=false refresh=true"
echo "Copy Z6 SD| bash='$0' param1=Z6_SD terminal=false refresh=true"
