local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then return end

configs.setup({
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
})
