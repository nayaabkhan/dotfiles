if has('gui_running')
  set guifont=IBM_Plex_Mono:h14
endif

if (has("termguicolors"))
 set termguicolors
endif

autocmd ColorScheme * highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1
colorscheme substrata
let g:gruvbox_material_background = 'hard'
set background=dark

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
