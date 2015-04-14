#!/bin/sh

remove_file() {
  echo "Removing $1"
  rm $1
}

link_files() {
  echo "Linking $1 to $2"
  ln -s $1 $2
}

for file in $HOME/.dungeon_files/dotfiles/*
do
  home_file=$HOME/.$(basename $file)

  if [ -e $home_file ]; then
    remove_file $home_file
  fi

  link_files $file $home_file

  echo ""
done

if [ -e $HOME/bin ]; then
  remove_file $HOME/bin
fi

link_files $HOME/.dungeon_files/bin $HOME/bin
