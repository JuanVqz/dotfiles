local ok, toggleterm = pcall(require, "toggleterm")
if not ok then return end

toggleterm.setup({
  open_mapping = "<c-t>",
  direction = "float",
})

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", dir = "git_dir", hidden = true })

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>hl", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
