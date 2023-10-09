local ok, wk = pcall(require, "which-key")
if not ok then return end

wk.setup()

local Terminal  = require("toggleterm.terminal").Terminal

local lazygit = Terminal:new({ direction = "float", cmd = "lazygit", dir = "git_dir", hidden = true })
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
  f = {
    name = "Telescope",
    f = { "<cmd>Telescope git_files<cr>", "Find git files" },
    b = { "<cmd>Telescope buffers<cr>", "Find buffers" },
    c = { "<cmd>Telescope colorscheme<cr>", "Find colorscheme" },
    g = { "<cmd>Telescope live_grep prompt_prefix=🔍<cr>", "File Grep" },
    h = { "<cmd>Telescope help_tags<cr>", "Find tags" },
    k = { "<cmd>Telescope keymaps<cr>", "Find keymaps" },
    p = { "<cmd>Telescope find_files<cr>", "Find files" },
  },
}

local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
