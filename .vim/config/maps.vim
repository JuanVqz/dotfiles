let mapleader="\<Space>"

nnoremap <leader>v :vsplit ~/.vimrc<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

"" Coc Prettier
:command -nargs=0 Prettier :CocCommand prettier.formatFile

:command WQ wq
:command Wq wq
:command WQa wqa
:command Wqa wqa
:command W w
:command Q q
:command QA qa
:command Qa qa
:command EXpl Explore
:command EXp Explore

:nmap <Up> <Nop>
:nmap <Down> <Nop>
:nmap <Left> <Nop>
:nmap <Right> <Nop>

nnoremap <silent> j gj
nnoremap <silent> k gk

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

"" Remove trailing
map <F2> :%s#\s\+$##<cr>

nnoremap <leader>g :Gstatus<CR>
nnoremap <leader>e :Explore<CR>
