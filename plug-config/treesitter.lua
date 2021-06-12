require'nvim-treesitter.configs'.setup {
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
  },
  -- context_commentstring = {
  --   enable = true,
  --   config = {
  --     css = '// %s'
  --   }
  -- },
  highlight = {
    enable = true,
  },
  indent = {enable = {"javascriptreact"}},
  -- autotag = {enable = true},
}
