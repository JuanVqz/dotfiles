return {
  'mason-org/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  },
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' },
            },
          },
        },
      },
      tsserver = {},
      pyright = {},
    },
  },
  config = function(_, opts)
    require('mason').setup()

    require('mason-lspconfig').setup {
      ensure_installed = { 'lua_ls', 'ruby_lsp', 'tsserver', 'pyright' },
    }

    for server, config in pairs(opts.servers) do
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end

    -- vim.diagnostic.config({
    --   virtual_text = true,
    --   signs = true,
    --   update_in_insert = false,
    --   underline = true,
    --   severity_sort = false,
    --   float = true,
    -- })
  end,
}
