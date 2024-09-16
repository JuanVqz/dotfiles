-- For keymaps look at the which-key.lua file.

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "airblade/vim-rooter",
    "cljoly/telescope-repo.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({})

    pcall(require("telescope").load_extension, "fzf")
    telescope.load_extension("repo")
  end,
}
