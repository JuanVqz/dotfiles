set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
  Plug 'FooSoft/vim-argwrap'
  " Plug 'Valloric/MatchTagAlways'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'godlygeek/tabular'
  Plug 'honza/vim-snippets'
  Plug 'itchyny/lightline.vim'
  Plug 'machakann/vim-highlightedyank'
  Plug 'mattn/emmet-vim'
  Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'pangloss/vim-javascript'
  Plug 'sheerun/vim-polyglot'
  Plug 'tmhedberg/matchit'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-dispatch'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-rhubarb'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tpope/vim-vinegar'
  Plug 'vim-test/vim-test'
  " lua plugins
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'terrortylor/nvim-comment'
  Plug 'lewis6991/gitsigns.nvim'
call plug#end()
