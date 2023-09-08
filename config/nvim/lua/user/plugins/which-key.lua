local ok, wk = pcall(require, "which-key")
if not ok then return end

wk.setup()

local Terminal  = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({ cmd = "lazygit", dir = "git_dir", hidden = true })
function _ToggleLazygit()
  lazygit:toggle()
end

local float = Terminal:new({ direction = "float", hidden = true })
function _ToggleFloat()
  float:toggle()
end

local mappings = {
  t = {
    name = "Terminal",
    t = { _ToggleFloat, "Floating Terminal" },
    l = { _ToggleLazygit, "LazyGit Terminal" },
  },
}

local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
