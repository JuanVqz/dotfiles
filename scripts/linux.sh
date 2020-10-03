#!/usr/bin/env bash

dotfiles="$(pwd)"
config_folder="$HOME/.config"

i3_folder="$config_folder/i3"
i3status_folder="$config_folder/i3status"

if [ ! -d "$i3_folder" ]; then
  echo "* Creating i3 folder"
  ln -s "$dotfiles/config/i3/" "$i3_folder"
fi

if [ ! -d "$i3status_folder" ]; then
  echo "* Creating i3status folder"
  ln -s "$dotfiles/config/i3status/" "$i3status_folder"
fi

