-- Custom config settings
require("which-key").setup {
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  window = {
    border = "single",
  },
  show_help = false,
  triggers = {"<leader>", "<leader>v"}, -- only enable on leader key
}


local wk = require("which-key")

wk.register({
  e = { "<cmd>NvimTreeToggle<cr>", "File explorer"},
  f = { "<cmd>Telescope find_files<cr>", "Find files"},
  m = { "<cmd>MaximizerToggle<cr>", "Maximise" },
  z = { "<cmd>ZenMode<cr>", "Zen mode"},
  a = {
    name = "+Actions", -- optional group name
    m = { "<cmd>MarkdownPreview<cr>", "Markdown Preview" },
    M = { "<cmd>MarkdownPreviewStop<cr>", "Markdown Preview Stop" },
    s = { "<cmd>let @/ = ''<cr>", "Remove Highlight" },
    w = { "<cmd>StripWhitespace<cr>", "Remove Whitespace" },
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
  s = {
    name = "+Search", -- optional group name
    c = { "<cmd>lua require('telescope').extensions.asynctasks.all()<cr>", "build options" },
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
    name = "+LSP",
    a = {"<cmd>Lspsaga code_action<cr>", "Code Action"},
    A = {"<cmd>Lspsaga range_code_action<cr>", "Selected Action"},
    d = {"<cmd>Telescope lsp_document_diagnostics<cr>", "Document Diagnostics"},
    D = {"<cmd>Telescope lsp_workspace_diagnostics<cr>", "Workspace Diagnostics"},
    i = {"<cmd>LspInfo<cr>", "Info"},
    l = {"<cmd>Lspsaga lsp_finder<cr>", "LSP Finder"},
    p = {"<cmd>Lspsaga preview_definition<cr>", "Preview Definition"},
    q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
    r = {"<cmd>Lspsaga rename<cr>", "Rename"},
    t = {"<cmd>LspTypeDefinition<cr>", "Type Definition"},
    T = {"<cmd>Todo<cr>", "Todo"},
    x = {"<cmd>cclose<cr>", "Close Quickfix"},
    s = {"<cmd>Telescope lsp_document_symbols<cr>", "Document Symbols"},
    S = {"<cmd>Telescope lsp_workspace_symbols<cr>", "Workspace Symbols"}
  },
  t = {
    name = "+Toggle", -- optional group name
    t = {'<cmd>call OpenSmallTerminal()<cr>'                   , 'terminal'},
    n = {'<cmd>terminal node<cr>'                              , 'node'},
    p = {'<cmd>terminal python<cr>'                            , 'python'},
  },
},
{ prefix = "<leader>" })
