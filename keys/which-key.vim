" Leader Key Maps

" TODO: this is a test

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" nerd-comment toggles
nnoremap <leader>nc :call NERDComment(0,"toggle")<cr>
vnoremap <leader>nc :call NERDComment(1,"toggle")<cr>
nnoremap <leader>nu :call NERDComment(0,"uncomment")<cr>
vnoremap <leader>nu :call NERDComment(1,"uncomment")<cr>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                                           , 'open init' ]
let g:which_key_map[';'] = [ ':Commands'                                                             , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                                                , 'balance windows' ]
let g:which_key_map['q'] = [ ':wqa!'                                                                 , 'save and quit' ]
let g:which_key_map['w'] = [ ':w!'                                                                   , 'write' ]
let g:which_key_map['m'] = [ ':MaximizerToggle'                                                      , 'maximize' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'                                                  , 'explorer' ]
let g:which_key_map['f'] = [ ':Telescope find_files'                                                 , 'search files' ]
let g:which_key_map['T'] = [ ":Todo"                                                                 , 'Todo list' ]
let g:which_key_map['h'] = [ '<C-W>s'                                                                , 'split below']
let g:which_key_map['u'] = [ ':MundoToggle'                                                          , 'undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                                                                , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                                                                  , 'zen' ]

" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'm' : [':MarkdownPreview'        , 'markdown preview'],
      \ 'M' : [':MarkdownPreviewStop'    , 'markdown preview stop'],
      \ 's' : [':let @/ = ""'            , 'remove search highlight'],
      \ 't' : [':TableModeToggle'        , 'toggle table mode'],
      \ 'w' : [':StripWhitespace'        , 'strip whitespace'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1'],
      \ '2' : ['b2'        , 'buffer 2'],
      \ 'd' : [':bd'       , 'delete-buffer'],
      \ 'c' : [':call CloseAllBuffersButCurrent()', 'close other buffers'],
      \ 'f' : ['bfirst'    , 'first-buffer'],
      \ 'h' : ['Startify'  , 'home-buffer'],
      \ 'l' : ['blast'     , 'last-buffer'],
      \ 'n' : ['bnext'     , 'next-buffer'],
      \ 'p' : ['bprevious' , 'previous-buffer'],
      \ '?' : ['Buffers'   , 'fzf-buffer'],
      \ }

let g:which_key_map.d = {
      \ 'name' : '+Debugger' ,
      \ 'd' : [':call vimspector#Launch()'                            , 'launch vimspector'],
      \ 'e' : [':call vimspector#Reset()'                             , 'exit vimspector'],
      \ 'rc' : ['<Plug>VimspectorRunToCursor'                         , 'run to cursor'],
      \ 'l' : ['<Plug>VimspectorStepInto'                             , 'step'],
      \ 'j' : ['<Plug>VimspectorStepOver'                             , 'step over'],
      \ 'k' : ['<Plug>VimspectorStepOut'                              , 'step Out'],
      \ 'h' : ['<Plug>VimspectorRestart'                              , 'restart'],
      \ 'c' : ['<Plug>VimspectorContinue'                             , 'continue'],
      \ 'b' : [':call vimspector#ToggleBreakpoint()'                  , 'breakpoint'],
      \ 'cb' : [':call vimspector#ClearBreakpoints()'                 , 'clear breakpoints'],
      \ 'cbp' : ['<Plug>VimspectorToggleConditionalBreakpoint'        , 'conditional breakpoint'],
      \ '?' : ['Buffers'   , 'fzf-buffer'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':Git add %'                        , 'add current'],
      \ 'b' : [':GitBlameToggle'                   , 'blame'],
      \ 'c' : [':Telescope git_branches'           , 'checkout branch'],
      \ 'C' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'g' : [':Telescope git_status'             , 'git status'],
      \ 'h' : [':diffget //2'                      , 'conflict get left'],
      \ 'l' : [':diffget //3'                      , 'conflict get right'],
      \ 'L' : [':Telescope git_commits'            , 'commit log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 's' : [':Gstatus'                          , 'status'],
      \ }

" k is for task
let g:which_key_map.k = {
      \ 'name' : '+task' ,
      \ 'c' : [':AsyncTask file-compile'      , 'compile file'],
      \ 'C' : [':make clean'                  , 'make clean'],
      \ 'b' : [':AsyncTask project-build'     , 'build project'],
      \ 'e' : [':AsyncTaskEdit'               , 'edit local tasks'],
      \ 'f' : [':AsyncTaskFzf'                , 'find task'],
      \ 'g' : [':AsyncTaskEdit!'              , 'edit global tasks'],
      \ 'h' : [':AsyncTaskList!'              , 'list hidden tasks'],
      \ 'l' : [':CocList tasks'               , 'list tasks'],
      \ 'm' : [':FloattermNew pandoc % -o %<.pdf', 'Build Markdown PDF'],
      \ 'M' : [':AsyncTaskMacro'              , 'macro help'],
      \ 'o' : [':copen'                       , 'open task view'],
      \ 'r' : [':AsyncTask file-run'          , 'run file'],
      \ 'p' : [':AsyncTask project-run'       , 'run project'],
      \ 'x' : [':cclose'                      , 'close task view'],
      \ }
      " \ 'l' : [':AsyncTaskList'               , 'list tasks'],

let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ 'f' : [':Telescope find_files'                  , 'files'],
      \ 'h' : [':Telescope command_history'             , 'history'],
      \ 'i' : [':Telescope media_files'                 , 'media files'],
      \ 'm' : [':Telescope marks'                       , 'marks'],
      \ 'M' : [':Telescope man_pages'                   , 'man_pages'],
      \ 'o' : [':Telescope vim_options'                 , 'vim_options'],
      \ 't' : [':Telescope live_grep'                   , 'text'],
      \ 'l' : [':Telescope git_commits'                 , 'commit log'],
      \ 'w' : [':Telescope file_browser'                , 'buf_fuz_find'],
      \ 'u' : [':Telescope colorscheme'                 , 'colorschemes'],
      \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ '.' : [':CocConfig'                          , 'config'],
      \ ';' : ['<Plug>(coc-refactor)'                , 'refactor'],
      \ 'a' : ['<Plug>(coc-codeaction)'              , 'line action'],
      \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'selected action'],
      \ 'b' : [':CocNext'                            , 'next action'],
      \ 'B' : [':CocPrev'                            , 'prev action'],
      \ 'c' : [':Codi'                               , 'enable Codi'],
      \ 'C' : [':Codi!'                              , 'disale Codi'],
      \ 'd' : [':call vimspector#Launch()'           , 'vimspector'],
      \ 'e' : [':CocList extensions'                 , 'extensions'],
      \ 'f' : ['<Plug>(coc-format-selected)'         , 'format selected'],
      \ 'F' : ['<Plug>(coc-format)'                  , 'format'],
      \ 'h' : ['<Plug>(coc-float-hide)'              , 'hide'],
      \ 'i' : ['<Plug>(coc-implementation)'          , 'implementation'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'j' : ['<Plug>(coc-float-jump)'              , 'float jump'],
      \ 'l' : ['<Plug>(coc-codelens-action)'         , 'code lens'],
      \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'o' : ['<Plug>(coc-openlink)'                , 'open link'],
      \ 'O' : [':CocList outline'                    , 'outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 's' : [':CocList -I symbols'                 , 'references'],
      \ 'S' : [':CocList snippets'                   , 'snippets'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'u' : [':CocListResume'                      , 'resume list'],
      \ 'U' : [':CocUpdate'                          , 'update CoC'],
      \ 'v' : [':TagbarToggle'                       , 'tag viewer'],
      \ 'z' : [':CocDisable'                         , 'disable CoC'],
      \ 'Z' : [':CocEnable'                          , 'enable CoC'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+toggle' ,
      \ ';' : [':FloatermNew --wintype=normal --height=12'      , 'console'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'm' : [':FloatermNew lazynpm'                           , 'npm'],
      \ 'n' : [':FloatermNew node'                              , 'node'],
      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
      \ 'p' : [':FloatermNew python'                            , 'python'],
      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
      \ 'v' : [':TagbarToggle'                                  , 'tag viewer'],
      \ }


 let g:which_key_map.n = {
      \ 'name' : '+comment',
      \}

 let g:which_key_map.j = {
      \ 'name' : '+jump' ,
      \ 'D' : [':call CocActionAsync("jumpDeclaration", "edit")'       , 'jump declaration'],
      \ 'd' : [':call CocActionAsync("jumpDefinition", "edit")'        , 'Jump definition'],
      \ 'r' : [':call CocActionAsync("jumpReferences", "edit")'        , 'Jump references'],
      \}

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
