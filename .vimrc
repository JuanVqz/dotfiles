execute pathogen#infect()
filetype plugin indent on
syntax on
colorscheme Benokai
set relativenumber number

"" Leader
let mapleader="\<space>"
nnoremap <leader>v :vsplit ~/.vimrc<CR>
nnoremap <leader>sn :vsplit ~/.vim/snippets/<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap <esc> :noh<return><esc>

"" Fold
set fdm=indent

"" Indent
set shiftwidth=4
set tabstop=4
set expandtab
""set softtabstop=0
""set autoindent
""set copyindent

"" Search
set incsearch
set hlsearch
set mouse=a
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
set belloff=all

"" Backup
set undofile
set directory=~/.vim/tmp/swap
set backupdir=~/.vim/tmp/backup
set undodir=~/.vim/tmp/undodir
let g:session_directory="~/.vim/tmp/session"
let g:netrw_liststyle = 3
let g:javascript_plugin_jsdoc = 1

"" Wrap
set list listchars=tab:·\ ,extends:›,precedes:‹,nbsp:•,trail:•,eol:¬
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

"" Custom status line and font
set showcmd
set noshowmode
set linespace=15
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='itox'

"" Gui
if has("gui_running")
    set guioptions-=m
    set guioptions-=b
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    colorscheme mac_classic
    if has("gui_gtk2")
        let g:airline_powerline_fonts = 0
        set guifont=Monospace\ 10.5
    endif
    if has("gui_macvim")
        set guifont=Fira\ Code:h12
        let macvim_skip_colorscheme=1
        let macvim_hig_shift_movement=1
    endif
endif

"" Command-T wildignore
let g:CommandTWildIgnore=&wildignore
let g:CommandTWildIgnore.=",*/bower_components"
let g:CommandTWildIgnore.=",*/node_modules"
let g:CommandTWildIgnore.=",*/vendor"
let g:CommandTWildIgnore.=",*/.git"

autocmd FileType php set omnifunc=phpcomplete#CompletePHP
