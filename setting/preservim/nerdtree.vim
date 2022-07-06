" 配置NERDTree
" 设置nerdtree 窗口大小
let g:NERDTreeWinSize = 25  
" 过滤文件，不显示以下文件
let NERDTreeIgnore = ['\.pyc$', '\.swp', '\.swo', '\.vscode', '__pycache__']
" 当仅nerdtree 窗口时自动关闭
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 打开nvim/vim 如果没有文件，则自动打开nerdtree
" autocmd vimenter * if !argc()|NERDTree|endif
" 正常情况下，nerdtree不会自动刷新，按r可以刷新
