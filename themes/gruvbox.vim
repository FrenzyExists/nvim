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
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_termcolors = 256

" Setting status line for TMUX
hi MyGrey guifg=#d5c4a1 guibg=#2b2b2b
let g:tpipeline_statusline = '%#MyGrey# %t '
let g:tpipeline_preservebg = 1

colorscheme gruvbox
set background=dark

if &term == "screen-256color"
   set t_Co=256
endif

luafile $HOME/.config/nvim/themes/gruvbox-extended.lua
