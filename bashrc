# Custom bashrc

# Git
[ -r $HOME/.dotfiles/git-completion.bash ] && . $HOME/.dotfiles/git-completion.bash
[ -r $HOME/.dotfiles/git-prompt.sh ] && . $HOME/.dotfiles/git-prompt.sh
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
__errno_ps1() {
    code=$?
    fmt=$1
    if [ $code -eq 0 ]; then
        printf "$green"
        printf "$fmt" $code
    else
        printf "$red"
        printf "$fmt" $code
    fi
    printf "$reset"
}
__errsym_ps1() {
    code=$?
    if [ $code -eq 0 ]; then
        printf "$green"
        printf "[0] "
    else
        printf "$red"
        printf "[!] "
    fi
    printf "$reset"
}
#PS1_errno='$(__errno_ps1 "[%03d] ")'
PS1_errno='$(__errsym_ps1)'
PS1_git=$yellow'$(__git_ps1 "(%s) ")'$reset
PS1_dir=$blue'\W '$reset
export PS1="\n$PS1_errno$PS1_git$PS1_dir\n\$ "
