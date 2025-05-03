return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Find buffers' },
    { '<leader>fc', '<cmd>Telescope colorscheme<cr>', desc = 'Find colorscheme' },
    { '<leader>ff', '<cmd>Telescope git_files<cr>', desc = 'Find git files' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'File Grep' },
    { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Find tags' },
    { '<leader>fk', '<cmd>Telescope keymaps<cr>', desc = 'Find keymaps' },
  },
}
