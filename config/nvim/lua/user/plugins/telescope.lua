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

local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

keymap("n", "<leader>tf", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>tb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>tc", "<cmd>Telescope colorscheme<CR>", opts)
keymap("n", "<leader>tg", "<cmd>Telescope live_grep prompt_prefix=🔍<CR>", opts)
keymap("n", "<leader>th", "<cmd>Telescope help_tags<CR>", opts)
keymap("n", "<leader>tk", "<cmd>Telescope keymaps<CR>", opts)
keymap("n", "<leader>tp", "<cmd>Telescope git_files<CR>", opts)
