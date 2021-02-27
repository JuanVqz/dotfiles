filetype plugin indent on
syntax on

if (has("nvim"))
  set inccommand=nosplit
endif

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme onedark
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

set relativenumber number

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set clipboard=unnamedplus

"" default updatetime 4000ms is not good for async update
"" coc, vim-signify use this config
set updatetime=100

