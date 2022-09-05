#!/usr/bin/env zsh

set -eu

cwd=$(pwd)
ln -sf ${cwd}/config/vim/vimrc ~/.vim/vimrc

echo "Configure tmux"
mkdir -p ~/.config/tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
ln -sf ${cwd}/config/tmux/tmux.conf ~/.config/tmux/tmux.conf

