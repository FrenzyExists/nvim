local wk = require("which-key")
-- As an example, we will the following mappings:
--  1. <leader>fn new file
--  2. <leader>fr show recent files
--  2. <leader>ff find files

wk.register({
  e = { "<cmd>CocCommand explorer<cr>", "File explorer"},
  f = { "<cmd>Telescope find_files<cr>", "Find Files"},
  T = { "<cmd>Todo<cr>", "Todo"},
  h = { "<C-W>s", "Horizontal Split"},
  v = { "<C-W>v", "Vertical Split"},
  a = {
    name = "+Actions", -- optional group name
    m = { "<cmd>MarkdownPreview<cr>", "Markdown Preview" },
    M = { "<cmd>MarkdownPreviewStop<cr>", "Markdown Preview Stop" },
    s = { "<cmd>let @/ = ''<cr>", "Remove Highlight" },
    t = { "<cmd>TableModeToggle<cr>", "Table Mode" },
    w = { "<cmd>StripWhitespace<cr>", "Remove Whitespace" },
  },
  b = {
    name = "+Buffer", -- optional group name
    c = { "<cmd>call CloseAllBuffersButCurrent()<cr>", "Close Other Buffers" },
    d = { "<cmd>bd<cr>", "Delete Buffer" },
    n = { "<cmd>bnext<cr>", "Next Buffer" },
    p = { "<cmd>bprevious<cr>", "Previous Buffer" },
    m = { "<cmd>MaximizerToggle<cr>", "Maximise" },
  },
  d = {
    name = "+Debugger", -- optional group name
    d = { "<cmd>call vimspector#Launch()<cr>", "Launch vimspector" },
    e = { "<cmd>call vimspector#Reset()<cr>", "Exit vimspector" },
    l = { "<plug>VimspectorStepInto", "Step into" },
    j = { "<plug>VimspectorStepOver", "Step over" },
    k = { "<plug>VimspectorStepOut", "Step out" },
    h = { "<plug>VimspectorRestart", "Restart" },
    c = { "<plug>VimspectorContinue", "Continue" },
    b = { "<cmd>call vimspector#ToggleBreakpoint()<cr>", "Breakpoint" },
    cb = { "<cmd>call vimspector#ClearBreakpoints()<cr>", "Clear Breakpoints" },
    cbp = { "<plug>VimspectorToggleConditionalBreakpoint", "Conditional Breakpoint" },
  },
  g = {
    name = "+Git", -- optional group name
    b = { "<cmd>GitBlameToggle<cr>", "Blame" },
    c = { "<cmd>Telescope git_branches<cr>", "Checkout branch" },
    d = { "<cmd>Gdiffsplit<cr>", "Diff" },
    h = { "<cmd>diffget \\2<cr>", "Conflict get left" },
    l = { "<cmd>diffget \\2<cr>", "Conflict get right" },
    L = { "<cmd>Telescope git_commits<cr>", "Log" },
    s = { "<cmd>Git<cr>", "Status" },
  },
  k = {
    name = "+Task", -- optional group name
    c = { "<cmd>AsyncTask file-compile<cr>", "Compile file" },
    C = { "<cmd>make clean<cr>", "Make clean" },
    b = { "<cmd>AsyncTask project-build<cr>", "Build project" },
    m = { "<cmd>!pandoc % -o %<.pdf --from markdown --template eisvogel --listings --toc --resource-path %:p:h && open %<.pdf<cr>", "Build Markdown PDF" },
    r = { "<cmd>AsyncTask file-run<cr>", "Run file" },
    p = { "<cmd>AsyncTask project-run<cr>", "Run project" },
  },
  s = {
    name = "+Search", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "files" },
    h = { "<cmd>Telescope command_history<cr>", "history" },
    i = { "<cmd>Telescope media_files<cr>", "media" },
    m = { "<cmd>Telescope marks<cr>", "marks" },
    M = { "<cmd>Telescope man_pages<cr>", "man pages" },
    o = { "<cmd>Telescope vim_options<cr>", "vim options" },
    t = { "<cmd>Telescope live_grep<cr>", "text" },
    l = { "<cmd>Telescope git_commits<cr>", "commit log" },
    u = { "<cmd>Telescope colorscheme<cr>", "colorschemes" },
  },
  l = {
    name = "+LSP", -- optional group name
    a = {'<Plug>(coc-codeaction)'              , 'line action'},
    A = {'<Plug>(coc-codeaction-selected)'     , 'selected action'},
    b = {'<cmd>CocNext<cr>'                            , 'next action'},
    B = {'<cmd>CocPrev<cr>'                            , 'prev action'},
    c = {'<cmd>Codi<cr>'                               , 'enable Codi'},
    C = {'<cmd>Codi!<cr>'                              , 'disale Codi'},
    d = {'<cmd>call vimspector#Launch()<cr>'           , 'vimspector'},
    e = {'<cmd>CocList extensions<cr>'                 , 'extensions'},
    f = {'<Plug>(coc-format-selected)'         , 'format selected'},
    F = {'<Plug>(coc-format)'                  , 'format'},
    h = {'<Plug>(coc-float-hide)'              , 'hide'},
    i = {'<Plug>(coc-implementation)'          , 'implementation'},
    I = {'<cmd>CocList diagnostics<cr>'                , 'diagnostics'},
    j = {'<Plug>(coc-float-jump)'              , 'float jump'},
    l = {'<Plug>(coc-codelens-action)'         , 'code lens'},
    n = {'<Plug>(coc-diagnostic-next)'         , 'next diagnostic'},
    N = {'<Plug>(coc-diagnostic-next-error)'   , 'next error'},
    o = {'<Plug>(coc-openlink)'                , 'open link'},
    O = {'<cmd>CocList outline<cr>'                    , 'outline'},
    p = {'<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'},
    P = {'<Plug>(coc-diagnostic-prev-error)'   , 'prev error'},
    q = {'<Plug>(coc-fix-current)'             , 'quickfix'},
    r = {'<Plug>(coc-rename)'                  , 'rename'},
    s = {'<cmd>CocList -I symbols<cr>'                 , 'references'},
    S = {'<cmd>CocList snippets<cr>'                   , 'snippets'},
    t = {'<Plug>(coc-type-definition)'         , 'type definition'},
    u = {'<cmd>CocListResume<cr>'                      , 'resume list'},
    U = {'<cmd>CocUpdate<cr>'                          , 'update CoC'},
    z = {'<cmd>CocDisable<cr>'                         , 'disable CoC'},
    Z = {'<cmd>CocEnable<cr>'                          , 'enable CoC'},
  },
  L = {
    name = "+Leetcode", -- optional group name
    L = { "<cmd>LeetCodeList<cr>", "List questions" },
    t = { "<cmd>LeetCodeTest<cr>", "Test answer" },
    s = { "<cmd>LeetCodeSubmit<cr>", "Submit answer" },
    r = { "<cmd>LeetCodeReset<cr>", "Reset answer" },
    S = { "<cmd>LeetCodeSignIn<cr>", "Sign in" },
  },
  m = {
    name = "+Marks", -- optional group name
    c = { "<cmd>delm! | delm A-Z0-9a-z | SignatureRefresh<cr>", "Clear marks" },
    f = { "<cmd>SignatureListBufferMarks<cr>", "Local marks" },
    g = { "<cmd>SignatureListGlobalMarks<cr>", "Global marks" },
    v = { "<cmd>SignatureToggleSigns<cr>", "Visual marks" },
  },
  n = {
    name = "+Comment", -- optional group name
  },
  t = {
    name = "+Toggle", -- optional group name
    f = {'<cmd>terminal fzf<cr>'                               , 'fzf'},
    n = {'<cmd>terminal node<cr>'                              , 'node'},
    N = {'<cmd>terminal nnn<cr>'                               , 'nnn'},
    p = {'<cmd>terminal python<cr>'                            , 'python'},
    v = {'<cmd>TagbarToggle<cr>'                               , 'tag viewer'},
  },
  j = {
    name = "+Jump", -- optional group name
    D = {'<cmd>call CocActionAsync("jumpDeclaration", "edit")<cr>'       , 'jump declaration'},
    d = {'<cmd>call CocActionAsync("jumpDefinition", "edit")<cr>'        , 'Jump definition'},
    r = {'<cmd>call CocActionAsync("jumpReferences", "edit")<cr>'        , 'Jump references'},
  },
}, { prefix = "<leader>" })
