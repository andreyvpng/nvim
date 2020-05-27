if g:os == "windows"
  call plug#begin('~/AppData/Local/nvim/plugged')
else
  call plug#begin('~/.config/nvim/plugged')
endif

" file tree
Plug 'scrooloose/nerdtree'

" icons
Plug 'ryanoasis/vim-devicons'

" easy motion
Plug 'easymotion/vim-easymotion'

" fast search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" colors
"Plug 'chriskempson/base16-vim'
Plug 'dylanaraps/wal.vim'
Plug 'morhetz/gruvbox'

" vim start buffer
Plug 'mhinz/vim-startify'

" org-mode
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'

" calendar
Plug 'itchyny/calendar.vim'

" diary
Plug 'ryot4/diary.vim'

" emmet
Plug 'mattn/emmet-vim'

" git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" kotlin
Plug 'udalov/kotlin-vim'

" Other
Plug 'tpope/vim-surround'
Plug 'lyokha/vim-xkbswitch'

"
Plug 'camspiers/lens.vim'

Plug 'takac/vim-hardtime'

call plug#end()

" manage plugins
nnoremap <leader>pli :PlugInstall<cr>
nnoremap <leader>plc :PlugClean<cr>

for file in split(glob(Dot('modules/plugins/*.vim')), '\n')
    exec 'source' file
endfor
