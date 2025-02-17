return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    local function map(mode, lhs, rhs, opts)
      opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
      vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
    end

    require('mini.ai').setup()
    require('mini.animate').setup()
    require('mini.comment').setup()
    require('mini.icons').setup()
    require('mini.move').setup()
    require('mini.notify').setup()
    require('mini.pairs').setup()
    require('mini.splitjoin').setup()
    require('mini.statusline').setup()
    require('mini.surround').setup()
    require('mini.trailspace').setup()

    require('mini.extra').setup()
    -- require('mini.visits').setup()
    -- map('n', '<Leader>vr', '<cmd>MiniVisits.remove_path()<CR>', { desc = 'Remove path' })
    -- map('n', '<Leader>vl', ':Pick visit_paths<CR>', { desc = 'Pick visit paths' })

    -- mini pick
    require('mini.pick').setup()
    map('n', '<Leader>ff', ':Pick files<CR>', { desc = 'Pick files' })
    map('n', '<Leader>fg', ':Pick grep_live<CR>', { desc = 'Live Grep' })
    map('n', '<Leader>fb', ':Pick buffers<CR>', { desc = 'Pick buffers' })
    map('n', '<Leader>fh', ':Pick help<CR>', { desc = 'Pick help' })
    map('n', '<Leader>fv', ':Pick visit_paths<CR>', { desc = 'Pick visit paths' }) -- added by mini.extras

    -- mini clue
    local miniclue = require('mini.clue')
    miniclue.setup({
      triggers = {
        -- Leader triggers
        { mode = 'n', keys = '<Leader>' },
        { mode = 'x', keys = '<Leader>' },

        -- Built-in completion
        { mode = 'i', keys = '<C-x>' },

        -- `g` key
        { mode = 'n', keys = 'g' },
        { mode = 'x', keys = 'g' },

        -- Marks
        { mode = 'n', keys = "'" },
        { mode = 'n', keys = '`' },
        { mode = 'x', keys = "'" },
        { mode = 'x', keys = '`' },

        -- Registers
        { mode = 'n', keys = '"' },
        { mode = 'x', keys = '"' },
        { mode = 'i', keys = '<C-r>' },
        { mode = 'c', keys = '<C-r>' },

        -- Window commands
        { mode = 'n', keys = '<C-w>' },

        -- `z` key
        { mode = 'n', keys = 'z' },
        { mode = 'x', keys = 'z' },
      },

      clues = {
        -- Enhance this by adding descriptions for <Leader> mapping groups
        miniclue.gen_clues.builtin_completion(),
        miniclue.gen_clues.g(),
        miniclue.gen_clues.marks(),
        miniclue.gen_clues.registers(),
        miniclue.gen_clues.windows(),
        miniclue.gen_clues.z(),
      },
    })
  end
}

