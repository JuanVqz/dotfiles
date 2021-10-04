" let g:VimuxOrientation = "h"
" let g:VimuxHeight = "40"

lua << EOF
vim.api.nvim_set_keymap("n", "<leader>vq", ":VimuxCloseRunner<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vz", ":call VimuxZoomRunner()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vp", ":VimuxPromptCommand<CR>", { noremap = true, silent = true })
EOF
