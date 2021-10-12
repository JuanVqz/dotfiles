lua << EOF
vim.api.nvim_set_keymap("n", "<leader>gs", ":vertical :Git<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gl", ":G pull<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gp", ":G push<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gf", ":G push --force-with-lease<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gw", ":Gwrite<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gr", ":Gread<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gv", ":Gvdiffsplit!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>gb", ":GBrowse!<CR>", { noremap = true, silent = true })
EOF
