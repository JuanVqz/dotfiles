local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Install your plugins here
require("lazy").setup({
  "FooSoft/vim-argwrap",
  "christoomey/vim-tmux-navigator",
  "github/copilot.vim",
  "godlygeek/tabular",
  "haishanh/night-owl.vim",
  "iamcco/markdown-preview.nvim",
  "kyazdani42/nvim-web-devicons",
  "lifepillar/vim-solarized8",
  "machakann/vim-highlightedyank",
  "mxw/vim-jsx",
  "nvim-lua/plenary.nvim",
  "nvim-lua/popup.nvim",
  "preservim/vimux",
  "slim-template/vim-slim",
  "tpope/vim-bundler",
  "tpope/vim-dispatch",
  "tpope/vim-obsession",
  "tpope/vim-rails",
  "tpope/vim-repeat",
  "tpope/vim-rhubarb",
  "tpope/vim-surround",
  "tpope/vim-vinegar",
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("plugins.toggleterm")
    end
  },
  {
    "cappyzawa/trim.nvim",
    config = function()
      require("plugins.trim")
    end
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("plugins.which-key")
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.gitsigns")
    end
  },
  {
    "numToStr/Comment.nvim",
    config = function()
      require("plugins.comment")
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", config = function()
      require("plugins.nvim-treesitter")
    end
  },
  {
    "tpope/vim-fugitive",
    config = function()
      require("plugins.vim-fugitive")
    end
  },
  {
    "vim-test/vim-test",
    config = function()
      require("plugins.vim-test")
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("plugins.telescope")
    end,
    dependencies = { {"nvim-lua/plenary.nvim"} }
  },
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v3.x',
    config = function()
      require("plugins.lsp")
    end,
    dependencies = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-path"},
      {"saadparwaiz1/cmp_luasnip"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-nvim-lua"},

      -- Snippets
      {"L3MON4D3/LuaSnip"},
      {"rafamadriz/friendly-snippets"},
    }
  }
})
