command -v kubectl > /dev/null
if [ $? -eq 0 ]; then
  source <(kubectl completion bash)
  alias k=kubectl
  complete -o default -F __start_kubectl k
fi
