# Installation Guide

## On a new MacOS (migrating from another)
* Update Mac 
*  SSH keys (`~/.ssh`) from the previous computer to the new one
  - `chmod -R 700 ~/.ssh`
* Migrate GPG keys (`~/.gnupg`) from the previous computer to the new one
  - `chmod -R 700 ~/.gnupg`
* Execute the dotfiles installer
* Install **Spectacle**
  - Gran permissions
  - Start on login
  - Run as a background application
* Configure `Preferences/Keyboard/Shortcuts` for English & Spanish layouts.
* Configure `Preferences/Keyboard/Shortcuts` Ctrl+Alt+Space for next keybard layout.

* Open JetBrains Toolbox and login
  - Login
  - Enable "generate shell scripts in ~/bin"
  - Install IntelliJ
* Open IntelliJ
  - Import from JetBrains account
  - Sync plugins
  - Execute `dot intellij add_code_templates`

* Install emacs
  - Link .emacs preferences

* Download iTerm
  - Install
  - Select load preferences from URL and use ~/.dotfiles/mac/iTerm. On the next prompt select "NOT copy"
