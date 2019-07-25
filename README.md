# dotfiles

## Description
This repo is mostly for personal use. But anyone is free to use this stuff.

## Instructions
### 1. Clone
Clone repo to home directory.
```
$ cd
$ git clone https://github.com/minht1/dotfiles.git ~/.dotfiles
```

### 2. Symlinks
Create symbolic links for files you want to use. For example:
```
$ ln -s ~/.dotfiles/editorconfig ~/.editorconfig
```
(For convenience, run the provided mkdot.sh script)

### 3. Bash
To use the custom bashrc, add this line to ~/.bashrc (on Linux) or
~/.bash_profile (on macOS): 
```
[ -r ~/.dotfiles/bashrc ] && . ~/.dotfiles/bashrc
```
(For convenience, run the provided update-bashrc.sh script)
