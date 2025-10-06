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
  'vim-test/vim-test',
  dependencies = {
    'preservim/vimux',
  },
  config = function()
    local function map(mode, lhs, rhs, opts)
      opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
      vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    end

    map('n', '<leader>rn', ':TestNearest<CR>', { desc = 'Run the nearest test', })
    map('n', '<leader>rf', ':TestFile<CR>', { desc = 'Run the current file tests', })
    map('n', '<leader>rs', ':TestSuite<CR>', { desc = 'Run the test suite', })
    map('n', '<leader>rl', ':TestLast<CR>', { desc = 'Run the last test', })

    -- https://github.com/fastruby/next_rails
    map('n', '<leader>rrn', ':TestNearest BUNDLE_GEMFILE=Gemfile.next<CR>', { desc = 'Run the next nearest test', })
    map('n', '<leader>rrf', ':TestFile BUNDLE_GEMFILE=Gemfile.next<CR>', { desc = 'Run the next current file tests', })
    map('n', '<leader>rrs', ':TestSuite BUNDLE_GEMFILE=Gemfile.next<CR>', { desc = 'Run the next test suite', })
    map('n', '<leader>rrl', ':TestLast BUNDLE_GEMFILE=Gemfile.next<CR>', { desc = 'Run the next last test', })

    vim.cmd('let test#strategy = "vimux"')
  end,
}
