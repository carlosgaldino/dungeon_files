#!/bin/sh

set -euo pipefail

remove_file() {
  echo "Removing $1"
  rm $1
}

link_files() {
  echo "Linking $1 to $2"
  ln -s $1 $2
}

relink_file() {
  if [ -e $2 ]; then
    remove_file $2
  fi

  link_files $1 $2
}

for file in $HOME/.dungeon_files/dotfiles/*
do
  home_file=$HOME/.$(basename $file)
  relink_file $file $home_file
done

rm -rf $HOME/.config
ln -s $HOME/.dungeon_files/config $HOME/.config

if [ -e $HOME/bin ]; then
  remove_file $HOME/bin
fi

link_files $HOME/.dungeon_files/bin $HOME/bin

if [ -d $HOME/.config ]; then
  mkdir -p $HOME/.config/fish
  mkdir -p $HOME/.config/ghostty
fi

relink_file $HOME/.dungeon_files/config/fish/config.fish $HOME/.config/fish/config.fish
relink_file $HOME/.dungeon_files/config/ghostty/config $HOME/.config/ghostty/config
