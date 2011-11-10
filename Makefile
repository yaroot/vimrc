

update:
	git fetch origin
	git merge origin/master
	git submodule update --init

moduleupdate:
	git submodule foreach 'git checkout master; git fetch origin; git merge origin/master --ff-only'

install:
	cp _vimrc $HOME/.vimrc


.PHONEY: update install
