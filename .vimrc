execute pathogen#infect()
filetype plugin indent on
syntax on
""set background=dark
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme neodark
let g:neodark#background = '#202020'
""colorscheme mac_classic
set number
set colorcolumn=80

let mapleader=","
nnoremap <leader>v :vsplit ~/.vimrc<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
nmap <silent> <leader>d <Plug>DashSearch

nnoremap <silent> j gj
nnoremap <silent> k gk

"Correct typical mistakes (capital letters)
:command WQ wq
:command Wq wq
:command WQa wqa
:command Wqa wqa
:command W w
:command Q q
:command QA qa
:command Qa qa

:nmap <Up> <Nop>
:nmap <Down> <Nop>
:nmap <Left> <Nop>
:nmap <Right> <Nop>

"" Indent
""autocmd FileType ruby,tex,ts,md,haml,erb,eruby,coffee,scss,js set expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType php,html set expandtab shiftwidth=4 tabstop=4 softtabstop=4
set shiftwidth=2
set tabstop=2
set expandtab

"" Search
set incsearch
set hlsearch
set mouse=a
""set wildmenu
set belloff=all

"" Backup
""set undofile
set directory=~/.vim/tmp/swap
""set backupdir=~/.vim/tmp/backup
""set undodir=~/.vim/tmp/undodir
""let g:session_directory="~/.vim/sessions/"

"" Wrap
""set list listchars=tab:·\ ,extends:›,precedes:‹,nbsp:•,trail:•,eol:¬
set list listchars=tab:·\ ,nbsp:•,trail:•
""let &showbreak='↳ '
""set breakindent
""set linebreak
""set wrap

"" Custom status line and font
set showcmd
""set noshowmode
set linespace=15
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='neodark'
""let g:javascript_plugin_jsdoc = 1

"" Gui
if has("gui_running")
    set guioptions-=m
    set guioptions-=b
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    set termguicolors

    ""colorscheme mac_classic
    ""colorscheme OceanicNext

    set linespace=15
    if has("gui_gtk2")
        let g:airline_powerline_fonts = 0
        set guifont=Monospace\ 10.5
    endif
    if has("gui_macvim")
        set macligatures
        set guifont=Hasklig:h14
        ""set guifont=Fira\ Code:h14
        ""set guifont=Monaco\ for\ Powerline:h14
        let macvim_skip_colorscheme=1
        let macvim_hig_shift_movement=1
    endif
endif

"" CtrlP ignore
set wildignore+=*/bower_components/*,*/node_modules/*,*/vendor/*,*/.git/*

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

map <F2> :%s#\s\+$##<cr>

function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

nnoremap <Leader>r :CtrlPFunky<Cr>
let g:ctrlp_funky_matchtype = 'path'
