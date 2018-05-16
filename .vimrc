execute pathogen#infect()
filetype plugin indent on
syntax on
set background=dark
colorscheme oxeded
""set number

"" Leader
let mapleader=","
nnoremap <leader>v :vsplit ~/.vimrc<CR>
nnoremap <leader>sn :vsplit ~/.vim/snippets/<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

"" Fold
""set fdm=indent

"Correct typical mistakes (capital letters)
:command WQ wq
:command Wq wq
:command WQa wqa
:command Wqa wqa
:command W w
:command Q q
:command QA qa
:command Qa qa
command! MakeTags !ctags -R .

"" Indent
""autocmd FileType ruby,haml,erb,eruby,sh,vim,coffee,scss,ts set expandtab shiftwidth=2 tabstop=2 softtabstop=2
set shiftwidth=4
set tabstop=4
set expandtab

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
let g:session_directory="~/.vim/sessions/"

"" Wrap
""set list listchars=tab:·\ ,extends:›,precedes:‹,nbsp:•,trail:•,eol:¬
set list listchars=tab:·\ ,nbsp:•,trail:•
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
"set noshowmode
set linespace=15
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='itox'
let g:javascript_plugin_jsdoc = 1

map <F12> :NERDTreeToggle<CR>

"" Gui
if has("gui_running")
    set guioptions-=m
    set guioptions-=b
    set guioptions-=r
    set guioptions-=L
    set guioptions-=T
    colorscheme peacocks-in-space
    set linespace=15
    if has("gui_gtk2")
        let g:airline_powerline_fonts = 0
        set guifont=Monospace\ 10.5
    endif
    if has("gui_macvim")
        set macligatures
        set guifont=Fira\ Code:h13
        let macvim_skip_colorscheme=1
        let macvim_hig_shift_movement=1
    endif
endif

"" CtrlP Excluye archivos o directorios
set wildignore+=*/bower_components/*,*/node_modules/*,*/vendor/*,*/.git/*

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"" Elimina los white spaces
map <F2> :%s#\s\+$##<cr>
""noremap <leader>w :call DeleteTrailingWS()<CR>

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
