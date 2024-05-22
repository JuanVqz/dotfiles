local M = {
  "folke/which-key.nvim",
}

function M.config()
  local wk = require "which-key"
  local Terminal  = require("toggleterm.terminal").Terminal

  wk.setup()

  local lazygit = Terminal:new({ direction = "float", cmd = "lazygit", dir = "git_dir", hidden = true })
  function _ToggleLazygit()
    lazygit:toggle()
  end

  local float = Terminal:new({ direction = "float", hidden = true })
  function _ToggleFloat()
    float:toggle()
  end

  local mappings = {
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
    t = {
      name = "Terminal",
      t = { _ToggleFloat, "Floating Terminal" },
      l = { _ToggleLazygit, "LazyGit Terminal" },
    },
    h = {
      name = "Gitsigns",
      p = { "<cmd>Gitsigns preview_hunk<CR>", "Preview Hunk" },
    },
    r = {
      name = "Testing",
      n = { ":TestNearest<CR>", "Test Nearest" },
      f = { ":TestFile<CR>", "Test File" },
      s = { ":TestSuite<CR>", "Test Suite" },
      l = { ":TestLast<CR>", "Test Last" },
    }
  }

  local opts = { prefix = "<leader>" }
  wk.register(mappings, opts)
end

return M
