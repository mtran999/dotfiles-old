#!/bin/bash
# coding: utf-8
#
# Set up symlinks for dotfiles

dotfiles="vimrc editorconfig tmux.conf"

# Check for existing dotfiles
existing=""
for f in $dotfiles; do
    fpath="$HOME/.$f"
    if [ -e "$fpath" ]; then
        existing+="$fpath "
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
    if [ ! -r "$from" ]; then
        echo "Error: Unable to read dotfile: $from"
        continue
    fi
    if ln -s "$from" "$to"; then
        echo "Success: Created symlink: $from -> $to"
    else
        echo "Error: Unable to create symlink: $from -> $to"
    fi
done
