set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
  if has('nvim') || has('patch-8.0.902')
    Plug 'mhinz/vim-signify'
  else
    Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
  endif
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
call plug#end()

"" VIM-SIGNIFY
set updatetime=100

"" allow matchtagalways to highlight jsx
let g:mta_filetypes = {
  \ 'javascript.jsx': 1,
  \}


"" CTRLP IGNORE
set wildignore+=*/bower_components/*,*/node_modules/*,*/vendor/*,*/.git/*


"" AIRLINE
let g:airline_theme='gruvbox'

