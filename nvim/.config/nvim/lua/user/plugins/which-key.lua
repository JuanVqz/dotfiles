local M = {
  "folke/which-key.nvim",
}

function M.config()
  local wk = require "which-key"

  wk.setup()

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
