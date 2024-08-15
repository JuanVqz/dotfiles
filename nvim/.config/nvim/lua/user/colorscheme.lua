-- local colorscheme = "solarized8_flat"
-- local colorscheme = "rose-pine-moon"
local colorscheme = "night-owl"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then return end
