" vim.opt.foldmethod = "expr"
" vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
lua << EOF
local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true
  }
}
EOF
