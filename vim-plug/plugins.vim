" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  if exists('g:vscode')
    Plug 'machakann/vim-highlightedyank'
  else
    " Status Line
    Plug 'glepnir/galaxyline.nvim'
    Plug 'kyazdani42/nvim-web-devicons' " lua
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " Themes
    Plug 'gruvbox-community/gruvbox'
    " Plugins
    Plug 'justinmk/vim-sneak'
    Plug 'simnalamburt/vim-mundo'
    Plug 'APZelos/blamer.nvim'
    Plug 'unblevable/quick-scope'
    Plug 'dkarter/bullets.vim'
    Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-rooter'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'metakirby5/codi.vim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'mhinz/vim-startify'
    Plug 'preservim/tagbar'
    Plug 'liuchengxu/vim-which-key'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'ntpeters/vim-better-whitespace'
  endif

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
