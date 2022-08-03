#!/usr/bin/env bash

echo "setup .tmux.conf"
ln -s $(pwd)/tmux/conf/tmux.conf ${HOME}/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm