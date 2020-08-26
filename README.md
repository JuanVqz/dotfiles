## My dotfiles

## Requirements

- Install fzf
  [fzf documentation](https://github.com/junegunn/fzf)
  [fzf blog](https://www.chrisatmachine.com/Neovim/08-fzf/)

```sh
brew install fzf

sudo apt-get install fzf
```

## NeoVim

[vim-plug](https://github.com/junegunn/vim-plug) is my package manager.

```bash
Plug 'mhinz/vim-signify'
Plug 'FooSoft/vim-argwrap'
Plug 'Valloric/MatchTagAlways'
Plug 'Yggdroot/indentLine'
Plug 'christoomey/vim-tmux-navigator'
Plug 'figitaki/vim-dune'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'machakann/vim-highlightedyank'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'pangloss/vim-javascript'
Plug 'pbrisbin/vim-mkdir'
Plug 'posva/vim-vue'
Plug 'scrooloose/nerdcommenter'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
```

## TMUX

- I changed the prefix to `ctrl + a`
- Tmux reload `ctrl + a + r`
- Highlight the current panel
- Tmux plugins:
  - [yank](https://github.com/tmux-plugins/tmux-yank)

# MACOS SETUP

- Run the `./scripts/install.sh`
- [Spectable](https://www.spectacleapp.com/)

# LICENCE

MIT
