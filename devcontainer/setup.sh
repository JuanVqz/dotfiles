#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
# set -e

#!/bin/sh

# if [ -z "$USER" ]; then
#   USER=$(id -un)
# fi
#
export DOTFILES=$HOME/dotfiles
echo "DOTFILES=$DOTFILES"
mv /workspaces/.codespaces/.persistedshare/dotfiles $HOME/dotfiles
#
cd "$HOME"
#
# # Make passwordless sudo work
export SUDO_ASKPASS=/bin/true
export HOMEBREW_BUNDLE_FILE_GLOBAL="~/dotfiles/devcontainer/Brewfile.linux"
# if [ "$EUID" -ne 0 ]; then
#   echo "Please run as root"
#   exit
# fi

#   # Install necessary build tools and libraries via apt
#   echo "Installing build dependencies..."
#   apt-get update && apt-get install -y \
#     libevent-dev \
#     ncurses-dev \
#     build-essential \
#     bison \
#     pkg-config \
#     ruby-full \
#     libssl-dev \
#     zlib1g-dev \
#     libncurses5-dev \
#     libreadline-dev \
#     libyaml-dev \
#     libxslt-dev \
#     libffi-dev \
#     libtool \
#     unixodbc-dev

NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew bundle --global

# git clone https://github.com/prokizzle/nvim ~/.config/nvim

yes | rcup -d dotfiles -x README.md -x LICENSE -x Brewfile -x setup.sh

# Install tmux Plugin Manager (TPM) without modifying tmux.conf
echo "Installing tmux Plugin Manager (TPM)..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo "TPM installed at ~/.tmux/plugins/tpm."

# Install neovim Ruby and Node.js hosts
echo "Installing Neovim Ruby and Node.js hosts..."
gem install neovim
npm install -g neovim

echo "source $DOTFILES/devcontainer/alias.sh" >> ~/.bashrc
source $DOTFILES/devcontainer/alias.sh
