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
PROMPT_COMMAND=__prompt_command # func gets run after every bash command
__prompt_command() {
	if [[ $? -eq 0 ]]; then
		emot=":)"
	else
		emot=":("
	fi
	PS1='$(__git_ps1 "(%s) ")$emot \$ '
}
