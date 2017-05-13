# dotfiles

## Description
This repo is mostly for personal use. But anyone is free to use this stuff.

## Instructions
### 1. Clone
First off, clone repo to home directory.
```
$ git clone https://github.com/mintyfwesh/dotfiles.git
```

### 2. Vim
To use vimrc, create a symlink to it.
```
$ ln -s ~/dotfiles/vimrc ~/.vimrc
```

### 3. Git
To use git completion and git prompt, update ~/.bashrc with: 
```
[ -r ~/dotfiles/bashrc_git ] && . ~/dotfiles/bashrc_git
```
And stick this somewhere in bash prompt (PS1) variable: 
`$(__git_ps1 " (%s)")`

See [Git in Bash Documentation](https://git-scm.com/book/be/v2/Git-in-Other-Environments-Git-in-Bash)
for more info about this.
