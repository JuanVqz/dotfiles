set nocompatible
filetype off
filetype plugin indent on
syntax on

if (has("nvim"))
  set inccommand=nosplit
endif

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

set colorcolumn=80
set belloff=all
set hidden
set hlsearch
set incsearch
set linespace=5
set list listchars=tab:»\ ,nbsp:☠,trail:•,extends:…,precedes:…,conceal:┊
set mouse=a

set nobackup
set noshowmode
set noswapfile
set nowrap
set nowritebackup
set showcmd
set wildmenu

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set clipboard=unnamedplus
set updatetime=100

