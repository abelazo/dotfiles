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
    all_channels=$(http --print b GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/channels" ApiKey==${API_KEY} take==1000) # TODO: Implement pagination
    all_projects=$(http --print b GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/projects" ApiKey==${API_KEY})
    all_releases=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/releases" ApiKey==${API_KEY})

    release_id=$(jq -r -n --argjson channels "$all_channels" --argjson releases "$all_releases" --argjson projects "$all_projects" '
      $releases.Items[] as $release |
      $channels.Items[] as $channel |
      $projects.Items[] as $project |
      select($release.ChannelId == $channel.Id and $release.ProjectId == $project.Id) |
      [$project.Name, $channel.Name, $release.Version, $release.Id] |
      @csv' | gum table --columns "Project,Channel,Version,Id" --return-column 4)
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

octopus::get_projec_name() {
  space_id=$1
  project_id=$2
  project_name=$(http GET "https://${OCTOPUS_INSTANCE}.octopus.app/api/spaces/${space_id}/projects" ApiKey==${API_KEY} | jq -r '.Items[0] | select(.Id == "'${project_id}'").Name')
  echo ${project_name}
}
