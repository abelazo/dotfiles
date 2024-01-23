# Brew rmtree
function brmtree() {
  brew rm $(join <(brew leaves) <(brew deps $1))
}

# Diff tool
function ediff() {
  emacs --eval "(ediff-files \"$1\" \"$2\")"
}
export -f ediff

function ttd() {
  if [ "${1}" == "-h" ]; then
    echo "ttd <timestamp> [secs]"
    return
  fi

  divisor=1000
  if [ "$2" == "secs" ]; then
    divisor=1
  fi
  gdate -d @$(( ($1 + 500) / ${divisor} ))
}

function portainer() {
  docker volume create portainer_data
  docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
}

function cd() {
  builtin cd "$@"

  if [[ -v VIRTUAL_ENV ]]; then
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate
      parentdir="$(dirname "$VIRTUAL_ENV")"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        deactivate
      fi
  fi

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    ## If env folder is found then activate the vitualenv
    if [[ -d ./.venv ]] ; then
      source ./.venv/bin/activate
    fi
  fi
}

function awp() {
  RED='\033[0;31m'
  NC='\033[0m' # No Color

  declare -A profiles
  for profile_name in $(aws configure list-profiles); do
    profiles[${profile_name}]=${profile_name}
  done

  export AWS_PROFILE=$(echo ${!profiles[@]} | tr ' ' '\n' | fzf --header 'Select the AWS account' --pointer='👉🏼' --bind "enter:become(echo {})")

  if [ ${?} -eq 0 ]; then
    aws configure list
  else
    exit ${?}
  fi
}
