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

" Setting status line for TMUX
hi MyGrey guifg=#222222 guibg=#a3a5aa
let g:tpipeline_statusline = '%#MyGrey# %t '
let g:tpipeline_preservebg = 1

colorscheme rosebox
set background=dark

if &term == "screen-256color"
   set t_Co=256
endif

luafile $HOME/.config/nvim/themes/rosebox-extended.lua
