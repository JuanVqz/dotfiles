let mapleader="\<Space>"

nnoremap <leader>v :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

command! BufOnly silent! execute "%bd|e#|bd#"

command WQ wq
command Wq wq
command WQa wqa
command Wqa wqa
command W w
command Q q
command QA qa
command Qa qa
command EXpl Explore
command EXp Explore

nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>

nnoremap <silent> j gj
nnoremap <silent> k gk

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

"" grep next/prev
nmap ]q :cn<CR>
nmap [q :cp<CR>

"" Remove trailing
map <F2> :%s#\s\+$##<cr>

if has("nvim")
  tmap <C-o> <C-\><C-n>
endif
