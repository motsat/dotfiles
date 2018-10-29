#!/bin/sh
set -eu
echo $PWD
echo $HOME
ln -sf {$PWD,$HOME}/.zshrc
ln -sf {$PWD,$HOME}/.vimrc
ln -sf {$PWD,$HOME}/.gitconfig
# for dein.vim
# https://github.com/Shougo/dein.vim
mkdir -p $HOME/.vim/bundles

# for neovim
# vim-plugは手動で入れる
# https://github.com/junegunn/vim-plug
mkdir -p $HOME/.config/nvim
ln -sf $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim

