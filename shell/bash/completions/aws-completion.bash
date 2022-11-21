AWS_COMPLETER_PATH=$(which aws_completer)
[[ -n "$AWS_COMPLETER_PATH" ]] && complete -C ${AWS_COMPLETER_PATH} aws
