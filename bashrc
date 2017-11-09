### Custom bashrc! Whooo

## Aliases
alias ls='ls -GFh' # where G=color, F=filetypes, h=human-readable

## Git
. ~/dotfiles/git-completion.bash
. ~/dotfiles/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

## Homebrew
export HOMEBREW_NO_ANALYTICS=1

## Prompt
export PS1='$(__git_ps1 "(%s) ")$([[ $? -eq 0 ]] && echo ":]" || echo ":[") \$ '
