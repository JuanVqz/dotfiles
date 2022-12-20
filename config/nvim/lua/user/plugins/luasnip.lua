local ok, ls = pcall(require, "luasnip")
if not ok then return end

ls.filetype_extend("ruby", {"rails"})
