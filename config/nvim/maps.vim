let mapleader="\<Space>"

nnoremap <leader>v :vsplit ~/.config/nvim/init.vim<CR>
nnoremap <leader>n :set invrelativenumber invnumber<CR>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
nnoremap <C-q> :quit! <CR>

nnoremap <silent> j gj
nnoremap <silent> k gk

nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>

let g:rails_ctags_arguments = ["--languages=ruby", "-f .git/tags", "--tag-relative=yes"]
set tags^=./.git/tags;

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre *.rb,*.js,*.vim :call <SID>StripTrailingWhitespaces()

" The primeagen remaps
" https://www.youtube.com/watch?v=hSHATqh8svM

" Number 1: Moving text
vnoremap J :move '>+1<CR>gv=gv
vnoremap K :move '<-2<CR>gv=gv
inoremap <C-j> <esc>:move .+1<CR>==
inoremap <C-k> <esc>:move .-2<CR>==

" Number 2: Jumplist mutations
" nnoremap <expr> k (v:count > 5 ? "m'" . v:count : "") . 'k'
" nnoremap <expr> j (v:count > 5 ? "m'" . v:count : "") . 'j'

" Number 3: Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u

" Number 4: Keeping it centered
" nnoremap n nzzzv
" nnoremap N Nzzzv
" nnoremap J mzJ`z

" Number 5: Behave Vim
nnoremap Y y$

