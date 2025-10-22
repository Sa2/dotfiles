#!/usr/bin/env bash

echo 'install Python with pyenv.....'

# pyenvがインストールされているかチェック
if ! command -v pyenv &> /dev/null; then
    echo "Error: pyenv is not installed. Please install pyenv first."
    echo "Run: brew install pyenv"
    exit 1
fi

# pyenvの初期化
eval "$(pyenv init -)"

# 最新の安定版Pythonバージョンを取得
LATEST_PYTHON=$(pyenv install --list | grep -E "^\s*3\.[0-9]+\.[0-9]+$" | tail -1 | sed 's/^[[:space:]]*//')

if [ -z "$LATEST_PYTHON" ]; then
    echo "Error: Could not determine latest Python version"
    exit 1
fi

echo "Installing Python $LATEST_PYTHON..."

# Pythonのインストール
pyenv install $LATEST_PYTHON

# グローバルバージョンとして設定
pyenv global $LATEST_PYTHON

# pipのアップグレード
pip install --upgrade pip

echo "Python $LATEST_PYTHON installation completed!"
echo "Current Python version: $(python --version)"
echo "Current pip version: $(pip --version)"

