" let test#strategy = {
"   \ "nearest": "neovim",
"   \ "file":    "dispatch",
"   \ "suite":   "basic",
" \}

"  options: topleft, vert, vert botright 30
" let test#neovim#term_position = "topleft"
let test#strategy = "vimux"

let g:test#runner_commands = ["Minitest", "RSpec", "Mocha"]

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
