local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require 'paq' {
  'savq/paq-nvim',
  'machakann/vim-highlightedyank',
  'AndrewRadev/splitjoin.vim',
  'christoomey/vim-tmux-navigator',
  'preservim/vimux',
  'tpope/vim-bundler',
  'tpope/vim-dispatch',
  'tpope/vim-endwise',
  'tpope/vim-eunuch',
  'tpope/vim-fugitive',
  'tpope/vim-obsession',
  'tpope/vim-rails',
  'tpope/vim-repeat',
  'tpope/vim-rhubarb',
  'tpope/vim-surround',
  'tpope/vim-unimpaired',
  'tpope/vim-vinegar',
  'vim-test/vim-test',
}
