-- nvim strategy configuration
-- let test#strategy = {
--   \ "nearest": "neovim",
--   \ "file":    "dispatch",
--   \ "suite":   "basic",
-- \}
--  options: topleft, vert, vert botright 30
-- let test#neovim#term_position = "topleft"
--
-- Add priority to the test runner
-- vim.cmd [[
--   let g:test#runner_commands = ["Minitest", "RSpec", "Mocha"]
-- ]]

return {
  "vim-test/vim-test",
  dependencies = {
    "preservim/vimux",
  },
  config = function()
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_set_keymap

    keymap("n", "<leader>rn", ":TestNearest<CR>", opts)
    keymap("n", "<leader>rf", ":TestFile<CR>", opts)
    keymap("n", "<leader>rs", ":TestSuite<CR>", opts)
    keymap("n", "<leader>rl", ":TestLast<CR>", opts)

    -- https://github.com/fastruby/next_rails
    keymap("n", "<leader>rrn", ":TestNearest BUNDLE_GEMFILE=Gemfile.next<CR>", opts)
    keymap("n", "<leader>rrf", ":TestFile BUNDLE_GEMFILE=Gemfile.next<CR>", opts)
    keymap("n", "<leader>rrs", ":TestSuite BUNDLE_GEMFILE=Gemfile.next<CR>", opts)
    keymap("n", "<leader>rrl", ":TestLast BUNDLE_GEMFILE=Gemfile.next<CR>", opts)

    vim.cmd('let test#strategy = "vimux"')
  end,
}
