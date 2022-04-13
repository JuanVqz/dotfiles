-- nvim strategy configuration
-- let test#strategy = {
--   \ "nearest": "neovim",
--   \ "file":    "dispatch",
--   \ "suite":   "basic",
-- \}
--  options: topleft, vert, vert botright 30
-- let test#neovim#term_position = "topleft"

vim.cmd [[
let g:test#runner_commands = ["Minitest", "RSpec", "Mocha"]
]]
vim.g["test#strategy"] = "vimux"

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

keymap("n", "t<C-n>", ":TestNearest<CR>", opts)
keymap("n", "t<C-f>", ":TestFile<CR>", opts)
keymap("n", "t<C-s>", ":TestSuite<CR>", opts)
keymap("n", "t<C-l>", ":TestLast<CR>", opts)

