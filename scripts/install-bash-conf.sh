#!/usr/bin/env bash

echo "setup PATH"
sudo ln -s $(pwd)/bash/bin/get_battery_tmux /usr/local/bin/get_battery_tmux
sudo ln -s $(pwd)/bash/bin/get_load_average_tmux /usr/local/bin/get_load_average_tmux
sudo ln -s $(pwd)/bash/bin/get_ssid_tmux /usr/local/bin/get_ssid_tmux
sudo ln -s $(pwd)/bash/bin/get_volume_tmux /usr/local/bin/get_volume_tmux

echo "setup bash config"
ln -s $(pwd)/bash/conf/bash_profile ${HOME}/.bash_profile
ln -s $(pwd)/bash/conf/bashrc ${HOME}/.bashrc
ln -s $(pwd)/bash/conf/bash_aliases ${HOME}/.bash_aliases

echo "add bash custom env file"
cp ./bash/conf/bash_env ~/.bash_env
