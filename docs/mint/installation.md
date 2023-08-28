1. Install synaptic
2. Install asdf
3. Install zsh
4. Install postgresql
5. Install neovim
6. Install alacritty
7. Install ulauncher
8. Setup dotfiles
9. Install apps

## Install synaptic

  - build-essential
  - git
  - curl
  - shutter, to take screenshoots and edit them.
  - zsh
  - fzf
  - ripgrep
  - fd-find
  - neovim dependendies
    sudo apt install ninja-build gettext cmake unzip curl
  - tmux dependencies
    sudo apt install libevent-dev ncurses-dev build-essential bison pkg-config
    sudo apt install tmux
    tmux plugin manager
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  - build neovim
    https://github.com/neovim/neovim/wiki/Building-Neovim
    sudo apt-get install ninja-build gettext cmake unzip curl
  - ctags
    sudo apt install universal-ctags
    ```
    ctags -R *
    ```

## Install asdf

  - asdf
    https://asdf-vm.com/guide/getting-started.html

  - asdf-nodejs
    ```
    asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    ```

  - asdf-bat
    https://gitlab.com/wt0f/asdf-bat

  - asdf-ruby
    ```
    sudo apt install git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zliblg-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
    ```

  - asdf-python
    ```
    sudo apt install lzma liblzma-dev
    ```

  - asdf-gh
    you need to have your ~./ssh configured

  - asdf-lua
    ```
    sudo apt-get install linux-headers-$(uname -r) build-essential
    asdf plugin-add lua https://github.com/Stratus3D/asdf-lua.git
    ```

  - asdf-lazydocker

## Install zsh

```
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

Add zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Install postgresql

```
sudo apt install postgresql postgresql-contrib
sudo systemctl status postgresql
```

Add password to your current host user
```
➜  doctors psql
username=> \password ombu

```

Alter your host user with superuser privileges

```
➜  doctors git:(main) ✗ sudo -i -u postgres
postgres@mint:~$ ALTER USER ombu WITH SUPERUSER;
```

For pg gem

```
sudo apt install libpq-dev
```

## Install neovim

https://github.com/neovim/neovim/wiki/Building-Neovim

## Install alacritty

```bash
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev
sudo apt install cargo
cargo install alacritty
sudo mv ~/.cargo/bin/alacritty /usr/local/bin/
Copy .desktop file and Icon
https://techviewleo.com/install-and-configure-alacritty-terminal-on-ubuntu/?expand_article=1
```

## Install ulauncher

https://ulauncher.io/#Download
then download the `.deb` file

## Setup dotfiles

clone https://github.com/juanvqz/dotfiles

```
gh repo clone JuanVqz/dotfiles
```

## Install apps

Software manager
- zoom
- slack
- peek
