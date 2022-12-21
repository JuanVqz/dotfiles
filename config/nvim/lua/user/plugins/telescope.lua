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

keymap("n", "<leader>ff", "<cmd>Telescope git_files<CR>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep prompt_prefix=🔍<CR>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope find_files<CR>", opts)
