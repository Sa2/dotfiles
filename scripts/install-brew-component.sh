#!/usr/bin/env bash

echo 'install brew components.....'

# for Mac (default zsh)
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update && brew upgrade
brew tap jhawthorn/fzy
brew install git bash nvim pyenv tmux goenv zig z bash-completion gsed peco reattach-to-user-namespace tfenv netcat zed colima docker docker-compose corepack pyenv-virtualenv

brew install --cask alacritty google-chrome dbeaver-community

brew install --cask font-hack-nerd-font

echo 'install brew componets.... Done!'


# formulas
# exa https://github.com/ogham/exa
