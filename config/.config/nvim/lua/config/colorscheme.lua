local colorscheme = 'macvim'
vim.opt.background = 'light'

-- local colorscheme = 'night-owl'
-- vim.opt.background = 'dark'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)
if not ok then return end
