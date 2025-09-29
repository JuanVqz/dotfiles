return {
  "stevearc/oil.nvim",
  opts = {
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    view_options = {
      show_hidden = true,
    }
  },
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function(_, opts)
    require('oil').setup(opts)

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end
}
