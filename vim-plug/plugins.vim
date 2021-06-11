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

  " alternative to tabline
  Plug 'ThePrimeagen/harpoon'

  " Grooooooovbox and other themes
  Plug 'gruvbox-community/gruvbox'
  " Plug 'sainnhe/gruvbox-material'

  " Language specific highlighting
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'mfussenegger/nvim-jdtls'
  Plug 'mhartington/nvim-typescript'
  " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " This to replace three above plugins in future

  " My Own Plugins
  Plug 'atidyshirt/todo.vim'

  " Git
  Plug 'f-person/git-blame.nvim'
  Plug 'tpope/vim-fugitive'

  " Visual
  Plug 'folke/which-key.nvim'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'unblevable/quick-scope'
  Plug 'kshenoy/vim-signature'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'kevinhwang91/nvim-bqf'

  " Completion
  Plug 'neovim/nvim-lspconfig'
  Plug 'kabouzeid/nvim-lspinstall'
  Plug 'hrsh7th/nvim-compe'
  Plug 'tpope/vim-surround'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'tpope/vim-commentary'
  Plug 'dhruvasagar/vim-table-mode'

  " Debugging and compiling
  Plug 'puremourning/vimspector'
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " Telescope + File tree
  Plug 'airblade/vim-rooter'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'kyazdani42/nvim-tree.lua'

  " Buffers
  Plug 'szw/vim-maximizer'

call plug#end()
