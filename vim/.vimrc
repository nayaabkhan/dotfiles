call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'jxnblk/vim-mdx-js'
  Plug 'tpope/vim-surround'
  Plug 'jparise/vim-graphql'
  Plug 'prettier/vim-prettier'
  Plug 'scrooloose/nerdtree'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'chemzqm/vim-jsx-improve'
call plug#end()

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Good defaults
set termguicolors
set nocompatible
set autoindent
set history=50
set noruler
set noshowcmd
set number relativenumber
set cursorline

" Tab expansion
set tabstop=2
set shiftwidth=2
set expandtab

" Enable colors
if &t_Co > 2 || has("gui_running")
   set hlsearch
   syntax on
   colorscheme palenight
   set background=dark
endif

filetype plugin indent on

set path+=**
set wildmenu

set guifont=Hasklig:h12
set guioptions=
set linespace=5

nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

