"" Gui
if has("gui_running")
  set guioptions-=m
  set guioptions-=b
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T

  if has("gui_gtk2") || has("gui_gtk3")
    let g:airline_powerline_fonts = 0
    set guifont=Ubuntu\ Mono\ 12
  endif
  if has("gui_macvim")
    set macligatures
    set guifont=Menlo\ for\ Powerline:h14
    let macvim_hig_shift_movement=1
  endif
endif
