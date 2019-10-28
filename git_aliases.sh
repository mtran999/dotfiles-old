#!/bin/bash
#
# Set up git aliases
# Chose to avoid version-controlling a .gitconfig file with the aliases defined
# to avoid version-controlling personal info (like name and email).

git_alias() {
  git config --global alias."$1" "$2"
}
#git config --global alias."s" "status"
#git config --global alias."a" "add"
#git config --global alias."aa" "add -A"
#git config --global alias."cm" "commit"
#git config --global alias."co" "checkout"
#git config --global alias."ls" "log --oneline"
#git config --global alias."last" "log --oneline -1"
#git config --global alias."graph" "log --graph --decorate --oneline --all"
#git config --glboal alias."rf" "!git reset --hard HEAD && git clean -d -f"

git_alias "s" "status"
git_alias "a" "add"
git_alias "aa" "add -A"
git_alias "cm" "commit"
git_alias "co" "checkout"
git_alias "ls" "log --oneline"
git_alias "last" "log --oneline -1"
git_alias "graph" "log --graph --decorate --oneline --all"
git_alias "rf" "!git reset --hard HEAD && git clean -d -f"
