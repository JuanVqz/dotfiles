local ok, lsp = pcall(require, "lsp-zero")
if not ok then return end

require("luasnip.loaders.from_vscode").load()
require("luasnip").filetype_extend("ruby", {"rails"})

lsp.preset("recommended")

lsp.nvim_workspace()

lsp.setup()
