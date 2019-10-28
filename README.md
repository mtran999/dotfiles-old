# dotfiles

## Description
This repo is mostly for personal use. But anyone is free to use this stuff.

## Instructions
### 1. Clone
Clone repo to home directory.
```
$ cd
$ git clone https://github.com/m1nht/dotfiles.git ~/.dotfiles
```

### 2. Symlinks
Create symbolic links for files you want to use. For example:
```
$ ln -s ~/.dotfiles/editorconfig ~/.editorconfig
```
(For convenience, run the provided `setup.sh` script)

### 3. Custom Bash Prompt
To use the custom bash prompt, add this line to ~/.bashrc (on Linux) or
~/.bash_profile (on macOS):
```
[ -r $HOME/.dotfiles/bash_prompt ] && . $HOME/.dotfiles/bash_prompt
```

### 4. Git Aliases
To add some convenient git aliases, run the provided `git_aliases.sh` script.
