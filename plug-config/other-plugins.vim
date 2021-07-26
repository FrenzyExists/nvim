let g:vimspector_base_dir=expand( '$HOME/.vim/vimspector-config' )
let g:python3_host_prog = "/usr/local/opt/python@3.9/libexec/bin/python"

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

let g:table_mode_disable_mappings = 1

" disable line numbers for terminals in vim
autocmd TermOpen * setlocal nonumber norelativenumber

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
  au! BufRead,BufNewFile *.mm set ft=objc
augroup END

" Zenmode

lua << EOF
require("zen-mode").setup {
  window = {
    backdrop = 1, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    width = 0.8, -- width of the Zen window
    height = 0.75, -- height of the Zen window
    options = {
      signcolumn = "no", -- disable signcolumn
      number = false, -- disable number column
      relativenumber = false, -- disable relative numbers
      cursorline = false, -- disable cursorline
      list = true, -- enable/disable whitespace characters
    },
  },
  plugins = {
    options = {
      enabled = true,
      ruler = false, -- disables the ruler text in the cmd line area
      showcmd = false, -- disables the command in the last line of the screen
    },
    gitsigns = { enabled = false }, -- disables git signs
    tmux = { enabled = true }, -- disables the tmux statusline
    kitty = {
      enabled = false,
    },
  },
  -- callback where you can add custom code when the Zen window opens
  on_open = function(win)
    vim.cmd('Limelight')
  end,
  -- callback where you can add custom code when the Zen window closes
  on_close = function()
    vim.cmd('Limelight!')
  end,
}
EOF

" Refactoring
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true }, incremental_selection = { enable = true }, textobjects = { enable = true }}
