command -v terraform > /dev/null
if [ $? -eq 0 ]; then
  complete -C terraform terraform
fi
