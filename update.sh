#!/bin/bash

DIR=~/dotfiles
FILES="vimrc vimrc.bundles tmux.conf"

echo -n "Updating previous symlinks"

for file in $FILES; do
  echo -n "."
  rm ~/.$file                # Remove old file
  ln -s $DIR/$file ~/.$file # Add new reference.
done

echo "Done!"
