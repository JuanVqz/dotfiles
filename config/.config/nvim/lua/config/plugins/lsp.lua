return {
  'mason-org/mason.nvim',
  dependencies = {
    'mason-org/mason-lspconfig.nvim',
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
    },
  },
  config = function(_, opts)
    require('mason').setup()

    require('mason-lspconfig').setup {
      ensure_installed = { 'lua_ls', 'ruby_lsp', 'ts_ls', 'pyright' },
    }

    for server, config in pairs(opts.servers) do
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end

    local config = {
      float = true,
      severity_sort = true,
      signs = true,
      underline = true,
      update_in_insert = false,
      virtual_text = true,
    }

    vim.diagnostic.config(config)
  end,
}
