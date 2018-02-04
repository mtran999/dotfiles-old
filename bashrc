### Custom bashrc! Whooo
DOTDIR=~/.dotfiles

## Aliases
alias ls='ls -GFh' # where G=color, F=filetypes, h=human-readable

## Git
. $DOTDIR/git-completion.bash
. $DOTDIR/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

## Homebrew
export HOMEBREW_NO_ANALYTICS=1

## Prompt
_emot() { if [[ $? -eq 0 ]]; then echo ":]"; else echo ":["; fi }
export PS1='$(_emot) $(__git_ps1 "(%s) ")\$ '

## Vagrant
# Disable shared folder symlinks by default
#VAGRANT_DISABLE_VBOXSYMLINKCREATE=1
