#!/usr/bin/env bash

echo "setup .vimrc"
ln -s $(pwd)/vim/conf/vimrc ${HOME}/.vimrc
ln -s $(pwd)/vim/conf/cheatsheet.md ${HOME}/.cheatsheet.md

echo "set vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# clean up
rm ./installer.sh
