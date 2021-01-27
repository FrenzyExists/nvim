" set Vim-specific sequences for RGB colors
set termguicolors
colorscheme sayo

hi CursorLineNr term=bold ctermfg=2 gui=bold guifg=terminal_color_2

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul
