
" set Vim-specific sequences for RGB colors

if (has('termguicolors'))
  set termguicolors
endif

colorscheme dracula

let g:airline_theme='dracula'

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

