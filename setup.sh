#!/bin/sh
set -eu
echo $PWD
echo $HOME
ln -sf {$PWD,$HOME}/.zshrc
ln -sf {$PWD,$HOME}/.vimrc
ln -sf {$PWD,$HOME}/.gitconfig
