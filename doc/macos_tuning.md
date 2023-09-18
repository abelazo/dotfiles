# Installation Guide

## On a new MacOS
* Register the laptop in the MDM if needed
* Update MacOS
* SSH configuration
  - Copy SSH keys to (`~/.ssh`) from previous computer or from 1password
  - `chmod -R 700 ~/.ssh`
* GPG configuration
  - Migrate GPG keys (`~/.gnupg`) from previous computer or from 1password
  - `chmod -R 700 ~/.gnupg`
* Install basic software:
  - Firefox
  - iterm
  - 1password
  - Bitwarden
* Configure keyboard input sources
  - Configure `Preferences/Keyboard/Shortcuts` for English & Spanish layouts.
  - Configure `Preferences/Keyboard/Shortcuts` Ctrl+Alt+Space for next keybard layout.
* Create worspace folders (`personal`, `tw`, `work`) and create:
  - environment.folder
  - gitconfig.folder
    ```
    [core]
      sshCommand = ssh -i ~/.ssh/<SSH_KEY> -F /dev/null
    [user]
      name = <USERNAME>
      email = <EMAIL>
      signingkey = <GPG_SIGNING_KEY>
    ```
* Clone dotfiles in ` <PERSONAL_PATH>/dotfiles`
* Setup MacOs by executing `<DOTFILES>/os/mac/mac-os_setup.sh`
* Install core software `$ brew bundle --file=<DOTFILES>/os/mac/brew/Brefile`
* Configure iterm
  - Select load preferences from URL and use `<PERSONAL_PATH>/dotfiles/os/mac/iTerm`.
  - Create symbolic links to
    - `.emacs`
    - `.inputrc`
    - `.gitconfig`
    - `.bash_profile`
* Configure Firefox with extensions:
  - 1password
  - CleanURLs
  - Cookie AutoDelete
  - Decentralizedeyes
  - Disconnect
  - DuckDuckGo Privacy Essentials
  - Easy Container Shortcuts
  - Fireefox Multi-Account Containers
  - Gitako
  - Mailvelope
  - Privacy Badger
  - uBlock Origin
* Install additional software:
  - Google Drive
  - Yubikey manager
  - DisplayLink manager
* If using colima, install docker plugins:
  - Make sure docker-buildx and docker-compose brew formulae are installed.
  - `ln -sfn $(brew --prefix)/opt/docker-buildx/bin/docker-buildx ~/.docker/cli-plugins/docker-buildx`
  - `ln -sfn $(brew --prefix)/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose`
