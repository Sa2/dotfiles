#!/usr/bin/env bash

echo "setup .vimrc"
ln -s $(pwd)/vim/conf/vimrc ${HOME}/.vimrc
ln -s $(pwd)/vim/conf/cheatsheet.md ${HOME}/.cheatsheet.md

echo "set vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $(pwd)/vim/conf/coc-settings.json ${HOME}/.vim/coc-settings.json

echo "set nvim"
# ref https://kaworu.jpn.org/vim/neovim%E3%81%AE%E8%A8%AD%E5%AE%9A%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%81%A8%E3%83%87%E3%82%A3%E3%83%AC%E3%82%AF%E3%83%88%E3%83%AA%E3%81%AE%E7%BD%AE%E3%81%8D%E5%A0%B4
mkdir -p ~/.config
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


# clean up
#rm ./installer.sh
