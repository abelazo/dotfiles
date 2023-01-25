export HISTCONTROL=ignoredups
export HISTSIZE=5000
export HISTTIMEFORMAT="%h %d %H:%M:%S "

# hstr
export HSTR_CONFIG=hicolorm,case-sensitive,raw-history-view

# fzf
export FZF_DEFAULT_OPTS="
  --bind='alt-enter:execute(emacs -nw {})+abort'
  --color=pointer:#ebdbb2,bg+:#3c3836,fg:#ebdbb2,fg+:#fbf1c7,hl:#8ec07c,info:#928374,header:#fb4934
  --reverse
"

# Disable the bash deprecation warning
export BASH_SILENCE_DEPRECATION_WARNING=1

# Java
export JAVA_HOME="$HOME/.sdkman/candidates/java/current"

export HOMEBREW_AUTO_UPDATE_SECS=604800 # 1 week
export HOMEBREW_NO_ANALYTICS=true
export HOMEBREW_BUNDLE_FILE_PATH="$DOTFILES_PATH/mac/brew/Brewfile"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export path=(
  "$DOTFILES_PATH/bin"
  "$HOME/.krew/bin"
  "$JAVA_HOME/bin"
  "/usr/local/bin"  # This contains all Brew binaries (zsh...)
  "/usr/local/sbin" # This contains all Brew binaries
  "/bin"            # macOS zsh is here
  "/usr/bin"
  "/usr/sbin"
  "/sbin"
)
