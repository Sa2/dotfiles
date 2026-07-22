#!/usr/bin/env bash

echo "setup PATH"
# Link the tmux status-bar helpers into ~/bin (already on PATH via bash_profile),
# so no sudo / /usr/local/bin write access is required.
mkdir -p "${HOME}/bin"
for s in get_battery_tmux get_load_average_tmux get_ssid_tmux get_volume_tmux tmux-weather; do
  ln -sf "$(pwd)/bash/bin/${s}" "${HOME}/bin/${s}"
done

echo "setup bash config"
ln -sf $(pwd)/bash/conf/bash_profile ${HOME}/.bash_profile
ln -sf $(pwd)/bash/conf/bashrc ${HOME}/.bashrc
ln -sf $(pwd)/bash/conf/bash_aliases ${HOME}/.bash_aliases

echo "add bash custom env file"
cp ./bash/conf/bash_env ~/.bash_env
