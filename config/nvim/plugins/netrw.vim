" Enable easier windows navigation mappings on Netrw buffers.
function NetrwMappings()
  nnoremap <buffer> <C-h> :wincmd h<cr>
  nnoremap <buffer> <C-j> :wincmd j<cr>
  nnoremap <buffer> <C-k> :wincmd k<cr>
  nnoremap <buffer> <C-l> :wincmd l<cr>
endfunction

augroup netrw_mappings
  autocmd!
  autocmd filetype netrw call NetrwMappings()
augroup END
