" ===== Seeing Is Believing =====
" Assumes you have a Ruby with SiB available in the PATH
" If it doesn't work, you may need to `gem install seeing_is_believing`
" https://github.com/JoshCheek/dotfiles/blob/ce7c47d14e4ae4ff2d736607efb515c75c3e00e4/vimrc#L131-L190

function! WithoutChangingCursor(fn)
  let cursor_pos     = getpos(".")
  let wintop_pos     = getpos("w0")
  let old_lazyredraw = &lazyredraw
  let old_scrolloff  = &scrolloff
  set lazyredraw

  call a:fn()

  call setpos(".", wintop_pos)
  call setpos(".", cursor_pos)
  redraw
  let &lazyredraw = old_lazyredraw
  let scrolloff   = old_scrolloff
endfun

function! SibAnnotateAll(scope)
  call WithoutChangingCursor(function("execute", [a:scope . "!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk"]))
endfun

function! SibAnnotateMarked(scope)
  call WithoutChangingCursor(function("execute", [a:scope . "!seeing_is_believing --xmpfilter-style --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk"]))
endfun

function! SibCleanAnnotations(scope)
  call WithoutChangingCursor(function("execute", [a:scope . "!seeing_is_believing --clean"]))
endfun

function! SibToggleMark()
  let pos  = getpos(".")
  let line = getline(".")
  if line =~ "^\s*$"
    let line = "# => "
  elseif line =~ "# =>"
    let line = substitute(line, " *# =>.*", "", "")
  else
    let line .= "  # => "
  end
  call setline(".", line)
  call setpos(".", pos)
endfun

" Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  " clear the settings if they already exist (so we don't run them twice)
  autocmd!
  autocmd FileType ruby nmap <buffer> <Leader>bb :call SibAnnotateAll("%")<CR>;
  autocmd FileType ruby nmap <buffer> <Leader>bn :call SibAnnotateMarked("%")<CR>;
  autocmd FileType ruby nmap <buffer> <Leader>bv :call SibCleanAnnotations("%")<CR>;
  autocmd FileType ruby nmap <buffer> <Enter>   :call SibToggleMark()<CR>;
  autocmd FileType ruby vmap <buffer> <Enter>   :call SibToggleMark()<CR>;

  autocmd FileType ruby vmap <buffer> <Leader>bb :call SibAnnotateAll("'<,'>")<CR>;
  autocmd FileType ruby vmap <buffer> <Leader>bn :call SibAnnotateMarked("'<,'>")<CR>;
  autocmd FileType ruby vmap <buffer> <Leader>bv :call SibCleanAnnotations("'<,'>")<CR>;
augroup END
