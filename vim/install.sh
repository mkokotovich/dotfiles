#!/bin/sh -e

echo "Installing pathogen.vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing vim-js-indent"
rm -rf ~/.vim/bundle/vim-js-indent
git clone https://github.com/jason0x43/vim-js-indent.git ~/.vim/bundle/vim-js-indent

echo "Installing typescript-vim"
rm -rf ~/.vim/bundle/typescript-vim
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim

echo "Installing python-syntax"
rm -rf ~/.vim/bundle/python-syntax
git clone https://github.com/vim-python/python-syntax.git ~/.vim/bundle/python-syntax

echo "vim fugitive - Git commands"
rm -rf ~/.vim/bundle/vim-fugitive
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
vim -u NONE -c "helptags ~/.vim/bundle/vim-fugitive/doc" -c q

echo "vim rhubarb - :Gbrowse to open a file in github"
rm -rf ~/.vim/bundle/vim-rhubarb
git clone https://github.com/tpope/vim-rhubarb.git ~/.vim/bundle/vim-rhubarb
vim -u NONE -c "helptags ~/.vim/bundle/vim-rhubarb/doc" -c q

echo "vim commentary - gcc (or highlight and gc) to comment lines"
rm -rf ~/.vim/bundle/vim-commentary
git clone https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary

echo "vim sleuth - detects and sets defaults based on file"
rm -rf ~/.vim/bundle/vim-sleuth
git clone https://github.com/tpope/vim-sleuth.git ~/.vim/bundle/vim-sleuth

echo "vim-sensible - sensible defaults"
rm -rf ~/.vim/bundle/vim-sensible
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible

echo "vim-tbone - highlight, shift-Y to Tyank a buffer into tmux"
rm -rf ~/.vim/bundle/vim-tbone
git clone https://github.com/tpope/vim-tbone.git ~/.vim/bundle/vim-tbone

echo "unimpaired - ]q and [q for next and previous in errors"
rm -rf ~/.vim/bundle/unimpaired
git clone https://tpope.io/vim/unimpaired.git ~/.vim/bundle/unimpaired
vim -u NONE -c "helptags ~/.vim/bundle/unimpaired/doc" -c q

echo "vim-repeat - use . to be able to repeat certain macros"
rm -rf ~/.vim/bundle/vim-repeat
git clone https://github.com/tpope/vim-repeat.git ~/.vim/bundle/vim-repeat

echo "vim-flake8 - ,f to run flake8 in python file"
rm -rf ~/.vim/bundle/vim-flake8
git clone git@github.com:nvie/vim-flake8.git ~/.vim/bundle/vim-flake8

echo "vim-surround - change to surrounding quotations, etc"
rm -rf ~/.vim/bundle/vim-surround
git clone git@github.com:tpope/vim-surround.git ~/.vim/bundle/vim-surround

echo "vim-python-pep8-indent - tweaks to python indenting"
rm -rf ~/.vim/bundle/vim-python-pep8-indent
git clone https://github.com/Vimjas/vim-python-pep8-indent.git ~/.vim/bundle/vim-python-pep8-indent

echo "diffconflicts"
rm -rf ~/.vim/bundle/diffconflicts
git clone git@github.com:whiteinge/diffconflicts.git ~/.vim/bundle/diffconflicts
git config --global merge.tool diffconflicts
git config --global mergetool.diffconflicts.cmd 'vim -c DiffConflicts "$MERGED" "$BASE" "$LOCAL" "$REMOTE"'
git config --global mergetool.diffconflicts.trustExitCode true
git config --global mergetool.keepBackup false

echo "vim-go - Go support"
rm -rf ~/.vim/bundle/vim-go
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go

rm -rf ~/.vim/bundle/ctrlp.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
