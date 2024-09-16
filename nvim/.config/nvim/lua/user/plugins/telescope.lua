return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "airblade/vim-rooter",
    "cljoly/telescope-repo.nvim",
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
    { "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Find colorscheme" },
    { "<leader>ff", "<cmd>Telescope git_files<cr>", desc = "Find git files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "File Grep" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find tags" },
    { "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Find keymaps" },
    { "<leader>fp", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fr", "<cmd>lua require'telescope'.extensions.repo.list{search_dirs = {'~/code', '~/.config'}}<cr>", desc = "Find repos" },
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({})

    telescope.load_extension("repo")
  end,
}
