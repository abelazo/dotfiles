command -v jira > /dev/null
if [ $? -eq 0 ]; then
  source <(jira completion bash)
fi
