return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.ai').setup()

    -- Mini Move
    -- https://github.com/nvim-mini/mini.animate
    require('mini.animate').setup()

    -- Mini Move
    -- https://github.com/nvim-mini/mini.comment
    -- gcc     -- At normal mode comment a line
    -- gc      -- At selected mode comment a line
    require('mini.comment').setup()

    -- Mini Move
    -- https://github.com/nvim-mini/mini.icons
    require('mini.icons').setup()

    -- Mini Move
    -- https://github.com/nvim-mini/mini.move
    -- Linux: Alt-{h,j,k,l} to move lines
    -- Mac: Opt-{h,j,k,l} to move lines
    require('mini.move').setup()

    -- Mini Notify
    -- https://github.com/nvim-mini/mini.notify
    require('mini.notify').setup()

    -- Mini SplitJoin
    -- https://github.com/nvim-mini/mini.splitjoin
    -- gS      -- Toggle Split/Join line
    require('mini.splitjoin').setup()

    -- Mini StatusLine
    -- https://github.com/nvim-mini/mini.statusline
    require('mini.statusline').setup()

    -- Mini Surround
    -- https://github.com/nvim-mini/mini.surround
    -- saw(    -- Add ( around a word
    -- sdw(    -- Delete ( around a word
    -- sr'"    -- Replace ' with "
    -- sf{     -- Find {
    -- sh(     -- Highlight (
    require('mini.surround').setup()

    -- Mini Trailspace
    -- https://github.com/nvim-mini/mini.trailspace
    -- :lua MiniTrailspace.trim()
    -- :lua MiniTrailspace.trim_last_lines()
    require('mini.trailspace').setup()

    -- Mini Clue
    -- https://github.com/nvim-mini/mini.clue
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

