

update:
	git fetch origin
	git merge origin/master
	git submodule update --init


install:
	rm -f $HOME/.vimrc
	touch $HOME/.vimrc
	echo 'source $HOME/.vim/vimrc' 		>> $HOME/.vimrc
	echo 'if !has(\'gui_running\')' 	>> $HOME/.vimrc
	echo '    set t_Co=256'  			>> $HOME/.vimrc
	echo '    colo ir_black' 			>> $HOME/.vimrc
	echo 'endif'						>> $HOME/.vimrc
	echo "Run this ==>  git clone git://github.com/yaroot/vimrc.git $HOME/.vim --reference $(git rev-parse --show-toplevel)"


.PHONEY: update install
