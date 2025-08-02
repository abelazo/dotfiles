#!/usr/bin/env bash

# <bitbar.title>Copy CF/SD photos</bitbar.title>
# <bitbar.author>Abel Guillen (abelazo@gmail.com)</bitbar.author>
# <bitbar.author.github>abelazo</bitbar.author.github>
# <bitbar.desc>Copies the photos from the CF or SD cards to the Desktop</bitbar.desc>
# <bitbar.version>1.1</bitbar.version>

# Hack for language not being set properly and unicode support
export LANG="${LANG:-en_US.UTF-8}"

d300_volume="/Volumes/NIKON D300S"
d300_folder="301D300S"

z6_volume="/Volumes/NIKON Z 6_2"
z6_folder="100NZ6_2"

function copy {
  camera=${1}
  card=${2}

  folder=$d300_folder
  volume=$d300_volume
  [[ "$camera" == "Z6" ]] && folder=$z6_folder && volume=$z6_volume

  source_folder="${volume}/DCIM/${folder}"
  target_folder="$HOME/Desktop/${folder}_${card}"

  if [[ -d "$source_folder" ]]; then
    mv "$source_folder" "$target_folder"
    chmod 755 "$target_folder"
    chmod 644 "$target_folder/*"

    diskutil eject "$volume/"

    notification="$camera photos from $card card copied to ${folder}_${card}"
    title="$camera photos"
    subtitle="$card card"
    osascript -e "display notification \"$notification\" with title \"$title\" subtitle \"$subtitle\""
  else
    notification="Memory card not mounted. Nothing to copy from"
    title="$camera photos"
    subtitle="$card card"
    osascript -e "display notification \"$notification\" with title \"$title\" subtitle \"$subtitle\""
  fi
}

if [[ "$1" == "D300" || "$1" == "Z6" ]]; then
  copy "$1" "$2"
fi

echo '📸'
echo "---"

echo "D300 - CF| bash='$0' param1=D300 param2=CF terminal=false refresh=true"
echo "D300 - SD| bash='$0' param1=D300 param2=SD terminal=false refresh=true"
echo "Z6 - CF| bash='$0' param1=Z6 param2=CF terminal=false refresh=true"
echo "Z6 - SD| bash='$0' param1=Z6 param2=SD terminal=false refresh=true"
