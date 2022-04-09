#!/usr/bin/env bash

dotfiles="$(pwd)"
config_folder="$HOME/.config"

tmux_file="$HOME/.tmux.conf"

nvim_folder="$config_folder/nvim"
ultisnips_folder="$config_folder/coc/ultisnips"
alacritty_folder="$config_folder/alacritty"

if [ ! -f "$tmux_file" ]; then
  echo "* Creating tmux.conf file"
  ln -s "$dotfiles/tmux.conf" "$tmux_file"
fi

if [ ! -d "$config_folder" ]; then
  echo "* Creating .config folder"
  cd "$HOME"
  mkdir "$config_folder"
fi

if [ ! -d "$nvim_folder" ]; then
  echo "* Creating nvim folder"
  ln -s "$dotfiles/config/nvim/" "$nvim_folder"
fi

if [ ! -d "$ultisnips_folder" ]; then
  echo "* Creating ultisnips folder"
  ln -s "$dotfiles/config/coc/ultisnips" "$ultisnips_folder"
fi

if [ ! -d "$alacritty_folder" ]; then
  echo "* Creating alacritty folder"
  ln -s "$dotfiles/config/alacritty/" "$alacritty_folder"
fi

echo "Configuration was installed successfully"
