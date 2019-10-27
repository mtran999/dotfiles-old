#!/bin/bash
# coding: utf-8
#
# Set up symlinks for dotfiles

# Update this list with new dotfiles
dotfiles="vimrc editorconfig tmux.conf"

curdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Check that all the specified dotfiles exist
missing=""
for f in $dotfiles; do
    fpath="$curdir/$f"
    if [ ! -e "$fpath" ]; then
        missing+="$fpath"
    fi
done

if [ ! -z "$missing" ]; then
    echo "Error: Missing specified dotfile(s)"
    echo "Make sure these dotfiles exist:"
    for f in $missing; do
        echo "  $f"
    done
    exit 1
fi

# Check for existing dotfiles that might get overwritten
existing=""
for f in $dotfiles; do
    fpath="$HOME/.$f"
    if [ -e "$fpath" ]; then
        existing+="$fpath "
    fi
done

if [ ! -z "$existing" ]; then
    echo "Error: Existing files will get overwritten"
    echo "Please move these files before running the script:"
    for f in $existing; do
        echo "  $f"
    done
    exit 1
fi

# Make symlinks for each dotfile
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
