let g:nvim_tree_side = 'left'
let g:nvim_tree_width = 25
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache', '.ccls-cache', '__pycache__', '.vim', '.tasks', '.DS_Store' ]
let g:nvim_tree_gitignore = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_root_folder_modifier = ':e:r'
let g:nvim_tree_width_allow_resize  = 1
let g:nvim_tree_update_cwd = 1

let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }

let g:nvim_tree_special_files = [ 'README.md', 'Makefile', 'MAKEFILE' ] " List of filenames that gets highlighted with NvimTreeSpecialFile

let g:nvim_tree_icons = {
  \ 'default': "",
  \ 'symlink': "",
  \ 'git': {
  \   'unstaged': "✗",
  \   'staged': "✓",
  \   'unmerged': "",
  \   'renamed': "➜",
  \   'untracked': "★",
  \   'deleted': "",
  \   'ignored': "◌"
  \ },
  \ 'folder': {
  \  'default': "",
  \  'open': "",
  \  'symlink': "",
  \  'empty': "",
  \  'empty_open': "",
  \  'symlink_open': ""
  \ }
\ }

let g:nvim_tree_show_icons = {
  \ 'git': 0,
  \ 'folders': 1,
  \ 'files': 1,
\ }
