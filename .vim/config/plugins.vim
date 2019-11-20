set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'vim-airline/vim-airline'
  Plug 'iamcco/markdown-preview.vim'
  Plug 'kien/ctrlp.vim'
  Plug 'pbrisbin/vim-mkdir'
  Plug 'mattn/emmet-vim'
  Plug 'Yggdroot/indentLine'
  Plug 'tmhedberg/matchit'
  Plug 'Valloric/MatchTagAlways'
  Plug 'scrooloose/nerdcommenter'
  Plug 'godlygeek/tabular'
  Plug 'altercation/vim-colors-solarized'
  Plug 'figitaki/vim-dune'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'posva/vim-vue'
call plug#end()

"" Airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'

"" Deoplete
let g:deoplete#enable_at_startup = 1

"" Emmet
let g:user_emmet_leader_key=','

"" Prettier
""let g:prettier#config#semi = 'false'
""let g:prettier#config#single_quote = 'true'
""let g:prettier#config#bracket_spacing = 'true'
""let g:prettier#autoformat = 0
""autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

"" Allow MatchTagAlways to highlight jsx
let g:mta_filetypes = {
  \ 'javascript.jsx': 1,
  \}

"" CtrlP ignore
set wildignore+=*/bower_components/*,*/node_modules/*,*/vendor/*,*/.git/*
