call plug#begin()

Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'Yggdroot/indentLine'
Plug 'https://github.com/stephpy/vim-yaml.git'

call plug#end()

set paste
set nocompatible
set expandtab
set number
syntax on
colorscheme onedark
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '|'
let g:indentLine_setColors = 1
let g:indentLine_color_term = 239

au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/yaml.vim
