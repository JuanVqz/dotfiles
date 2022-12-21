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
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
  },
})
