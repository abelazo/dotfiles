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
  gdate -d @$(( ($1 + 500) / 1000 ))
}

function kctx() {
  if [ -z $1 ]; then
    kubectl config get-contexts
  else
    kubectl config use-context ${1}
  fi
}

function portainer() {
  docker volume create portainer_data
  docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
}
