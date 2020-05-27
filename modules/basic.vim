set nocompatible
" Sets how many line of history VIM has to remember
set history=500
" Sets to auto read when a file is changed from a outside
set autoread
" Ignore compiled files
set wildignore=*.o,*.pyc,*/.git
"set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»
set listchars=tab:→\ ,nbsp:␣,trail:•,precedes:«,extends:»
set list

" Search
set ignorecase
set smartcase
set hlsearch
set incsearch

" Set uftf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile

" Show matching brackets when text indicator is over them
set showmatch

" Tab settings
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Show numbers of lines
set number

" wrap
set wrap

" automatically creating directory
autocmd BufWritePre *
    \ if !isdirectory(expand("<afile>:p:h")) |
    \   call mkdir(expand("<afile>:p:h"), "p") |
    \ endif

" Use the system clipboard for copy and paste
set clipboard=unnamedplus

" enable mouse
set mouse=a

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.QWERTYUIOP{}ASDFGHJKL:\\«ZXCVBNM<>


"""""""""""""""""""""""""""""
" => Style
"""""""""""""""""""""""""""""

syntax on

"set split separator
set fillchars+=vert:│

colorscheme delek
set background=dark

"set termguicolors
set t_Co=256
"let base16colorspace=256

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

if has('gui_running')
    set guioptions-=T " no toolbar
    set guioptions-=m " no menu
    set guioptions-=r " no right scroll
    set guioptions-=L " no left scroll
endif

" Always show current position
set ruler

" How many tenths of a second to blink when matching brackets
set mat=2

" show a visual line under the cursor's current line
set cursorline

" disable folding
set nofoldenable

set guitablabel=%N/\ %t\ %M
