#!/usr/bin/env bash

octopus::get_space_id() {
  space_name=$1
  if [[ "${space_name}" == "" ]]; then
    space_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces" ApiKey==${API_KEY} | jq -r '.Items[] | [.Name, .Id] | @csv' | gum table --columns "Name, Id" --return-column 2)
  else
    space_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces" ApiKey==${API_KEY} | jq -r '.Items[] | select(.Name == "'${space_name}'") | .Id')
  fi
  echo ${space_id}
}

octopus::get_space_slug() {
  space_name=$1
  if [[ "${space_name}" == "" ]]; then
    space_slug=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces" ApiKey==${API_KEY} | jq -r '.Items[] | .Slug' | gum choose)
  else
    space_slug=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces" ApiKey==${API_KEY} | jq -r '.Items[] | select(.Name == "'${space_name}'") | .Slug')
  fi
  echo ${space_slug}
}

octopus::get_release_id() {
  space_id=$1
  release_version=$2
  if [[ "${release_version}" == "" ]]; then
    release_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/releases" ApiKey==${API_KEY} | jq -r '.Items[] | [.Version, .Id] | @csv' | gum table --columns "Version, Id" --return-column 2)
  else
    release_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/releases" ApiKey==${API_KEY} | jq -r '.Items[] | select(.Version == "'${release_version}'") | .Id')
  fi
  echo ${release_id}
}

octopus::get_environment_id() {
  space_id=$1
  environment_name=$2
  if [[ "${environment_name}" == "" ]]; then
    environment_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/environments" ApiKey==${API_KEY} | jq -r '.Items[] | [.Name, .Id] | @csv' | gum table --columns "Name, Id" --return-column 2)
  else
    environment_id=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/environments" ApiKey==${API_KEY} | jq -r '.Items[] | select(.Name == "'${environment_name}'") | .Id')
  fi
  echo ${environment_id}
}
