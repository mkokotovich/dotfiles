#!/bin/bash
hub fork
~/dotfiles/bin/fix_github_https_repo.sh
git fetch mkokotovich
git branch --set-upstream-to mkokotovich/main main
git remote rename origin upstream
git remote rename mkokotovich origin
git remote -v
