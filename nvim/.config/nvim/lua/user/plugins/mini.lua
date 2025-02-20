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
    -- MiniMove
    -- Linux: Alt-{h,j,k,l} to move lines
    -- Mac: Opt-{h,j,k,l} to move lines
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
    local MiniPick = require('mini.pick')
    MiniPick.setup({
      mappings = {
        sys_paste = {
          char = "<C-r>",
          func = function()
            MiniPick.set_picker_query({ vim.fn.getreg("+") })
          end,
        },
      }
    })

    map('n', '<Leader>ff', ':Pick files<CR>', { desc = 'Pick files' })
    map('n', '<Leader>fg', ':Pick grep_live<CR>', { desc = 'Live Grep' })
    map('n', '<Leader>fb', ':Pick buffers<CR>', { desc = 'Pick buffers' })
    map('n', '<Leader>fh', ':Pick help<CR>', { desc = 'Pick help' })
    map('n', '<Leader>fv', ':Pick visit_paths<CR>', { desc = 'Pick visit paths' }) -- added by mini.extras

    -- mini clue
    local MiniClue = require('mini.clue')
    MiniClue.setup({
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
        MiniClue.gen_clues.builtin_completion(),
        MiniClue.gen_clues.g(),
        MiniClue.gen_clues.marks(),
        MiniClue.gen_clues.registers(),
        MiniClue.gen_clues.windows(),
        MiniClue.gen_clues.z(),
      },
    })
  end
}

