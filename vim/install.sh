#!/bin/sh -e
echo "Installing pathogen.vim"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "Installing cscope maps"
mkdir -p ~/.vim/bundle/cscope_maps/plugin/
cp $(dirname $0)/cscope_maps.vim ~/.vim/bundle/cscope_maps/plugin/
echo "Installing arduino syntax"
mkdir -p ~/.vim/bundle/arduino/syntax
curl -LSso ~/.vim/bundle/arduino/syntax/arduino.vim http://www.vim.org/scripts/download_script.php?src_id=23284
