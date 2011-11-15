
all: update updatesubmodule

update:
	git fetch origin
	git merge origin/master

updatesubmodule:
	git submodule sync
	git submodule update --init

bundleupdate:
	git submodule foreach 'git checkout master; git fetch origin; git merge origin/master --ff-only'

install:
	cp _vimrc $HOME/.vimrc


.PHONEY: all update updatesubmodule bundleupdate install
