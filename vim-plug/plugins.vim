" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
" Incons
Plug 'kyazdani42/nvim-web-devicons'

" Navigation and Intergration with Tmux
Plug 'vimpostor/vim-tpipeline'
Plug 'christoomey/vim-tmux-navigator'

" Prime's elite plugins
Plug 'ThePrimeagen/harpoon'
Plug 'ThePrimeagen/refactoring.nvim'

" Themes
Plug 'atidyshirt/gruvbox-material-community'
Plug 'atidyshirt/rosebox.nvim'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " This to replace three above plugins in future
Plug 'nvim-treesitter/playground'
Plug 'SolaWing/vim-objc-syntax'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Git
Plug 'f-person/git-blame.nvim'
Plug 'tpope/vim-fugitive'

" Visual
Plug 'folke/which-key.nvim'
Plug 'unblevable/quick-scope'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kevinhwang91/nvim-bqf'
Plug 'folke/zen-mode.nvim'
Plug 'junegunn/limelight.vim'
Plug 'onsails/lspkind-nvim'
Plug 'Chiel92/vim-autoformat'
Plug 'p00f/nvim-ts-rainbow'

" Completion
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'tpope/vim-commentary'

" Extended vim - these thing should be default
Plug 'tpope/vim-surround'
Plug 'svermeulen/vim-subversive'
Plug 'godlygeek/tabular'

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'
Plug 'cohama/lexima.vim'

" Debugging and compiling
Plug 'puremourning/vimspector'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'

" Telescope + File tree
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'GustavoKatel/telescope-asynctasks.nvim'
Plug 'kyazdani42/nvim-tree.lua'

" Quickfix Lists
Plug 'folke/trouble.nvim'
Plug 'folke/todo-comments.nvim'

" Buffers
Plug 'szw/vim-maximizer'

call plug#end()
