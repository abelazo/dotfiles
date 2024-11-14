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

  declare -a profiles
  output=$(aws configure list-profiles | sort)
  profiles=(${output})

  default_option=""
  test -n "${AWS_PROFILE}" && default_option="--selected ${AWS_PROFILE}"
  selected_profile=$(echo ${profiles[@]} | tr ' ' '\n' | gum choose --ordered --select-if-one --height 15 ${default_option} --header "AWS profiles (${#profiles[@]})")

  [[ -z "${selected_profile}" ]] && return 1 || export AWS_PROFILE=${selected_profile}

  if [ ${?} -eq 0 ]; then
    # Check if we already loged in
    aws_account_id=$(aws sts get-caller-identity --query "Account" --output text 2> /dev/null)
    if [ ${?} -ne 0 ];  then
      aws sso login
      if [ ${?} -ne 0 ];  then
        exit ${?}
      fi
      aws_account_id=$(aws sts get-caller-identity --query "Account" --output text 2> /dev/null)
    fi
    echo "\"${AWS_PROFILE}\",\"${aws_account_id}\"" | gum table --print --columns "Profile,Account"
    if [[ "${1}" == "-d" ]]; then
      aws configure list
    fi
  else
    exit ${?}
  fi
}
