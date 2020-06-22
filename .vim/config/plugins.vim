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
call plug#end()

"" vim-signify
set updatetime=100

"" allow matchtagalways to highlight jsx
let g:mta_filetypes = {
  \ 'javascript.jsx': 1,
  \}

"" CtrlP ignore
set wildignore+=*/bower_components/*,*/node_modules/*,*/vendor/*,*/.git/*

"" COC
"" CocInstall https://github.com/andys8/vscode-jest-snippets
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-prettier',
  \ 'coc-html',
  \ 'coc-snippets',
  \ ]

inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'



"" airline
let g:airline_theme='quantum'

