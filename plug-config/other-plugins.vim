let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
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

" Leetcode plugin
let g:leetcode_browser = 'chrome'
let g:leetcode_solution_filetype = 'python3'
let g:leetcode_hide_paid_only = 1
let g:leetcode_hide_topics = 1
let g:leetcode_hide_companies = 1

" Markdown pandoc
augroup pandoc_syntax
  au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" disable line numbers for terminals in vim
autocmd TermOpen * setlocal nonumber norelativenumber

" Setting status line
hi MyGrey guifg=#d5c4a1 guibg=#504945
let g:tpipeline_statusline = '%#MyGrey# %t '
let g:tpipeline_preservebg = 1

" LSP objective-C setup
if executable('sourcekit-lsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'sourcekit-lsp',
        \ 'cmd': {server_info->['sourcekit-lsp']},
        \ 'whitelist': ['swift'],
        \ })
endif

augroup filetype
  au! BufRead,BufNewFile *.swift set ft=swift
augroup END

