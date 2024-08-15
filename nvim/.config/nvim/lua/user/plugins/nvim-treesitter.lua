return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "css",
      "html",
      "json",
      "lua",
      "ruby",
      "scss",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      "cmake",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  }
}
