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

" Fixes a problem in neovim 0.5.0 (prerelease at least), where CursorHold
" -type events are not fired if a timer is used
Plug 'antoinemadec/FixCursorHold.nvim'

" Collection of common configurations for the Nvim LSP client
Plug 'neovim/nvim-lspconfig'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
Plug 'nvim-lua/completion-nvim'

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

"" CtrlP FuzzyFinder configs
" Invoke fuzzy finder with leader p
let g:ctrlp_map = '<leader>l'
let g:ctrlp_cmd = 'CtrlP'
" Figure out parent directory based on nearest .git folder
let g:ctrlp_working_path_mode = 'r'

"" Vim general behaviour configs
" Splitting behaviour: open the new pane right/below
set splitright
set splitbelow

set updatetime=300

" Autosaving: save buffer if no keypresses in 250ms
let g:cursorhold_updatetime = 250
autocmd CursorHold,CursorHoldI * update

" Indentation sizes, TODO use EditorConfig? 
set ts=4
set shiftwidth=4
set ai sw=4
" Use spaces instead of tabs
set expandtab

" Always show the sign column
set signcolumn=yes

" Set completeopt to have a better completion experience
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
set completeopt=menuone,noinsert,noselect

" Avoid showing extra messages when using completion
" set shortmess=A

"" Custom keybinds
" change the leader key to ";"
let mapleader=";"

" Use <Tab> as trigger key for autocompletion
imap <Tab> <Plug>(completion_smart_tab)
imap <S-Tab> <Plug>(completion_smart_s_tab)
" Disable <Enter> based autocomplete selection
" TODO Does notwrk?
inoremap <CR> <C-R>=pumvisible() ? "\<lt>C-E>\<lt>CR>" : "\<lt>CR>"<CR>

" Configure LSP
lua <<EOF

-- nvim_lsp object
local nvim_lsp = require'lspconfig'

-- function to attach completion when setting up lsp
local on_attach = function(client)
    require'completion'.on_attach(client)
end

-- Enable rust_analyzer
nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
EOF
