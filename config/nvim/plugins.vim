set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
  Plug 'FooSoft/vim-argwrap'
  Plug 'Valloric/MatchTagAlways'
  Plug 'Yggdroot/indentLine'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'godlygeek/tabular'
  Plug 'honza/vim-snippets'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'machakann/vim-highlightedyank'
  Plug 'mhinz/vim-signify'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'pangloss/vim-javascript'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'scrooloose/nerdcommenter'
  Plug 'sheerun/vim-polyglot'
  Plug 'tmhedberg/matchit'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'vim-test/vim-test'
call plug#end()
