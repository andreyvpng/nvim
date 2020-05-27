"""""""""""""""""""""""""""""
" => General mapping
"""""""""""""""""""""""""""""

let mapleader = " "
let maplocalleader = "\\"

" vimrc
if g:os == "windows"
  let g:init_file = "~/AppData/Local/nvim/init.vim"
else
  let g:init_file = "~/.config/nvim/init.vim"
endif

command! SourceVimrc execute 'source ' . g:init_file
command! OpenVimrc execute 'e ' . g:init_file
nnoremap <leader>vs :SourceVimrc<cr>
nnoremap <leader>ve :OpenVimrc<cr>
nnoremap <leader>vo :OpenVimrc<cr>

" save & quit
nnoremap <leader>w :w!<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qall<cr>

" Fix common typos
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev WQ wq

" uppercase
inoremap <c-u> <ESC>viwUea

" toggle wrap
nnoremap <leader>W :set wrap!<cr>

" toggle number
nnoremap <leader>N :set number!<cr>

" copy/paste in/from system
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" exit insert mode
imap jj <Esc>


"""""""""""""""""""""""""""""
" => Moving
"""""""""""""""""""""""""""""

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" switch CWD
nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Close the current buffer
map <leader>bd :bdelete<cr>

" switch between buffers
map <leader>bl :bnext<cr>
map <leader>bh :bprevious<cr>

" switch buffers
nnoremap <leader>bb :buffers<CR>:buffer<Space>

" only one buffer
nnoremap <leader>bo :only<CR>

" mapping for tabs
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr><cr>

" moving between windows
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key, '[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

" timestamp
command! Timestamp execute 'normal o# '.strftime("%d %B %Y %H:%M")
noremap <leader>pt :Timestamp<CR>

" wordprocessor
function! WordProcessorMode()
    setlocal spell spelllang=ru_ru,en_us
    setlocal wrap
    setlocal linebreak
    setlocal nolist
    " russian keyboard
    set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\«ZXCVBNM<>
    set iminsert=0
    set imsearch=0
endfu
command! WP call WordProcessorMode()
nnoremap WP :WP<cr>


"""""""""""""""""""""""""""""
" => Spell Checking
"""""""""""""""""""""""""""""

" toggle spell
nnoremap <leader>ss :setlocal spell! spelllang=ru_ru,en_us<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
