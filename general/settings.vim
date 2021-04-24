syntax on                               " Enables syntax highlighing

set title
let &titlestring='%t - Vim'

set hidden
set autochdir
set wrap                                " Display long lines as just one line
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
set timeout timeoutlen=200 ttimeoutlen=100

filetype plugin indent on
