#!/usr/bin/env bash

echo "setup .vimrc"
ln -s $(pwd)/vim/conf/vimrc ${HOME}/.vimrc

echo "set dein.vim"
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein

# clean up
rm ./installer.sh