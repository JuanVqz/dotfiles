local function map(mode, combo, mapping, options)
  vim.api.nvim_set_keymap(mode, combo, mapping, options)
end

map("n", "<esc>", ":noh<return><esc>", { noremap = true, silent = true })
map("n", "<esc>^[", "<esc>^[", { noremap = true, silent = true })
map("n", "Y", "y$", { noremap = true, silent = true })
map("n", "<silent> j", "gj", { noremap = true, silent = true })
map("n", "<silent> k", "gk", { noremap = true, silent = true })
map("n", "<C-Up>", ":resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Down>", ":resize +2<CR>", { noremap = true, silent = true })
map("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

map("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
map("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

map("v", "<", "<gv", { noremap = true, silent = true })
map("v", ">", ">gv", { noremap = true, silent = true })

map("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true })
map("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true })
map("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true })
map("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true })
