call plug#begin()

  Plug 'https://github.com/joshdick/onedark.vim.git'
  Plug 'Yggdroot/indentLine'
  Plug 'https://github.com/stephpy/vim-yaml.git'
  Plug 'scrooloose/nerdtree'
  Plug 'pearofducks/ansible-vim', { 'do': './UltiSnips/generate.sh' }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

call plug#end()

set nocompatible
set expandtab
set number
set autoindent
set paste
set cursorline
set ruler
set term=screen-256color
set ts=4 sts=4 sw=4
syntax on
colorscheme onedark

" Indent
let g:indentLine_char = '|'
let g:indentLine_setColors = 1
let g:indentLine_color_term = 242
highlight LineNr term=bold cterm=bold ctermfg=Green
au BufNewFile,BufRead *.yaml,*.yml so ~/.vim/plugged/vim-yaml/after/ftplugin/yaml.vim
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Themes
let g:airline_theme='onedark'

" NerdTree
let g:NERDTreeShowHidden = '1'
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-C> :NERDTreeFocus<CR>
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction


" Ansible
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1
