-- For keymaps look at the which-key.lua file.

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "cljoly/telescope-repo.nvim",
    "airblade/vim-rooter"
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({})

    pcall(require("telescope").load_extension, "fzf")
    telescope.load_extension("repo")
  end,
}
