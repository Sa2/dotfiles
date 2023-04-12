#!/usr/bin/env bash

echo 'install brew components.....'

# for Mac (default zsh)
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update && brew upgrade
brew tap jhawthorn/fzy
brew install git bash vim tmux python goenv zig z bash-completion gsed peco reattach-to-user-namespace tfenv nvm exa ykman

brew install --cask alacritty chrome

echo 'install brew componets.... Done!'


# formulas
# exa https://github.com/ogham/exa