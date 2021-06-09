" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Status Line
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'KaraMCC/vim-streamline'

  " Navigation with Kitty
  Plug 'christoomey/vim-tmux-navigator'

  " Leetcode
  Plug 'ianding1/leetcode.vim'

  " Better tabline
  Plug 'romgrk/barbar.nvim'

  " Grooooooovbox and other themes
  Plug 'gruvbox-community/gruvbox'
  Plug 'sainnhe/gruvbox-material'

  " My Own Plugins
  Plug 'atidyshirt/todo.vim'

  " Git
  Plug 'f-person/git-blame.nvim'
  Plug 'tpope/vim-fugitive'

  " Visual
  Plug 'folke/which-key.nvim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'unblevable/quick-scope'
  Plug 'metakirby5/codi.vim'
  Plug 'kshenoy/vim-signature'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'kevinhwang91/nvim-bqf' " Quickfix previews

  " Completion
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'tpope/vim-surround'
  Plug 'dhruvasagar/vim-table-mode'
  Plug 'tpope/vim-commentary'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  " this one for java
  Plug 'mfussenegger/nvim-jdtls'

  " Debugging
  Plug 'puremourning/vimspector'

  " Telescope + File tree
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-tree.lua'

  " Buffers
  Plug 'szw/vim-maximizer'
  Plug 'airblade/vim-rooter'
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
