command -v gh > /dev/null
if [ $? -eq 0 ]; then
  source <(gh completion --shell bash)
fi
