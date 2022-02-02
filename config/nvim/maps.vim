let mapleader="\<Space>"

nnoremap <C-left> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-right> :vertical resize +5<cr>
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[
nnoremap <C-q> :quit! <CR>
nnoremap <silent> j gj
nnoremap <silent> k gk
nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>

if has("nvim")
  tmap <C-o> <C-\><C-n>
endif

let g:rails_ctags_arguments = ["--languages=ruby", "-f .git/tags", "--tag-relative=yes"]
set tags^=./.git/tags;

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" When editing a file, always jump to the last known cursor position.
" Don't do it for commit messages, when the position is invalid, or when
" inside an event handler (happens when dropping a file on gvim).
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup END

" The primeagen remaps
" https://www.youtube.com/watch?v=hSHATqh8svM

" Moving text
vnoremap J :move '>+1<CR>gv=gv
vnoremap K :move '<-2<CR>gv=gv
inoremap <C-j> <esc>:move .+1<CR>==
inoremap <C-k> <esc>:move .-2<CR>==

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u

" Yank the row until last char
nnoremap Y y$

