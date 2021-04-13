syntax on                               " Enables syntax highlighing

set wrap                                " Display long lines as just one line
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
set shiftround
set relativenumber
set cursorline                          " Enable highlighting of the current line
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set clipboard=unnamedplus               " Copy paste between vim and everything else
set nohlsearch
let &fcs='eob: '                         " Avoid trailing whitespace
set undofile
set undodir=~/.vim/undo
set cmdheight=1
set timeout timeoutlen=500 ttimeoutlen=100

" Tags
set autochdir
set tags+=./tags;
set hidden
set shortmess=aFc

" let escape leave insert mode
imap <ESC> <C-c>

augroup specify_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"' | let i=0 | while (i<strlen(regs)) | exec 'let @'.regs[i].'=""' | let i=i+1 | endwhile | unlet regs
let g:goyo_width=120
let g:python3_host_prog = "/usr/local/opt/python@3.9/libexec/bin/python"

" Enable Vue Development
let g:vim_vue_plugin_load_full_syntax = 1
autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1

" Neovide setup
set guifont=FiraCode\ Nerd\ Font\ Mono:h14:style=Medium,Regular

autocmd FileType text,markdown setlocal spell

" cmap w!! w !sudo tee %
