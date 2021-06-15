augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

function! OpenFileInSplit()
  vsplit
  Telescope find_files
endfunction

function! OpenSmallTerminal()
  split
  term
  resize 10
endfunction

autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>
autocmd FileType qf nnoremap <buffer> <ESC> :cclose<CR>
