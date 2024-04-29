local M = {
  "VonHeikemen/lsp-zero.nvim",
  branch = 'v3.x',
  dependencies = {
    -- LSP Support
    {"neovim/nvim-lspconfig"},
    {"williamboman/mason.nvim"},
    {"williamboman/mason-lspconfig.nvim"},

    -- Autocompletion
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"saadparwaiz1/cmp_luasnip"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-nvim-lua"},

    -- Snippets
    {"L3MON4D3/LuaSnip"},
    {"rafamadriz/friendly-snippets"},
  }
}

function M.config()
  local lsp = require "lsp-zero"

  require("luasnip.loaders.from_vscode").load()
  require("luasnip").filetype_extend("ruby", {"rails"})

  lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({bugger = bufnr})
  end)

  require("mason").setup({})
  require("mason-lspconfig").setup({
    ensure_installed = {'tsserver', 'solargraph'},
    handlers = {
      lsp.default_setup,
    }
  })
end

return M
