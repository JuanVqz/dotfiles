local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.load_extension("media_files")

-- local actions = require("telescope.actions")

telescope.setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
  },
  extensions = {
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg" },
      find_cmd = "rg" -- find command (defaults to `fd`)
    }
  }
})

vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope git_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep prompt_prefix=🔍<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fk", "<cmd>Telescope keymaps<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope colorscheme<CR>", { noremap = true, silent = true })
