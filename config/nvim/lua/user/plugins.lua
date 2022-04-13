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

-- Have packer use a popup window
--packer.init {
--  display = {
--    open_fn = function()
--      return require("packer.util").float { border = "rounded" }
--    end,
--  },
--}

-- Install your plugins here
return packer.startup(function(use)
  use "FooSoft/vim-argwrap"            -- https://github.com/foosoft/vim-argwrap
  use "christoomey/vim-tmux-navigator" -- https://github.com/christoomey/vim-tmux-navigator
  use "godlygeek/tabular"              -- https://github.com/godlygeek/tabular
  use {
    "lewis6991/gitsigns.nvim",         -- https://github.com/lewis6991/gitsigns.nvim
    tag = "release",
    config = function() 
      require("gitsigns").setup()
    end
  }
  use "machakann/vim-highlightedyank"  -- https://github.com/machakann/vim-highlightedyank
  use "nvim-lua/plenary.nvim"          -- https://github.com/nvim-lua/plenary.nvim
  use "nvim-lua/popup.nvim"            -- https://github.com/nvim-lua/popup.nvim
  use "tpope/vim-fugitive"             -- https://github.com/tpope/vim-fugitive
  use "tpope/vim-rails"                -- https://github.com/tpope/vim-rails
  use "tpope/vim-vinegar"              -- https://github.com/tpope/vim-vinegar
  use "wbthomason/packer.nvim"         -- https://github.com/nvim-lua/plenary.nvim

  -- complete paths, buffers, snippets
  use "hrsh7th/nvim-cmp"               -- https://github.com/hrsh7th/nvim-cmp
  use "hrsh7th/cmp-buffer"             -- https://github.com/hrsh7th/nvim-cmp
  use "hrsh7th/cmp-path"               -- https://github.com/hrsh7th/nvim-cmp
  use "hrsh7th/cmp-cmdline"            -- https://github.com/hrsh7th/nvim-cmp
  use "saadparwaiz1/cmp_luasnip"       -- https://github.com/saadparwaiz1/cmp_luasnip
  use "hrsh7th/cmp-nvim-lsp"           -- https://github.com/hrsh7th/cmp-nvim-lsp

  -- snippets
  use "L3MON4D3/LuaSnip"               -- https://github.com/L3MON4D3/LuaSnip
  use "rafamadriz/friendly-snippets"   -- https://github.com/rafamadriz/friendly-snippets

  -- lsp
  use "neovim/nvim-lspconfig"           -- https://github.com/neovim/nvim-lspconfig
  use "williamboman/nvim-lsp-installer" -- https://github.com/williamboman/nvim-lsp-installer

  -- nvim-treesitter
  use {
    "nvim-treesitter/nvim-treesitter",  -- https://github.com/nvim-treesitter/nvim-treesitter
    run = ":TSUpdate"
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
