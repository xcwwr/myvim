" 配置vim-airline 标签栏插件
" 打开tabline功能，方便查看Buffer和切换
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'desertink'  " 主题

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = 'CL'
let g:airline_symbols.branch = 'BR'
" let g:airline_symbols.whitespace = '|'
let g:airline_symbols.maxlinenr = 'ML'
let g:airline_symbols.readonly = 'RO'

" let g:airline#extensions#keymap#enable = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
