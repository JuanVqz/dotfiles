-- nvim strategy configuration
-- let test#strategy = {
--   \ "nearest": "neovim",
--   \ "file":    "dispatch",
--   \ "suite":   "basic",
-- \}
--  options: topleft, vert, vert botright 30
-- let test#neovim#term_position = "topleft"

local M = {
  "vim-test/vim-test",
}

function M.config()
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

  -- https://github.com/fastruby/next_rails
  -- setting BUNDLE_GEMFILE=Gemfile.next to run the spec in the next Rails version
  keymap("n", "tt<C-n>", ":TestNearest BUNDLE_GEMFILE=Gemfile.next<CR>", opts)
  keymap("n", "tt<C-f>", ":TestFile BUNDLE_GEMFILE=Gemfile.next<CR>", opts)
  keymap("n", "tt<C-s>", ":TestSuite BUNDLE_GEMFILE=Gemfile.next<CR>", opts)
  keymap("n", "tt<C-l>", ":TestLast BUNDLE_GEMFILE=Gemfile.next<CR>", opts)
end

return M
