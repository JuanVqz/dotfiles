return {
  "stevearc/oil.nvim",
  opts = {
    delete_to_trash = true,
    view_options = {
      show_hidden = true,
    }
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function(_, opts)
    require('oil').setup(opts)

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end
}
