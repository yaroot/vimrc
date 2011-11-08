

update:
	git fetch origin
	git merge origin/master
	git submodule update --init


install:
	cp _vimrc $HOME/.vimrc


.PHONEY: update install
