# Dotfiles

My personal configuration is for a Backend Developer, that loves to program in Ruby, and JavaScript.
I like to keep my configuration simple and clean, mostly for NeoVim, Tmux and Zsh.
I use [stow](https://www.gnu.org/software/stow/) to manage the dotfiles.


## Requirements

* Install [asdf](https://asdf-vm.com/#/core-manage-asdf-vm).
  * Install [Ruby](https://github.com/asdf-vm/asdf-ruby?tab=readme-ov-file#install)
  * Install [Node.js](https://github.com/asdf-vm/asdf-nodejs?tab=readme-ov-file#install)
  * Install [Python](https://github.com/asdf-community/asdf-python?tab=readme-ov-file#install)
  * Install [lua](https://github.com/Stratus3D/asdf-lua?tab=readme-ov-file#dependencies)
* Build and Install [Neovim](https://github.com/neovim/neovim/blob/master/BUILD.md).
* Install Tmux running `brew install tmux`.
* Install [Oh My Zsh](https://ohmyz.sh/).
* Install stow running `brew install stow`.

I also have been documented my installation packages for [Linux Mint](docs/mint/installation.md) and [Mac M3](docs/macos/installation.md), to make it easier to install next time I need to.

## NeoVim

The `nvim` directory contains the configuration files for NeoVim.

To install the configuration files, just run the following command:
```bash
stow nvim
```

To remove the configuration files, just run the following command:
```bash
stow -D nvim
```

## Config

The `config` directory contains the configuration files for different tools like `bat`, `vscode`, etc.

To install the configuration files, just run the following command:
```bash
stow config
```

While I investigate how to use `stow` with the vscode configuration files, you can use the following commands:
```bash
ln -s ~/.dotfiles/config/.config/Code/User/settings.json ~/Library/Application\ Support/Code/User
ln -s ~/.dotfiles/config/.config/Code/User/keybindings.json ~/Library/Application\ Support/Code/User
```

To remove the configuration files, just run the following command:
```bash
stow -D config
```

## Home

The `home` directory contains a mix of configuration files for different tools like `git`, `tmux`, `zsh`, etc.

To install the configuration files, just run the following command:
```bash
stow home
```

To remove the configuration files, just run the following command:
```bash
stow -D home
```

## Fonts
I can live with the default fonts, but I have some favorite fonts that you can find under the `nocopy/fonts` directory.

For Linux, just copy the fonts to `~/.local/share/fonts/`.
For MacOS, just double click the font file and install it.
