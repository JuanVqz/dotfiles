" let test#strategy = {
"   \ "nearest": "neovim",
"   \ "file":    "dispatch",
"   \ "suite":   "basic",
" \}

"  options: topleft, vert, vert botright 30
" let test#neovim#term_position = "topleft"
let test#strategy = "vimux"

let g:test#runner_commands = ["Minitest", "RSpec", "Mocha"]

lua << EOF
vim.api.nvim_set_keymap("n", "t<C-n>", ":TestNearest<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "t<C-f>", ":TestFile<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "t<C-s>", ":TestSuite<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "t<C-l>", ":TestLast<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "t<C-g>", ":TestVisit<CR>", { noremap = true, silent = true })
EOF
