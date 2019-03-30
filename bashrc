# Custom bashrc! Whooo

#####################
# Table of Contents #
#####################
# - Aliases
# - Git
# - Homebrew
# - Path
# - Pipenv
# - Prompt
# - Python
# - Vagrant

## Aliases
alias ls='ls -GFhH' # where G=color, F=filetypes, h=human-readable, H=follow-symlinks
alias venv='source env/bin/activate'

## Git
DOTDIR=~/.dotfiles
. $DOTDIR/git-completion.bash
. $DOTDIR/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

## Homebrew
export HOMEBREW_NO_ANALYTICS=1

## Path
PATH="$PATH:$HOME/bin"              # For personal scripts
PATH="$PATH:/Library/TeX/texbin"    # For TeX packages
export PATH

## Pipenv
export PIPENV_VENV_IN_PROJECT=1

## Prompt
_emot() { if [[ $? -eq 0 ]]; then echo "{^-^}"; else echo "{'A'}"; fi }
_errno() { echo "[$?]"; }
#export PS1='$(__git_ps1 "(%s) ")$(_emot) \$ '
export PS1='$(__git_ps1 "(%s) ")\W \$ '

## Python
#env_dir=env/bin/activate
#_venv() {
#  if [[ $# -eq 0 ]]; then
#    if [[ -r $env_dir ]]; then
#      source $env_dir
#    else
#      echo "error: missing env/ directory"
#    fi
#  elif [[ $# -eq 1 ]]; then
#    if [[ -r $1/bin/activate ]]; then
#      source $1/bin/activate
#    else
#      echo "error: unable to read $1/bin/activate"
#    fi
#  else
#    echo "error: too many arguments"
#  fi
#}
#alias venv=_venv

## Vagrant
# Disable shared folder symlinks by default
#VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

