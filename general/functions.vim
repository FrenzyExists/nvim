augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
augroup END

function! OpenSmallTerminal()
  split
  term
  resize 8
  wincmd J
endfunction

autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>
autocmd FileType qf nnoremap <buffer> <ESC> :cclose<CR>
