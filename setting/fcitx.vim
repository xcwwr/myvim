let g:input_toggle = 0
function! Fcitx2en()
    let s:input_status = system("fcitx-remote")
    if s:input_status == 2
        let g:input_toggle = 1
        let l:a = system("fcitx-remote -c")
    endif
endfunction

function! Fcitx2zh()
    let s:input_status = system("fcitx-remote")
    if s:input_status != 2 && g:input_toggle == 1
        let l:a = system("fcitx-remote -o")
        let g:input_toggle = 0
    endif
endfunction

" 设置延迟加载时间，避免和其他命令按键冲突
set timeoutlen=500
autocmd InsertLeave * call Fcitx2en()
autocmd InsertEnter * call Fcitx2zh()

