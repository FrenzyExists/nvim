let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
let g:goyo_width=120
let g:python3_host_prog = "/usr/local/opt/python@3.9/libexec/bin/python"

" Marks
let g:showmarks_auto_toggle = []
let g:showmarks_no_mappings = 1
let g:showmarks_hlline_lower = 1

" Tmux navigation in vim
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
