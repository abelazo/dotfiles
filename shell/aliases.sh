alias emacs='emacs -nw'
alias ls='ls -G'
alias tmp='cd $HOME/tmp'

# Preview all files in the current subtree 
alias preview="fzf --preview 'bat --color \"always\" {}'"

# Docker
alias dc_stopall='docker stop $(docker container ls -a -q)'
alias dc_rmall='docker rm $(docker container ls -a -q)'
alias ds_prune='docker system prune -a -f'
alias dv_prune='docker volume prune -f'

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
