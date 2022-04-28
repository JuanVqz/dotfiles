-- let g:coc_global_extensions = [
--   \ 'coc-emmet',
--   \ 'coc-eslint',
--   \ 'coc-html',
--   \ 'coc-json',
--   \ 'coc-prettier',
--   \ 'coc-snippets',
--   \ 'coc-tailwindcss',
--   \ 'coc-tsserver',
--   \ ]

vim.cmd [[
let g:coc_global_extensions = ["coc-pairs", "coc-snippets", "coc-solargraph", "coc-tsserver", "coc-json"]

" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Navigation maps
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
]]
