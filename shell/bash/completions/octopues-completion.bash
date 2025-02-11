command -v octopus > /dev/null
if [ $? -eq 0 ]; then
  source <(octopus completion bash)
fi
