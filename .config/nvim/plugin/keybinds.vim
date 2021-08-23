inoremap jj <Esc>
" for navigating while splitting                                                                     
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-n> :NvimTreeToggle<CR>

nnoremap <C-c> :nohl<CR>

xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv

" better tabbing
vnoremap < <gv
vnoremap > >gv

" tab through buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <c-BS> :bd<CR>
" nvim-completion related settings
" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c


