let mapleader = " "
let s:script_path = expand('<sfile>:p:h')

" add a binding for reloading vim configs
nnoremap <Leader>vr :source $MYVIMRC<CR>

" install plug and plugins if not done yet
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

execute 'source ' . s:script_path . '/rcplugins/ctrlp.vim'
execute 'source ' . s:script_path . '/rcplugins/javascript.vim'
execute 'source ' . s:script_path . '/rcplugins/colors.vim'
execute 'source ' . s:script_path . '/rcplugins/undotree.vim'
execute 'source ' . s:script_path . '/rcplugins/lightline.vim'
execute 'source ' . s:script_path . '/rcplugins/gitgutter.vim'
execute 'source ' . s:script_path . '/rcplugins/coc.vim'
execute 'source ' . s:script_path . '/rcplugins/ripgrep.vim'
execute 'source ' . s:script_path . '/rcplugins/fugitive.vim'
execute 'source ' . s:script_path . '/rcplugins/blamer.vim'
execute 'source ' . s:script_path . '/rcplugins/devicons.vim'
execute 'source ' . s:script_path . '/rcplugins/sneak.vim'
execute 'source ' . s:script_path . '/rcplugins/startify.vim'
execute 'source ' . s:script_path . '/rcplugins/vista.vim'
execute 'source ' . s:script_path . '/rcplugins/surround.vim'

call plug#end()

execute 'source ' . s:script_path . '/rcfiles/settings.vim'
execute 'source ' . s:script_path . '/rcfiles/visual.vim'
"execute 'source ' . s:script_path . '/rcfiles/statusline.vim'


let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

