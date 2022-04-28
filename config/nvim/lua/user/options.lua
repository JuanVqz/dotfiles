local options = {
  backup         = false,                             -- creates a backup file
  clipboard      = "unnamedplus",                     -- allows neovim to access the system clipboard
  showcmd        = true,                              -- show the user's input
  cmdheight      = 2,                                 -- more space in the neovim command line for displaying messages
  completeopt    = { "menu", "menuone", "noselect" }, -- mostly just for cmp
  conceallevel   = 0,                                 -- so that `` is visible in markdown files
  fileencoding   = "utf-8",                           -- the encoding written to a file
  hlsearch       = true,                              -- highlight all matches on previous search pattern
  ignorecase     = true,                              -- ignore case in search patterns
  mouse          = "a",                               -- allow the mouse to be used in neovim
  pumheight      = 10,                                -- pop up menu height
  showmode       = false,                             -- we don't need to see things like INSERT anymore
  smartcase      = true,                              -- smart case
  smartindent    = true,                              -- make indenting smarter again
  splitbelow     = true,                              -- force all horizontal splits to go below current window
  splitright     = true,                              -- force all vertical splits to go to the right of current window
  swapfile       = false,                             -- creates a swapfile
  termguicolors  = true,                              -- set term gui colors (most terminals support this)
  undofile       = true,                              -- enable persistent undo
  updatetime     = 300,                               -- faster completion (4000ms default)
  writebackup    = false,                             -- not allowed to be edited by other editor while on neovim
  expandtab      = true,                              -- convert tabs to spaces
  shiftwidth     = 2,                                 -- the number of spaces inserted for each indentation
  tabstop        = 2,                                 -- insert 2 spaces for a tab
  number         = true,                              -- set numbered lines
  relativenumber = true,                              -- set relative numbered lines
  numberwidth    = 4,                                 -- set number column width to 2 {default 4}
  signcolumn     = "yes",                             -- always show the sign column, otherwise it would shift the text each time
  wrap           = false,                             -- display lines as one long line
  scrolloff      = 8,                                 -- is one of my fav
  sidescrolloff  = 8,                                 -- horizontal scroll offset
  colorcolumn    = "80",                              -- line at specific column
  laststatus     = 3,                                 -- uses global statusline
  list           = true,                              -- see list chars
  listchars      = { tab = ":»", trail = "•", precedes = "…", conceal = "┊", nbsp = "☠" },
}

vim.opt.shortmess:append "c"

for key, value in pairs(options) do
  vim.opt[key] = value
end
