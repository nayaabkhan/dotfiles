Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

let g:lightline                   = {}
let g:lightline.colorscheme       = 'iceberg'
let g:lightline.active            = {'left': [['mode', 'paste'], ['readonly', 'filename', 'modified']]}
let g:lightline.tabline           = {'left': [['buffers']], 'right': [[]]}
let g:lightline.component_expand  = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type    = {'buffers': 'tabsel'}

" force display of tabline
set showtabline=2

" no need to show the mode as lightline already does that
set noshowmode

let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#filename_modifier = ':t'
let g:lightline#bufferline#unicode_symbols = 1
