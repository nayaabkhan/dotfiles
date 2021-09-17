runtime ./plug.vim
runtime ./keybinds.vim
runtime ./highlights.vim
runtime ./autocmd.vim
runtime ./globals.vim
lua require("configs")

set number relativenumber
set title

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent

set termguicolors
colorscheme gruvbox-material
"highlight Normal ctermbg=NONE guibg=NONE
"set background=dark

set nohlsearch
set ignorecase
set smartcase

set noerrorbells

set nobackup
set noswapfile
set scrolloff=8

" hidden characters
set list
set listchars=tab:\ ,space:·
