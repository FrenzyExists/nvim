" set Vim-specific sequences for RGB colors

if (has('termguicolors'))
  set termguicolors
endif


let g:gruvbox_italic = 1
let g:gruvbox_bold = 0
let g:gruvbox_italicize_comments = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'dark0_hard'
let g:gruvbox_color_column = 'dark0_hard'
let g:gruvbox_termcolors = 256

colorscheme gruvbox
set background=dark

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul
