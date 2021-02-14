" Load all plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
call plug#end()

" Vim-sneak settings
let g:sneak#label = 1