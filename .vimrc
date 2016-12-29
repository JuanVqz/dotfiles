set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'airblade/vim-gitgutter'
  Plugin 'gregsexton/MatchTag'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'jwalton512/vim-blade'
  Plugin 'mattn/emmet-vim'
  Plugin 'posva/vim-vue'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tmhedberg/matchit'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'wincent/command-t'

call vundle#end()

"" Basic config
filetype plugin indent on
syntax on
set cursorline
set relativenumber number
set termguicolors
colorscheme hybrid_material
set background=dark
set visualbell

"" Leader
let mapleader="\<space>"
nnoremap <leader>v :tabnew ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

"" Indent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set expandtab
set copyindent
set list listchars=eol:¬,tab:\ \ ,trail:•
autocmd Filetype php setlocal ts=4 sw=4 expandtab
autocmd Filetype html setlocal ts=4 sw=4 expandtab

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
let &showbreak='↳ '
set breakindent
set linebreak
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

"" Gui
if has("gui_running")
  set linespace=10
  ""set background=light
  ""colorscheme macvim
  if has("gui_gtk2")
    set guifont=Fira\ Mono\ 10.5
  endif
  if has("gui_macvim")
    ""set guifont=Consolas:h13
    set guifont=Fira\ Mono:h14
    let macvim_skip_colorscheme=1
    let macvim_hig_shift_movement=1
  endif
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T
endif

"" Custom status line
set showcmd
set colorcolumn=90
set laststatus=2
hi User1 ctermbg=darkgrey ctermfg=grey  guibg=#6f7780 guifg=#eeeeee cterm=bold
set statusline=
set statusline+=%1*     ""switch to User1 highlight
set statusline+=%f      ""Path to the file
set statusline+=%m      ""Modified flag
set statusline+=%=      ""Left/right separator
set statusline+=%c,     ""Cursor column
set statusline+=%l/%L   ""Cursor line/total lines
set statusline+=\ %P    ""Percent through file
"" set noshowmode"

"" Nerdtree
map <C-e> :NERDTreeToggle<CR>

"" Command-T wildignore=
let g:CommandTWildIgnore=&wildignore . ",*/bower_components"
let g:CommandTWildIgnore=&wildignore . ",*/node_modules"
let g:CommandTWildIgnore=&wildignore . ",*/vendor"

if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
  let &t_SR = "\<esc>]50;CursorShape=2\x7" " Underline in replace mode"
endif"
