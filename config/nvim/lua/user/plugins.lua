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
  use "FooSoft/vim-argwrap"            -- https://github.com/foosoft/vim-argwrap
  use "christoomey/vim-tmux-navigator" -- https://github.com/christoomey/vim-tmux-navigator
  use "godlygeek/tabular"              -- https://github.com/godlygeek/tabular
  use "honza/vim-snippets"             -- https://github.com/honza/vim-snippets
  use "lifepillar/vim-solarized8"      -- https://github.com/lifepillar/vim-solarized8
  use "machakann/vim-highlightedyank"  -- https://github.com/machakann/vim-highlightedyank
  use "mxw/vim-jsx"                    -- https://github.com/mxw/vim-jsx
  use "nvim-lua/plenary.nvim"          -- https://github.com/nvim-lua/plenary.nvim
  use "nvim-lua/popup.nvim"            -- https://github.com/nvim-lua/popup.nvim
  use "preservim/vimux"                -- https://github.com/preservim/vimux
  use "slim-template/vim-slim"         -- https://github.com/slim-template/vim-slim
  use "tpope/vim-bundler"              -- https://github.com/tpope/vim-bundler
  use "tpope/vim-dispatch"             -- https://github.com/tpope/vim-dispatch
  use "tpope/vim-obsession"            -- https://github.com/tpope/vim-obsession
  use "tpope/vim-rails"                -- https://github.com/tpope/vim-rails
  use "tpope/vim-repeat"               -- https://github.com/tpope/vim-repeat
  use "tpope/vim-rhubarb"              -- https://github.com/tpope/vim-rhubarb
  use "tpope/vim-surround"             -- https://github.com/tpope/vim-surround
  use "tpope/vim-vinegar"              -- https://github.com/tpope/vim-vinegar
  use "wbthomason/packer.nvim"         -- https://github.com/wbthomason/packer.nvim
  use { -- https://github.com/akinsho/toggleterm.nvim
    "akinsho/toggleterm.nvim",
    config = function()
      require("user.plugins.toggleterm")
    end
  }
  use { -- https://github.com/cappyzawa/trim.nvim
    "cappyzawa/trim.nvim",
    config = function()
      require("user.plugins.trim")
    end
  }
  use { -- https://github.com/folke/which-key.nvim
    "folke/which-key.nvim",
    config = function()
      require("user.plugins.which-key")
    end
  }
  use { -- https://github.com/lewis6991/gitsigns.nvim
    "lewis6991/gitsigns.nvim",
    config = function()
      require("user.plugins.gitsigns")
    end
  }
  use { -- https://github.com/neoclide/coc.nvim
    "neoclide/coc.nvim",
    config = function()
      require("user.plugins.coc")
    end, branch = "master", run = "yarn install --frozen-lockfile"
  }
  use { -- https://github.com/numToStr/Comment.nvim
    "numToStr/Comment.nvim",
    config = function()
      require("user.plugins.comment")
    end
  }
  use { -- https://github.com/nvim-treesitter/nvim-treesitter
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate", config = function()
      require("user.plugins.nvim-treesitter")
    end
  }
  use { -- https://github.com/tpope/vim-fugitive
    "tpope/vim-fugitive",
    config = function()
      require("user.plugins.vim-fugitive")
    end
  }
  use { -- https://github.com/vim-test/vim-test
    "vim-test/vim-test",
    config = function()
      require("user.plugins.vim-test")
    end
  }
  use { -- https://github.com/kyazdani42/nvim-web-devicons
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("user.plugins.nvim-web-devicons")
    end
  }
  use { -- https://github.com/nvim-telescope/telescope.nvim
    "nvim-telescope/telescope.nvim",
    config = function()
      require("user.plugins.telescope")
    end,
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
