local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Install your plugins here
return packer.startup(function(use)
  use "FooSoft/vim-argwrap"
  use "christoomey/vim-tmux-navigator"
  use "godlygeek/tabular"
  use "iamcco/markdown-preview.nvim"
  use "kyazdani42/nvim-web-devicons"
  use "lifepillar/vim-solarized8"
  use "machakann/vim-highlightedyank"
  use "mxw/vim-jsx"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"
  use "preservim/vimux"
  use "slim-template/vim-slim"
  use "tpope/vim-bundler"
  use "tpope/vim-dispatch"
  use "tpope/vim-obsession"
  use "tpope/vim-rails"
  use "tpope/vim-repeat"
  use "tpope/vim-rhubarb"
  use "tpope/vim-surround"
  use "tpope/vim-vinegar"
  use "wbthomason/packer.nvim"
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require("user.plugins.toggleterm")
    end
  }
  use {
    "cappyzawa/trim.nvim",
    config = function()
      require("user.plugins.trim")
    end
  }
  use {
    "folke/which-key.nvim",
    config = function()
      require("user.plugins.which-key")
    end
  }
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("user.plugins.gitsigns")
    end
  }
  use {
    "numToStr/Comment.nvim",
    config = function()
      require("user.plugins.comment")
    end
  }
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", config = function()
      require("user.plugins.nvim-treesitter")
    end
  }
  use {
    "tpope/vim-fugitive",
    config = function()
      require("user.plugins.vim-fugitive")
    end
  }
  use {
    "vim-test/vim-test",
    config = function()
      require("user.plugins.vim-test")
    end
  }
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require("user.plugins.telescope")
    end,
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
    "VonHeikemen/lsp-zero.nvim",
    config = function()
      require("user.plugins.lsp")
    end,
    requires = {
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

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
