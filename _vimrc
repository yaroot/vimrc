source $HOME/.vim/vimrc
if !has('gui_running')
  set t_Co=256
endif

" if &diff
"   colo jellybeans
" endif
colo jellybeans

if has('gui_running')
  set guifont=tamsyn\ 14
  set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ 14
  colo twilight
endif

let g:CommandTFileScanner = "find"

