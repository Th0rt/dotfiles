#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

make_symlink() {
  FILENAME=$1
  TARGET_DIR=$2
  ln -sf $SCRIPT_DIR/$FILENAME $TARGET_DIR/$FILENAME
}

make_symlink .zshrc $HOME
make_symlink .tmux.conf $HOME

if [ ! -d $HOME/.config ]; then
  mkdir $HOME/.config
fi

make_symlink starship.toml $HOME/.config

echo 'done.'
