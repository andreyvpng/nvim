nnoremap <leader>gt :GitGutterToggle<cr>
autocmd BufWritePost * GitGutter
let g:gitgutter_override_sign_column_highlight = 1
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_async = 1
