function! g:BG_none(group)
  exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
endfunction

function! s:theme_customize() abort
  call BG_none("CursorColumn")
  call BG_none("CursorColumn")
  call BG_none("CursorLineNr")
  call BG_none("SightColumn")
  call BG_none("NonText")
  call BG_none("TabLine")
  call BG_none("TabLineFill")
  set nocursorline
endfunction

"augroup on_change_colorschema
  "autocmd!
  "autocmd ColorScheme * call s:theme_customize()
"augroup END

colorscheme gruvbox
