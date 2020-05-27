if has("win64") || has("win32") || has("win16")
  let g:os = "windows"
else
  let g:os = "unix"
endif

function! Dot(path)
  if g:os == "windows"
    return '~/AppData/Local/nvim/' . a:path
  return '~/.config/nvim/' . a:path
endfunction

for file in split(glob(Dot('modules/*.vim')), '\n')
  execute 'source' file
endfor
