# Custom bashrc

# Git
#. $HOME/.dotfiles/git-completion.bash
#. $HOME/.dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

# Colors
reset='\033[0m'
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
orange='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
light_gray='\033[0;37m'
dark_gray='\033[1;30m'
light_red='\033[1;31m'
light_green='\033[1;32m'
yellow='\033[1;33m'
light_blue='\033[1;34m'
light_purple='\033[1;35m'
light_cyan='\033[1;36m'
white='\033[1;37m'

# Prompt
_errno() {
    code=$?
    if [ $code -eq 0 ]; then
        printf "$green[%03d]$reset" $code
    else
        printf "$red[%03d]$reset" $code
    fi
}
PS1_errno='$(_errno)'
PS1_git='$(__git_ps1 "(%s) ")'
export PS1="$PS1_git$PS1_errno \W \$ "
#export PS1='$(__git_ps1 "(%s) ")$(_errno) '$PS1

# Vagrant
# Disable shared folder symlinks by default
#VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

# Pipenv
#export PIPENV_VENV_IN_PROJECT=1
