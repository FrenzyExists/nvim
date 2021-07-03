" Basic Key Mappings
imap <C-h> <C-w>h
imap <C-j> <C-w>j
imap <C-k> <C-w>k
imap <C-l> <C-w>l

let mapleader=" "
nnoremap <Space> <Nop>

" let escape leave insert mode
imap <ESC> <C-c>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" Move selected line / block of text in visual mode
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

nnoremap <silent> <C-c> <Esc>
"
" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Terminal window navigation
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>

" File navigation
nnoremap <silent> gt <cmd>lua require('harpoon.term').gotoTerminal(1)<cr>
nnoremap <silent> ga <cmd>lua require('harpoon.mark').add_file()<CR>
nnoremap <silent> gl <cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>
nnoremap <silent> g1 <cmd>lua require('harpoon.ui').nav_file(1)<cr>
nnoremap <silent> g2 <cmd>lua require('harpoon.ui').nav_file(2)<cr>
nnoremap <silent> g3 <cmd>lua require('harpoon.ui').nav_file(3)<cr>
nnoremap <silent> g4 <cmd>lua require('harpoon.ui').nav_file(4)<cr>
