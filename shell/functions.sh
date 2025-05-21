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
  declare -a profiles
  output=$(aws configure list-profiles | sort)
  profiles=(${output})

  height=$((${#profiles[@]} + 4)) # 4 = Fitler headers & footers
  selected_profile=$(echo ${profiles[@]} | tr ' ' '\n' | gum filter --select-if-one --limit=1 --height=${height} --header "AWS profiles (${#profiles[@]})" --value "${1}")

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
    PROFILE=$(gum style --foreground 4 "${AWS_PROFILE}")
    ACCOUNT=$(gum style --padding "0 1" --foreground 2 "(${aws_account_id})")
    gum join --horizontal "${PROFILE}" "${ACCOUNT}"
  else
    exit ${?}
  fi
}

function awi() {
  if [[ -n "$AWS_PROFILE" ]]; then
    aws_account_id=$(aws sts get-caller-identity --query "Account" --output text 2> /dev/null)
    PROFILE=$(gum style --foreground 4 "${AWS_PROFILE}")
    ACCOUNT=$(gum style --padding "0 1" --foreground 2 "(${aws_account_id})")
    gum join --horizontal "${PROFILE}" "${ACCOUNT}"
  fi
}
