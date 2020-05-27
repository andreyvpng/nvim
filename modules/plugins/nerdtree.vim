noremap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
let NERDTreeStatusline="%{matchstr(getline('.'), '\\s\\zs\\w\\(.*\\)')}"
let NERDTreeWinPos='left'
let NERDTreeWinSize=28
let NERDTreeMinimalUI=1
let NERDTreeDirArrowExpandable='+'
let NERDTreeDirArrowCollapsible='-'
let NERDTreeIgnore=['__pycache__', '.idea', '.git', '.stfolder']
