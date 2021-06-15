syntax on                               " Enables syntax highlighing
set nocompatible
set title
set nofoldenable
let &titlestring='%t - Vim'             " for kitty/vim keybinds to work, needs to remname to a common title
" set hidden
set nowrap                              " Display long lines as just one line
set number                              " Displays the current line number of col"
set buftype=
set pumheight=10                        " Makes popup menu smaller
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set expandtab
set smarttab
set autoindent                          " Good auto indent
set smartindent                         " Makes indenting smart
set relativenumber
set cursorline                          " Enable highlighting of the current line
set nobackup                            " This is recommended by coc
set noswapfile
set nowritebackup                       " This is recommended by coc
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set clipboard=unnamedplus               " Copy paste between vim and everything else
set nohlsearch
set undofile
set undodir=~/.vim/undo
set cmdheight=1
set noea                                " stop vim from equalising winows
set timeout timeoutlen=200 ttimeoutlen=100

" set guifont="FiraCode Nerd Font Mono:h16"

filetype plugin indent on
