" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  if exists('g:vscode')
    Plug 'ChristianChiarulli/vscode-easymotion'
    Plug 'machakann/vim-highlightedyank'
  else
    " Vue
    Plug 'storyn26383/vim-vue'
    " Status Line
    Plug 'glepnir/galaxyline.nvim'
    " Better tabline
    Plug 'romgrk/barbar.nvim'
    " Themes
    Plug 'sainnhe/gruvbox-material'
    " Plug 'dylanaraps/wal.vim'
    " Plug 'arcticicestudio/nord-vim'
    " Plug 'joshdick/onedark.vim'

    " Plugins
    " Plug 'easymotion/vim-easymotion'
    " Plug 'dart-lang/dart-vim-plugin'
    Plug 'dkarter/bullets.vim'
    " Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'
    " Plug '9mm/vim-closer'
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-rooter'
    " Plug 'Yggdroot/indentLine'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    " Plug 'ryanoasis/vim-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'voldikss/vim-floaterm'
    Plug 'mhinz/vim-startify'
    Plug 'preservim/tagbar'
    Plug 'liuchengxu/vim-which-key'
    " Plug 'metakirby5/codi.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'honza/vim-snippets'
    " Plug 'AndrewRadev/tagalong.vim'
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'ntpeters/vim-better-whitespace'
  endif

call plug#end()

" autocmd VimEnter *
  " \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  " \|   PlugInstall --sync | q
  " \| endif
