#!/usr/bin/env bash

octopus::get_space() {
  space_name=$1
  if [[ "${space_name}" == "" ]]; then
    space_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces" ApiKey==${API_KEY} | jq -r '.Items[] | [.Name, .Id] | @csv' | gum table --columns "Name, Id" | cut -d ',' -f 2)
  else
    space_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces" ApiKey==${API_KEY} | jq -r '.Items[] | select(.Name == "'${space_name}'") | .Id')
  fi
  echo ${space_id}
}
