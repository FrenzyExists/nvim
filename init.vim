"    ____      _ __        _
"   /  _/___  (_) /__   __(_)___ ___
"   / // __ \/ / __/ | / / / __ `__ \
" _/ // / / / / /__| |/ / / / / / / /
"/___/_/ /_/_/\__(_)___/_/_/ /_/ /_/

" Settings
source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim

" Theme
source $HOME/.config/nvim/themes/theme.vim
source $HOME/.config/nvim/themes/syntax.vim
" Plugin Configuration
luafile $HOME/.config/nvim/keys/which-key.lua
luafile $HOME/.config/nvim/plug-config/lsp.lua
luafile $HOME/.config/nvim/plug-config/telescope.lua
" To slow on my mac to use treesitter
" luafile $HOME/.config/nvim/plug-config/treesitter.lua
source $HOME/.config/nvim/plug-config/asynctask.vim
source $HOME/.config/nvim/plug-config/vim-rooter.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
source $HOME/.config/nvim/plug-config/other-plugins.vim

if has('nvim-0.5')
  " LSP for java to run server
  augroup lsp
    au!
    au FileType java lua require('jdtls').start_or_attach({cmd = {'jdtls.sh'}, root_dir = require('jdtls.setup').find_root({'gradle.build', 'pom.xml'})})
  augroup end
endif
