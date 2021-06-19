" set Vim-specific sequences for RGB colors

if (has('termguicolors'))
 set termguicolors
endif

if &term == "screen-256color" || &term == "tmux-256color" || &term == "screen" || &term == "tmux"
    map <esc>[1;5D <C-Left>
    map! <esc>[1;5D <C-Left>
    map <esc>[1;5C <C-Right>
    map! <esc>[1;5C <C-Right>
endif

let g:gruvbox_italic = 1
let g:gruvbox_bold = 1
let g:gruvbox_italicize_comments = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_sign_column = 'dark0_hard'
let g:gruvbox_color_column = 'dark0_hard'
let g:gruvbox_termcolors = 256

" Gruvbox material
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_disable_italic_comment = 1

colorscheme gruvbox-material
set background=dark

if &term == "screen-256color"
   set t_Co=256
endif

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Treesitter - gruvbox-material changes
highlight! link TSConstBuiltin BlueItalic
highlight! link TSConstMacro BlueItalic
highlight! link TSConstant PurpleItalic
highlight! link TSConstructor Orange
highlight! link TSFuncMacro Blue
highlight! link TSFuncBuiltin Orange
highlight! link TSFunction Green
highlight! link TSMethod Green
