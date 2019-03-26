execute pathogen#infect()
filetype plugin indent on
syntax on

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme neodark
set relativenumber number
set colorcolumn=80

let mapleader=","
nnoremap <leader>v :vsplit ~/.vimrc<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
nmap <silent> <leader>d <Plug>DashSearch

nnoremap <silent> j gj
nnoremap <silent> k gk

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

autocmd FileType php,html set expandtab shiftwidth=4 tabstop=4 softtabstop=4
set shiftwidth=2
set tabstop=2
set expandtab

set incsearch
set hlsearch
set mouse=a
set wildmenu
set belloff=all

"" Backup
""set undofile
set directory=~/.vim/tmp/swap
""set backupdir=~/.vim/tmp/backup
""set undodir=~/.vim/tmp/undodir
""let g:session_directory="~/.vim/sessions/"

set list listchars=tab:·\ ,nbsp:•,trail:•

set showcmd
set noshowmode
set linespace=15
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='neodark'

"" Quita el trailing
map <F2> :%s#\s\+$##<cr>

"" Gui
if has("gui_running")
    set guioptions-=m
    set guioptions-=b
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    set termguicolors

    set linespace=15
    if has("gui_gtk2")
        let g:airline_powerline_fonts = 0
        set guifont=Monospace\ 10.5
    endif
    if has("gui_macvim")
        set macligatures
        set guifont=Menlo\ for\ Powerline:h14
        let macvim_hig_shift_movement=1
    endif
endif

"" CtrlP ignore
set wildignore+=*/bower_components/*,*/node_modules/*,*/vendor/*,*/.git/*

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

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
