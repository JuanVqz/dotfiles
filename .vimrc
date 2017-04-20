set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'airblade/vim-gitgutter'
  Plugin 'digitaltoad/vim-pug'
  Plugin 'gregsexton/MatchTag'
  Plugin 'jwalton512/vim-blade'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'mattn/emmet-vim'
  Plugin 'posva/vim-vue'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tmhedberg/matchit'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'wincent/command-t'
  Plugin 'itchyny/lightline.vim'
call vundle#end()

filetype plugin indent on
syntax on
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
set background=dark
colorscheme hybrid_material

"" Leader
let mapleader="\<space>"
nnoremap <leader>v :tabnew ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

"" Indent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set expandtab
set copyindent

"" Search
set hlsearch
set incsearch
set ic
set mouse=a

"" Backup
set nobackup
set noswapfile
set nowritebackup

"" Wrap
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
let &showbreak='↳ '
set breakindent
set linebreak
set mouse=a
set wrap

"" Custom map
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

command! WQ wq
command! Wq wq
command! W  w
command! Q  q

"" Custom status line and font
set showcmd
set noshowmode
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
      \ }

"" Guarda el undo aun que cierres el buffer
set undofile
set undodir=~/.vim/undodir
let g:netrw_liststyle = 3

"" Gui
if has("gui_running")
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T
  set linespace=15
  colorscheme quantum
  if has("gui_gtk2")
	set guifont=Fira\ Code\ 10.5
  endif
  if has("gui_macvim")
	set guifont=Monaco:h13
	let macvim_skip_colorscheme=1
	let macvim_hig_shift_movement=1
  endif
endif

"" Snippets
nnoremap ,log : -1read /Users/itox/.vim/snippets/log.js<CR>f(a
nnoremap ,dd : -1read /Users/itox/.vim/snippets/dd.php<CR>f$vf)

"" Command-T wildignore=
let g:CommandTWildIgnore=&wildignore . ",*/bower_components"
let g:CommandTWildIgnore=&wildignore . ",*/node_modules"
let g:CommandTWildIgnore=&wildignore . ",*/vendor"
