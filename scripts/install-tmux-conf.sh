#!/usr/bin/env bash

echo "setup .tmux.conf"
ln -sf $(pwd)/tmux/conf/tmux.conf ${HOME}/.tmux.conf

echo "install tpm (tmux plugin manager)"
[ -d ~/.tmux/plugins/tpm ] || git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "install tmux-weather plugin (used by status-left)"
[ -d ~/.tmux/plugins/tmux-weather ] || git clone https://github.com/xamut/tmux-weather ~/.tmux/plugins/tmux-weather

echo "NOTE: 起動中の tmux では prefix + I でもプラグインを取得できます"