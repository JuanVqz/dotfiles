-- local colorscheme = "solarized8_flat"
-- local colorscheme = "night-owl"
local colorscheme = "rose-pine-moon"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then return end
