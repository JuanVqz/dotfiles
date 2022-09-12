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

vim.g["coc_global_extensions"] = {
  "coc-pairs",
  "coc-snippets",
  "coc-tsserver",
  "coc-json"
}

vim.cmd [[
" https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Navigation maps
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
]]
