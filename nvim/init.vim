"" Load all plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'

" File-browser functionality
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" Syntax highlighting for most filetypes
Plug 'sheerun/vim-polyglot'

" Install the onedark-theme
Plug 'joshdick/onedark.vim'

" Adds a statusline and themes for the statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Session management simplification
Plug 'tpope/vim-obsession'

" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'

" Rust Language Client
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

"" Color/syntax highlighting settings
syntax on
colorscheme onedark

"" Vim-sneak settings
let g:sneak#label = 1

"" CHADtree settings
" Auto start CHADtree when opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'CHADopen' argv()[0] | wincmd p | ene | wincmd p | endif

"" Vim-airline configurations
" Disable mode-showing and let vim-airline take care of things
set noshowmode
" Set the airline theme
let g:airline_theme='bubblegum'

"" Rust configurations
autocmd BufReadPost *.rs setlocal filetype=rust

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

"" Vim general behaviour configs
" Splitting behaviour: open the new pane right/below
set splitright
set splitbelow

" Indentation sizes
" TODO use EditorConfig?
set ts=4
set shiftwidth=4
set ai sw=4
" Use spaces instead of tabs
set expandtab

"" Custom keybinds
" change the leader key to ";"
let mapleader=";"
