set rtp+=/Users/atidyshirt/.config/nvim/soil

if (has('termguicolors'))
 set termguicolors
endif

if &term == "screen-256color" || &term == "tmux-256color" || &term == "screen" || &term == "tmux"
    map <esc>[1;5D <C-Left>
    map! <esc>[1;5D <C-Left>
    map <esc>[1;5C <C-Right>
    map! <esc>[1;5C <C-Right>
endif

colorscheme soil
set background=dark

if &term == "screen-256color"
   set t_Co=256
endif
