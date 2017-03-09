set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'airblade/vim-gitgutter'
  Plugin 'gregsexton/MatchTag'
  Plugin 'jiangmiao/auto-pairs'
  Plugin 'jwalton512/vim-blade'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'mattn/emmet-vim'
  Plugin 'posva/vim-vue'
  Plugin 'scrooloose/nerdcommenter'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'tmhedberg/matchit'
  Plugin 'tpope/vim-surround'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'wincent/command-t'

call vundle#end()

"" Basic config
filetype plugin indent on

syntax on
set cursorline
set visualbell
set foldenable
""set relativenumber number
set termguicolors
set background=dark
colorscheme quantum
let g:quantum_italics = 1

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
  colorscheme hybrid_material
  if has("gui_gtk2")
    set guifont=Fira\ Code\ 10.5
  endif
  if has("gui_macvim")
    set guifont=Fira\ Code:h14
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
""set noshowmode

"" explorador de archivos, netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
""augroup ProjectDrawer
""  autocmd!
""  autocmd VimEnter * :Vexplore
""augroup END

"" Command-T wildignore=
let g:CommandTWildIgnore=&wildignore . ",*/bower_components"
let g:CommandTWildIgnore=&wildignore . ",*/node_modules"
let g:CommandTWildIgnore=&wildignore . ",*/vendor"

if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
  let &t_SR = "\<esc>]50;CursorShape=2\x7" " Underline in replace mode
endif

""autocmd FileType typescript :set makeprg=tsc
