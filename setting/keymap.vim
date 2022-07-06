" 打开或关闭 nerdtree
" map nt :NERDTreeToggle<CR>  
nnoremap <silent> <F1> :NERDTreeToggle<CR>

" F3 打开/关闭 vista 显示函数
nnoremap <silent> <F3> :<C-u>Vista!!<CR>

" F4 切换头/源文件
nnoremap <silent> <F4> :<C-u>CocCommand clangd.switchSourceHeader<CR>

" 插件命令使用
" \cc, \cn   注释当前行
" \cu        取消注释
" \cs, n \cs 多行紧凑注释
" \ci, n \ci 多行注释翻转
" \ca        切换注释方式

" Alt+o 打开ranger
" nnoremap <silent> <M-o> :RnvimrToggle<CR>
" Alt+[/] 切换至下一个标签，减号切换至上一个标签
nnoremap <M-[> :<C-u>bp<CR>
nnoremap <M-]> :<C-u>bn<CR>
" Alt+b退出标签
nnoremap <M-b> :<C-u>bd<CR>
" Alt+num 快速切换标签
" nnoremap <M-1> :<C-u>1b<CR>
" nnoremap <M-2> :<C-u>2b<CR>
" nnoremap <M-3> :<C-u>3b<CR>
" nnoremap <M-4> :<C-u>4b<CR>
" nnoremap <M-5> :<C-u>5b<CR>
" nnoremap <M-6> :<C-u>6b<CR>
" nnoremap <M-7> :<C-u>7b<CR>
" nnoremap <M-8> :<C-u>8b<CR>
" nnoremap <M-9> :<C-u>9b<CR>

" gutentags 自动生成文件tags，用于函数跳转
" ctrl + ] 跳到函数定义位置
" ctrl + o 跳回

map tl :Tabularize  
" tabular 对齐
" tl -> :Tabularize
" tl /,/ 所有行按照,对齐
" n1, n2 :Tabularize /,/ n1到n2行按照,对齐

" autoformat 自动格式化代码
nnoremap <silent> fm :<C-u>Autoformat<CR>

" coc.clangd 
" 使用tab补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" 使用回车选中
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if CocAction('hasProvider', 'hover')
        call CocActionAsync('doHover')
    else
        call feedkeys('K', 'in')
    endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)"

augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder.
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
" nmap <leader>cj  <Plug>(coc-codelens-action)

" Use CTRL-S for selections ranges.
" " Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :silent call     CocAction('runCommand','editor.action.organizeImport')

" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" 复制粘贴系统剪贴板
" 在visual模式下，通过Ctrl + y 复制系统剪贴板 
vnoremap <C-y> "+y  
" 在normal 模式下，通过Ctrl + p 粘贴系统剪切板
nnoremap <C-p> "*p

nnoremap <silent> md :<C-u>MarkdownPreviewToggle<CR>

" vim 操作
" za：打开当前折叠
" zc：折叠光标所在位置
" zM：折叠全部
" zR：打开所有折叠
" ]]：下一个标题
" [[：上一个标题
" ][：下一个兄弟标题
" []：上一个兄弟标题
