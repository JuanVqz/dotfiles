return {
  'lewis6991/gitsigns.nvim',
  event = 'BufReadPre', -- Load when a buffer is read
  config = function()
    require('gitsigns').setup({
      on_attach = function(bufnr)
        local function map(mode, lhs, rhs, opts)
          opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
          vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
        end

        -- Navigation
        map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true, desc = 'Next Hunk'})
        map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true, desc = 'Previous Hunk'})

        -- Actions
        map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage the hunk under the cursor' })
        map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>', { desc = 'Stage the hunk under the cursor' })
        map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset the hunk under the cursor' })
        map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>', { desc = 'Reset the hunk under the cursor' })
        map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>', { desc = 'Stage all hunks' })
        map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>', { desc = 'Undo stage the hunk under the cursor' })
        map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>', { desc = 'Reset all hunks' })
        map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
        map('n', '<leader>hB', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>', { desc = 'Blame the line under the cursor' })
        map('n', '<leader>hb', '<cmd>Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle blame the line under the cursor' })
        map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>', { desc = 'Diff the current hunk' })
        map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>', { desc = 'Diff the current hunk against the base commit' })
        map('n', '<leader>ht', '<cmd>Gitsigns toggle_deleted<CR>', { desc = 'Toggle deleted files' })

        -- Text object
        -- map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        -- map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
      end
    })
  end,
}
