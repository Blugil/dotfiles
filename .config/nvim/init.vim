"  _       _ _         _           
" (_)     (_) |       (_)          
"  _ _ __  _| |___   ___ _ __ ___  
" | | '_ \| | __\ \ / / | '_ ` _ \ 
" | | | | | | |_ \ V /| | | | | | |
" |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
syntax on

" ------------------ Pluggins -------------------------
call plug#begin('~/.vim/plugged')
        
        " Tools
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " Color Schemes
        Plug 'morhetz/gruvbox'
        " Syntax
Plug 'ap/vim-css-color'
Plug 'tpope/vim-markdown'
call plug#end()

 colorscheme gruvbox

" I keep my terminal theme the same as my vim theme 
" this removes the background from vim theme for window
" transparency
hi Normal guibg=NONE ctermbg=NONE
" ------------------ Key Remapping --------------------
inoremap jj <Esc>

set backspace=indent,eol,start

" for navigating while splitting
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv

" ------------------ Settings -------------------------
set tabstop=4 softtabstop=4
set termguicolors
set expandtab
set noerrorbells
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set spelllang=en_us
set relativenumber
" set colorcolumn=120


" Highlighting
highlight ColorColumn ctermbg=0 guibg=lightgrey
