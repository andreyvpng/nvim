if has('unix')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
endif

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using Vim function
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

nnoremap <leader>bb :Buffers<CR>

if g:os == "windows"
  let g:projects = {
        \'dots': "~/github/dot",
        \'notes': "~/notes/",
        \'diary': "~/diary"}

  let g:projects = {
        \'dots': "~/AppData/Local/nvim"}
endif

function! OpenProject()
  let list_of_projects=[]
  let i = 0

  for item in keys(g:projects)
    let i+=1
    call add(list_of_projects, item)
    echo(i . ") " . item)
  endfor

  let index = input('Enter number: ')
  let path_to_project = get(g:projects, list_of_projects[index - 1])

  exec "cd " . path_to_project
  exec "Files " . path_to_project
endfunction

command! OpenProject :call OpenProject()
nnoremap <leader>op :OpenProject<cr>
