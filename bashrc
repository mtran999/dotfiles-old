# Custom bashrc

# Git
#. $HOME/.dotfiles/git-completion.bash
#. $HOME/.dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Prompt
_errno() { printf "[%03d]\n" $?; }
#export PS1='$(__git_ps1 "(%s) ")$(_errno) \W \$ '
#export PS1='$(__git_ps1 "(%s) ")\W \$ '
#export PS1='$(__git_ps1 "(%s) ")'$PS1
export PS1='$(__git_ps1 "(%s) ")$(_errno) '$PS1

# Python
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

# Vagrant
# Disable shared folder symlinks by default
#VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

# Pipenv
#export PIPENV_VENV_IN_PROJECT=1
