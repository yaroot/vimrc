source $HOME/.vim/vimrc
if !has('gui_running')
  set t_Co=256
endif

if &diff
  colo jellybeans
else
  colo tir_black
endif
