if exists('g:fcitx_loaded') || !executable('fcitx-remote')
    finish
endif
let g:fcitx_loaded = 1
let g:fcitx_should_activate = 0

set ttimeoutlen=100

function Fcitx_Leave()
    let status = system('fcitx-remote')
    g:fcitx_should_activate = 0
    " echo status
    if status == 2
        let g:fcitx_should_activate = 1
        call system('fcitx-remote -c')
        " echo 'deactivate fcitx'
    endif
endfunction

function Fcitx_Enter()
    if g:fcitx_should_activate == 1
        call system('fcitx-remote -o')
        " echo 'activate fcitx'
    endif
endfunction

au InsertLeave * call Fcitx_Leave()
au InsertEnter * call Fcitx_Enter()
