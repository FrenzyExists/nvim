let g:user_emmet_install_global = 0
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_leader_key=','
autocmd FileType html,css,vue,javascript,coffee,typescript EmmetInstall
