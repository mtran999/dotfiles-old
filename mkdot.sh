#!/bin/bash
# coding: utf-8
# mkdot.sh
# Set up symlinks for dotfiles

old_dir=~/.dotfiles.old
dotfiles=vimrc gitconfig tmux.conf

# Make .dotfiles.old to store existing dotfiles (if any)
if [ -d $old_dir ]; then
    mkdir $old_dir
    echo "Created $old_dir"
fi

# Make symlinks for each dotfile
for dotf in dotfiles; do
    curr_path=~/.$dotf
    # If dotfile exists, move it to old_dir
    if [ -f $curr_path ]; then
        mv $curr_path $old_dir
        echo "Moved existing $curr_path to $old_dir"
    fi
    # Make symlink
    ln -s $dotf $curr_path
    echo "Linked $dotf"
done

