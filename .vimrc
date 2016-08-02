set nocompatible
set t_Co=256
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'airblade/vim-gitgutter'
  ""Plugin 'ap/vim-buftabline'
  Plugin 'digitaltoad/vim-jade'
  Plugin 'gregsexton/MatchTag'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'jwalton512/vim-blade'
  Plugin 'mattn/emmet-vim'
  Plugin 'mattn/webapi-vim'
  Plugin 'posva/vim-vue'
  Plugin 'scrooloose/nerdtree'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tmhedberg/matchit'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'wincent/command-t'
call vundle#end()
filetype plugin indent on

syntax on
set cursorline
""set background=light
set background=dark
colorscheme lucius
set showcmd
set clipboard=unnamed
set mouse=a
set nowrap
set hls
set lbr

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set smartindent
set copyindent
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab

set list listchars=eol:¬,tab:\ \ ,trail:•
map <C-t> <esc>:tabnew<Cr>
map <C-l> <esc>:bn<Cr>
map <C-h> <esc>:bp<Cr>
let mapleader="\<space>"
nnoremap <leader>v :tabnew ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

if has("gui_running")
  set linespace=10
  set background=dark
  colorscheme	hybrid_material
  if has("gui_gtk2")
    set guifont=Meslo\ LG\ L\ DZ\ for\ Powerline\ 10.5
  endif
  if has("gui_macvim")
    set guifont=Consolas:h14
    let macvim_skip_colorscheme=1
    let macvim_hig_shift_movement=1
  endif
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T
endif

""Define custom highlight groups
set laststatus=2
hi User1 ctermbg=0 ctermfg=white   guibg=#26292c guifg=gray
set statusline=
set statusline+=%1*     ""switch to User1 highlight
set statusline+=%f      ""Path to the file
set statusline+=%m      ""Modified flag
set statusline+=%=      ""Left/right separator
set statusline+=%c,     ""Cursor column
set statusline+=%l/%L   ""Cursor line/total lines
set statusline+=\ %P    ""Percent through file
""set noshowmode

""  nerdtree
map <C-e> :NERDTreeToggle<CR>

""  emmet tab
""imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/snippets.json')), "\n"))

""  Command-T wildignore
let g:CommandTWildIgnore=&wildignore . ",*/bower_components"
let g:CommandTWildIgnore=&wildignore . ",*/node_modules"
