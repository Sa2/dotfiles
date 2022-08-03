#!/usr/bin/env bash

echo 'setup chsh....'

BREW_BIN_PATH=/opt/homebrew/bin/bash

# legacy
# BREW_BIN_PATH=/usr/local/bin/bash

sudo sh -c "echo $BREW_BIN_PATH >> /etc/shells"
chsh -s $BREW_BIN_PATH

echo 'setup chsh.... Done!'
