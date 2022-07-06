" ==========
" 插件安装 
" ==========
call plug#begin('~/.vim/plugged')
" tab键补全功能插件
"Plug 'ervandew/supertab'

" Coc 智能补全插件引擎
Plug 'neoclide/coc.nvim',{'branch': 'release'}

" vim-airline 标签栏插件
Plug 'Vim-airline/vim-airline'

" vim-airline 标签栏插件的主题插件
Plug 'Vim-airline/vim-airline-themes'

" ranger 文件浏览器
Plug 'kevinhwang91/rnvimr'

" vim-startify 插件
Plug 'mhinz/vim-startify'

" vim-snazzy 主题插件 关闭中
Plug 'connorholyday/vim-snazzy'

" vim-monokai 主题插件 使用中
Plug 'crusoexia/vim-monokai'

" indentLine 可视化缩进
Plug 'Yggdroot/indentLine'

" rainbow 彩虹括号插件
Plug 'luochen1990/rainbow'

" 树形文件浏览
Plug 'preservim/nerdtree'

" nerdcommenter 快速注释/取消注释多行代码
Plug 'preservim/nerdcommenter'

" visia 函数显示
Plug 'liuchengxu/vista.vim'

" vim-gutentags 自动异步生成tags
Plug 'ludovicchabant/vim-gutentags'

" autoformat 自动格式化 
Plug 'Chiel92/vim-autoformat'

" auto-pairs 自动补全匹配符号
Plug 'jiangmiao/auto-pairs'

" tabular 快速按照给定的分隔符号完成指定范围内的对齐操作
Plug 'godlygeek/tabular'

" 配合snippets 的代码片段
Plug 'honza/vim-snippets'

" markdown 预览插件
Plug 'iamcco/markdown-preview.nvim' 

" markdown 语法高亮
Plug 'preservim/vim-markdown'

" 内置终端的快捷键
Plug 'skywind3000/vim-terminal-help'
call plug#end()
