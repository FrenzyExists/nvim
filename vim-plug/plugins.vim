" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

  if exists('g:vscode')
    Plug 'asvetliakov/vim-easymotion'
  else
    Plug 'puremourning/vimspector'
    Plug 'junegunn/limelight.vim'
    Plug 'szw/vim-maximizer'
    Plug '9mm/vim-closer'
    Plug 'sainnhe/gruvbox-material'
    Plug '/Users/atidyshirt/Documents/Files/Repos/salvation-vim'
    Plug 'preservim/nerdcommenter'
    Plug 'tpope/vim-surround'
    Plug 'airblade/vim-rooter'
    Plug 'Yggdroot/indentLine'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'
    Plug 'ryanoasis/vim-devicons'
    Plug 'jiangmiao/auto-pairs'
    Plug 'alvan/vim-closetag'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'voldikss/vim-floaterm'
    Plug 'liuchengxu/vista.vim'
    Plug 'liuchengxu/vim-which-key'
    Plug 'metakirby5/codi.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'honza/vim-snippets'
    Plug 'AndrewRadev/tagalong.vim'
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'ntpeters/vim-better-whitespace'
  endif

call plug#end()

" Auto update plugins
" autocmd VimEnter *
  " \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  " \|   PlugInstall --sync | q
  " \| endif
