" set Vim-specific sequences for RGB colors

if (has("termguicolors"))
    set termguicolors
endif

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

colorscheme onedark
set background=dark

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul
