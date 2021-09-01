call plug#begin(stdpath('data') . '/plugged')

" Fuzzy Finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Language Server Protocol
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Colorschemes
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'

" Icons used in status lines, fuzzy finders, etc.
Plug 'kyazdani42/nvim-web-devicons'

" Status line
Plug 'hoob3rt/lualine.nvim'

" Syntax stuff
Plug 'dag/vim-fish'

call plug#end()

