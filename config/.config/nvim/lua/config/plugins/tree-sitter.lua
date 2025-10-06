return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        'bash',
        'cmake',
        'css',
        'diff',
        'html',
        'javascript',
        'json',
        'lua',
        'ruby',
        'scss',
        'templ',
        'tsx',
        'vim',
        'yaml',
      },
    })
  end,
}
