command -v terraform > /dev/null
if [ $? -eq 0 ]; then
  #complete -C /usr/local/bin/terraform terraform
  complete -C terraform terraform
fi
