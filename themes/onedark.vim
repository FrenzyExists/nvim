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

let g:onedark_termcolors=256

colorscheme onedark
set background=dark

" Setting status line for TMUX
hi MyGrey guifg=#abb2bf guibg=#21252b
let g:tpipeline_statusline = '%#MyGrey# %t '
let g:tpipeline_preservebg = 1

if &term == "screen-256color"
   set t_Co=256
endif

luafile $HOME/.config/nvim/themes/onedark-extended.lua
