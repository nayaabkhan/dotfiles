" override the leader key to space
let mapleader = " "

nnoremap <leader>bd <cmd>bd<cr>

nnoremap <leader>ff <cmd>Telescope find_files hidden=true follow=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope file_browser hidden=true follow=true<cr>
nnoremap <leader>cs <cmd>Telescope colorscheme<cr>
nnoremap <leader>bf <cmd>Telescope buffers<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>

nnoremap <leader>ca <cmd>Lspsaga code_action<cr>
nnoremap <leader>mv <cmd>Lspsaga rename<cr>
nnoremap <leader>sd <cmd>Lspsaga hover_doc<cr>
