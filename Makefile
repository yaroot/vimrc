
all: update vundle tmp_dir bundleinstall

install: update vundle tmp_dir

update:
	git pull --rebase

bundleinstall:
	vim +BundleInstall! +quitall

vundle:
	test -e 'bundle/vundle' || git clone git://github.com/gmarik/vundle.git bundle/vundle

tmp_dir:
	mkdir -p tmp/{backup,swap,undo}

tarball:
	rm -f vimfiles.tar.gz
	tar zcf vimfiles.tar.gz --exclude='.git' --exclude='tmp/**/*' --exclude='tmp/*.*' *

dist-clean:
	rm -rf bundle/*

