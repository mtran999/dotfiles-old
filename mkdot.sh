#!/bin/bash
# coding: utf-8
# mkdot.sh
# Set up symlinks for dotfiles

dotfiles="vim editorconfig tmux.conf"
gitfiles="git-completion.bash git-prompt-sh"

# Check for existing dotfiles
existing=""
for f in $dotfiles; do
    fn="$HOME/.$f"
    if [ -e "$fn" ]; then
        existing+="$fn "
    fi
done

if [ ! -z "$existing" ]; then
    echo "Warning: Existing files will get overwritten"
    echo "Please move these files before running the script:"
    for f in $existing; do
        echo "  $f"
    done
    exit 1
fi

# Make symlinks for each dotfile
curdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
for f in $dotfiles; do
    from="$curdir/$f"
    to="$HOME/.$f"
    if ln -s "$from" "$to"; then
        echo "Successfully symlinked: $from -> $to"
    else
        echo "Unable to symlink: $from -> $to"
    fi
done
