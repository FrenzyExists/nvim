" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  " Status Line
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'KaraMCC/vim-streamline'

  " Navigation with Kitty
  Plug 'knubie/vim-kitty-navigator'

  " Better tabline
  Plug 'romgrk/barbar.nvim'

  " Grooooooovbox
  Plug 'gruvbox-community/gruvbox'
  Plug 'b4skyx/serenade'

  " My Own Plugins
  Plug 'atidyshirt/todo.vim'

  " Git
  Plug 'zivyangll/git-blame.vim'
  Plug 'tpope/vim-fugitive'

  " Visual
  Plug 'liuchengxu/vim-which-key'
  Plug 'kien/rainbow_parentheses.vim'
  Plug 'unblevable/quick-scope'
  Plug 'metakirby5/codi.vim'
  Plug 'kshenoy/vim-signature'
  Plug 'ntpeters/vim-better-whitespace'

  " Completion
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'preservim/nerdcommenter'
  Plug 'tpope/vim-surround'
  Plug 'dhruvasagar/vim-table-mode'

  " Debugging
  Plug 'puremourning/vimspector'

  " Telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'

  " Buffers
  Plug 'szw/vim-maximizer'
  Plug 'airblade/vim-rooter'
  Plug 'skywind3000/asynctasks.vim'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()
