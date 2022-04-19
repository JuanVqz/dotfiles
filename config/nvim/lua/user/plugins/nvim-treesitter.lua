local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
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
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
}
