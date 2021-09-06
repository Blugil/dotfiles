let g:tex_flavor='latex'
let g:vimtex_compiler_method = 'tectonic'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

autocmd FileType tex nmap <buffer> <C-T> :!latexmk -pvc -pdf %<CR>

let g:livepreview_previewer = 'skim'

let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_view_general_options_latexmk = '-r 1'



