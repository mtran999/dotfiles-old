# Homebrew
export HOMEBREW_NO_ANALYTICS=1

# Git
. ~/dotfiles/git-completion.bash
. ~/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='$(__git_ps1 "(%s) ")\$ '
