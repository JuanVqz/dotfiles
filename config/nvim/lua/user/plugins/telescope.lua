local ok, telescope = pcall(require, "telescope")
if not ok then
  return
end

-- local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
  },
})

vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope git_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep prompt_prefix=🔍<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", { noremap = true, silent = true })
