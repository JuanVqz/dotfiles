set nocompatible
execute pathogen#infect()
syntax on
colorscheme lucius

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
set belloff=all

"" Backup
set undofile "" Guarda el undo aun que cierres el buffer
set directory=~/.vim/tmp/swap
set backupdir=~/.vim/tmp/backup
set undodir=~/.vim/tmp/undodir
let g:netrw_liststyle = 3

"" Wrap
""set list listchars=tab:\ \ ,extends:›,precedes:‹,nbsp:•,trail:•,eol:¬
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
let g:airline_powerline_fonts = 1
let g:airline_theme='evokai'

"" Gui
if has("gui_running")
    set guioptions-=b
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    set linespace=15
    colorscheme base16-ocean
    if has("gui_gtk2")
        set guifont=Monaco\ 10.5
    endif
    if has("gui_macvim")
        set guifont=Fira\ Code:h12
        let macvim_skip_colorscheme=1
        let macvim_hig_shift_movement=1
    endif
endif

"" NERDTreeToggle
nnoremap <C-e> :NERDTreeToggle<CR>

"" Command-T wildignore
let g:CommandTWildIgnore=&wildignore
let g:CommandTWildIgnore.=",*/bower_components"
let g:CommandTWildIgnore.=",*/node_modules"
let g:CommandTWildIgnore.=",*/vendor"
let g:CommandTWildIgnore.=",*/.git"

