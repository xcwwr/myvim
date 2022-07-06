" ==========
" 基本配置
" ==========
set nu  " 显示绝对行号
" set rnu  " 显示相对行号
syntax on  " 语法高亮
set t_Co=256  " 避免vim 颜色配置与nvim不一致
filetype plugin on  " 设置为双字宽显示，否则无法显示特殊字符 
filetype plugin indent on  " 开启自动识别文件类型，根据文件类型加载不同的插件和缩进规则
set encoding=utf-8  " 通用的utf-8编码
set fenc=utf-8  " 编码
set ignorecase  " 忽略大小写
set tabstop=4  " TAB = 4 空格
set softtabstop=4
set shiftwidth=4
set expandtab  " Tab 键在不同编辑器缩进不一致时，自动将Tab转为空格
set cursorline  " 光标所在的行高亮
" set nowrap  " 不自动折行
set showmatch  " 自动高亮括号的另一半
set cc=80  " 标尺线
" set scrolloff=5  " 垂直滚动时，光标距离顶部、底部的行数
set hlsearch  " 搜索时，高亮匹配结果
set foldmethod=indent  " 代码折叠
set foldcolumn=0  " 设置折叠区域的宽度
setlocal foldlevel=1  " 设置折叠层数
set foldlevelstart=99  " 打开文件默认时不折叠代码
" set ruler  " 显示最后一行的状态
" set laststatus=2  " 两行状态行+一行命令行

" 关闭窗口时，关闭相应的缓冲区
" autocmd WinClosed * bd
