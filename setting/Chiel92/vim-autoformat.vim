"*****************   vim-autoformat   **********************
let g:autoformat_verbosemode=0 "详细模式
let g:autoformat_autoindent = 0
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
let g:formatdef_hl_js='"js-beautify"'
let g:formatdef_hl_c='"clang-format -style=\"{BasedOnStyle: LLVM, UseTab: Never, IndentWidth: 4, PointerAlignment: Right, ColumnLimit: 150, SpacesBeforeTrailingComments: 1}\""' "指定格式化的方式, 使用配置参数
let g:formatters_c = ['hl_c']
let g:formatters_cpp = ['hl_c']
let g:formatters_json = ['hl_js']
let g:formatters_js = ['hl_js']
let g:formatdef_sqlformat = '"sqlformat --keywords upper -"'
let g:formatters_sql = ['sqlformat']

"保存时自动格式化指定文件类型代码
"au BufWrite *:Autoformat
" autocmd BufWrite *.sql,*.c,*.cpp,*.py,*.java,*.js:Autoformat "设置发生保存事件时执行格式化

