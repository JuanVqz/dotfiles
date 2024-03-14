local ok, lsp = pcall(require, "lsp-zero")
if not ok then return end

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
