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
  use "wbthomason/packer.nvim"                -- https://github.com/wbthomason/packer.nvim
  use "FooSoft/vim-argwrap"                   -- https://github.com/foosoft/vim-argwrap
  use "godlygeek/tabular"                     -- https://github.com/godlygeek/tabular
  use "machakann/vim-highlightedyank"         -- https://github.com/machakann/vim-highlightedyank
  use "nvim-lua/plenary.nvim"                 -- https://github.com/nvim-lua/plenary.nvim
  use "nvim-lua/popup.nvim"                   -- https://github.com/nvim-lua/popup.nvim
  use {                                       -- https://github.com/tpope/vim-fugitive
    "tpope/vim-fugitive",
    config = function()
      require("user.plugins.vim-fugitive")
    end
  }
  use "tpope/vim-rails"                       -- https://github.com/tpope/vim-rails
  use "tpope/vim-vinegar"                     -- https://github.com/tpope/vim-vinegar
  use {                                       -- https://github.com/lewis6991/gitsigns.nvim
    "lewis6991/gitsigns.nvim",
    config = function()
      require("user.plugins.gitsigns")
    end
  }
  use {                                        -- https://github.com/numToStr/Comment.nvim
      "numToStr/Comment.nvim",
      config = function()
        require("Comment").setup()
      end
  }

  -- tmux navigation, sessions
  use "christoomey/vim-tmux-navigator"        -- https://github.com/christoomey/vim-tmux-navigator
  use "tpope/vim-obsession"                   -- https://github.com/tpope/vim-obsession

  -- send test to tmux
  use "preservim/vimux"                       -- https://github.com/preservim/vimux
  use "tpope/vim-dispatch"                    -- https://github.com/tpope/vim-dispatch
  use {                                       -- https://github.com/vim-test/vim-test
    "vim-test/vim-test",
    config = function()
      require("user.plugins.vim-test")
    end
  }

  -- complete paths, buffers, snippets
  use {                                       -- https://github.com/hrsh7th/nvim-cmp
    "hrsh7th/nvim-cmp",
    config = function()
      require("user.plugins.nvim-cmp")
    end
  }
  use "hrsh7th/cmp-buffer"                    -- https://github.com/hrsh7th/cmp-buffer
  use "hrsh7th/cmp-path"                      -- https://github.com/hrsh7th/cmp-path
  use "hrsh7th/cmp-cmdline"                   -- https://github.com/hrsh7th/cmp-cmdline
  use "hrsh7th/cmp-nvim-lsp"                  -- https://github.com/hrsh7th/cmp-nvim-lsp
  use "saadparwaiz1/cmp_luasnip"              -- https://github.com/saadparwaiz1/cmp_luasnip
  use "L3MON4D3/LuaSnip"                      -- https://github.com/L3MON4D3/LuaSnip
  use "rafamadriz/friendly-snippets"          -- https://github.com/rafamadriz/friendly-snippets

  -- lsp
  use {
    "neovim/nvim-lspconfig",                  -- https://github.com/neovim/nvim-lspconfig
    "williamboman/nvim-lsp-installer"         -- https://github.com/williamboman/nvim-lsp-installer
  }

  use {                                       -- https://github.com/nvim-treesitter/nvim-treesitter
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("user.plugins.nvim-treesitter")
    end
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
