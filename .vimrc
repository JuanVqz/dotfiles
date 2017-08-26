set nocompatible
filetype off
call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'digitaltoad/vim-pug'
    Plug 'godlygeek/tabular'
    Plug 'gregsexton/MatchTag'
    Plug 'jwalton512/vim-blade'
    Plug 'leafgarland/typescript-vim'
    Plug 'mattn/emmet-vim'
    Plug 'posva/vim-vue'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'sts10/vim-zipper'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tmhedberg/matchit'
    Plug 'Valloric/YouCompleteMe'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'wincent/command-t'
call plug#end()

filetype plugin indent on
syntax on
colorscheme gruvbox

"" Leader
let mapleader="\<space>"
nnoremap <leader>vi :vsplit ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

"" Fold
set foldlevel=20

"" Indent
set shiftwidth=4
set softtabstop=0
set tabstop=4
set autoindent
set expandtab
set copyindent

"" Search
set incsearch
set hlsearch
set mouse=a
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

"" Backup
set undofile "" Guarda el undo aun que cierres el buffer
set directory=~/.vim/tmp/swap
set backupdir=~/.vim/tmp/backup
set undodir=~/.vim/tmp/undodir
let g:netrw_liststyle = 3

"" Wrap
set list listchars=tab:\ \ ,extends:›,precedes:‹,nbsp:•,trail:•,eol:¬
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
let g:airline_theme = 'lucius'

"" Gui
if has("gui_running")
    set guioptions-=b
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    set linespace=15
    colorscheme OceanicNext
    if has("gui_gtk2")
        set guifont=Monospace\ 10.5
    endif
    if has("gui_macvim")
        set guifont=PT\ Mono:h13
        let macvim_skip_colorscheme=1
        let macvim_hig_shift_movement=1
    endif
endif

"" NERDTreeToggle
nnoremap <C-e> :NERDTreeToggle<CR>

"" Snippets
"" nnoremap ,log : -1read /Users/itox/.vim/snippets/log.js<CR>f(a
"" nnoremap ,dd : -1read /Users/itox/.vim/snippets/dd.php<CR>f$vf)

"" Command-T wildignore
let g:CommandTWildIgnore=&wildignore
let g:CommandTWildIgnore.=",*/bower_components"
let g:CommandTWildIgnore.=",*/node_modules"
let g:CommandTWildIgnore.=",*/vendor"
let g:CommandTWildIgnore.=",*/.git"
