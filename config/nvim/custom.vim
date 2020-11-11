filetype plugin indent on
syntax on

if (has("nvim"))
  set inccommand=nosplit
endif

if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme gruvbox
set colorcolumn=80

set belloff=all
set hidden
set hlsearch
set incsearch
set linespace=5
set list listchars=tab:·\ ,nbsp:•,trail:•
set mouse=a

set nobackup
set noshowmode
set noswapfile
set nowrap
set nowritebackup
set showcmd
set wildmenu

set relativenumber number

set expandtab
set tabstop=2
set shiftwidth=2

set clipboard=unnamedplus

"" default updatetime 4000ms is not good for async update
"" coc, vim-signify use this config
set updatetime=100

