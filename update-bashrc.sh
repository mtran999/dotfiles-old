#!/bin/bash
# coding: utf-8
# update-bashrc.sh
# Set up git prompt/autocomplete and custom bashrc sourcing

gitfiles="git-completion.bash git-prompt.sh"

curdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
brc="$HOME/.bashrc"
echo -e "\n### CUSTOM BASHRC ###\n" >> $brc

# Add git stuff to bashrc
if [ ! -z "$gitfiles" ]; then
    for f in $gitfiles; do
        echo ". $curdir/$f" >> $brc
    done
    #echo "export GIT_PS1_SHOWDIRTYSTATE=1" >> $brc
    #echo -e "export PS1='\$(__git_ps1 \"(%s) \")'\$PS1" >> $brc
fi

echo "[ -r $curdir/bashrc ] && . $curdir/bashrc" >> $brc
echo "Updated $brc"
echo "Don't forget to source the file or restart your shell"
