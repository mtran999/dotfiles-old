# dotfiles

## Description
This repo is mostly for personal use. But anyone is free to use this stuff.

## Instructions
### 1. Clone
Clone repo to home directory.
```
$ cd
$ git clone https://github.com/mintyfwesh/dotfiles.git
```

### 2. Vim
To use vimrc, create symlink to it.
```
$ ln -s ~/dotfiles/vimrc ~/.vimrc
```

### 3. Bash
Add line to ~/.bashrc (on Linux) or ~/.bash_profile (on macOS) : 
```
[[ -r ~/dotfiles/bashrc ]] && . ~/dotfiles/bashrc
```
