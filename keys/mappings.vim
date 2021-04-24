" g Leader key
let mapleader=" "
" let localleader=" "
nnoremap <Space> <Nop>

" let escape leave insert mode
imap <ESC> <C-c>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Spellcheck last mistake
imap <c-s> <Esc>mo[sa<C-X>s<C-l><ESC>`oa

inoremap  <leader>kC :make program<CR>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" paste from last yank (ignore deletes)
nmap ,p "0p
nmap ,P "0P

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Markdown tables alignment
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

nnoremap <silent> <C-c> <Esc>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
