# New commands
alias please='sudo'
alias sha1='openssl sha1'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%d-%m-%Y %T"'
alias nowtime='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'

# Command options
alias emacs='emacs -nw'
alias ls='ls -G'
alias mkdir='mkdir -pv'

# Routes
alias tmp='pushd $WS/tmp'

# Safety nets
# do not delete / or prompt if deleting more than 3 files at a time
# alias rm='rm -I'
# confirmations if command overwrites an existing file
# alias mv='mv -i'
# alias cp='cp -i'
# alias ln='ln -i'

## Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Git
# alias gaa="git add -A"
# alias gc="dot git commit"
# alias gca="git add --all && git commit --amend --no-edit"
# alias gco="git checkout"
# alias gd="dot git pretty-diff"
# alias gs="git status -sb"
# alias gf="git fetch --all -p"
# alias gps="git push"
# alias gpsf="git push --force"
# alias gpl="git pull --rebase --autostash"
# alias gl="dot git pretty-log"

# Docker
alias dc_stopall='docker container stop $(docker container ls -a -q)'
alias dc_rmall='docker container rm $(docker container ls -a -q)'
alias di_rmall='docker image rm $(docker image ls -a -q)'
alias ds_prune='docker system prune -a -f'
alias dv_prune='docker volume prune -f'

# Kubernetes
alias kctx='kubectx'
alias kns='kubens'
alias kst='echo -n "Context:   "; kctx -c; echo -n "Namespace: "; kns -c | column -t'
