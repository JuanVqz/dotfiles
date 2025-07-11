return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      highlight = { enable = true },
      ensure_installed = {
        "bash",
        "cmake",
        "css",
        "diff",
        "html",
        "json",
        "lua",
        "ruby",
        "scss",
        "templ",
        "tsx",
        "javascript",
        "vim",
        "yaml",
      },
    }
  end,
}
