local M = {}

M.load_options = function()
  local default_options = {
    backup = false,
    clipboard = 'unnamedplus',
    cmdheight = 2,
    colorcolumn = '80',
    expandtab = true,
    hidden = true,
    hlsearch = true,
    ignorecase = true,
    mouse = 'a',
    number = true,
    relativenumber = true,
    shiftwidth = 2,
    showcmd = true,
    showmode = false,
    swapfile = false,
    tabstop = 2,
    termguicolors = true,
    updatetime = 300,
    wrap = false,
    writebackup = false,
  }

  for k, v in pairs(default_options) do
    vim.opt[k] = v
  end
end

return M

