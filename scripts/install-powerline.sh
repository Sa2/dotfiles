#!/usr/bin/env bash
set -e

# pyenv をロード（非対話シェル対策）
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

echo ">>> Python 3.10 をインストール中..."
pyenv install -s 3.10.14

echo ">>> powerline 用の仮想環境を作成中..."
pyenv virtualenv -f 3.10.14 powerline310
pyenv activate powerline310

echo ">>> powerline-status をインストール中..."
pip install --upgrade pip
pip install powerline-status
pip install psutil

echo ">>> 完了！ tmux を再起動すれば反映されます。"