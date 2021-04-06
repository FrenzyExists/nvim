syntax on                           " Enables syntax highlighing
set nowrap                              " Display long lines as just one line
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
set number                              " Line numbers
set relativenumber
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set signcolumn=yes                      " Always show the signcolumn, otherwise it would shift the text each time
set updatetime=300                      " Faster completion
set timeoutlen=300                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set nohlsearch
let &fcs='eob: '                         " Avoid trailing whitespace
set undofile
set undodir=~/.vim/undo

" Status line -- Off
" set laststatus=0
" set statusline+=%F "get this filename to bugger off
set cmdheight=1

" Tags
set autochdir
set tags+=./tags;
set hidden
set shortmess=aFc

filetype plugin indent on

" augroup numbertoggle
  " autocmd!
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END

" let escape leave insert mode
imap <ESC> <C-c>

augroup specify_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

autocmd! User GoyoEnter Limelight | set norelativenumber
autocmd! User GoyoLeave Limelight! | set relativenumber

let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"' | let i=0 | while (i<strlen(regs)) | exec 'let @'.regs[i].'=""' | let i=i+1 | endwhile | unlet regs
let g:goyo_width=120


" inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" function! s:align()
  " let p = '^\s*|\s.*\s|\s*$'
  " if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    " let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    " let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    " Tabularize/|/l1
    " normal! 0
    " call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  " endif
" endfunction

" Set up python for vimR (Mac GUI)
let g:python3_host_prog = "/usr/local/opt/python@3.9/libexec/bin/python"
let g:vim_vue_plugin_load_full_syntax = 1
autocmd FileType vue syntax sync fromstart
let g:vue_disable_pre_processors=1

autocmd FileType text,markdown setlocal spell

" set mmp=1300
" set autochdir                           " Your working directory will always be the same as your working directory
" set foldcolumn=2                        " Folding abilities

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

highlight EndOfBuffer ctermfg=None

" You can't stop me
cmap w!! w !sudo tee %
