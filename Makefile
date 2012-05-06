
all: update

install: update vundle tmp-dirs

update:
	git pull --rebase
	@echo "Enter vim and run ':BundleInstall!' to install all vim-scripts"

vundle:
	@pushd bundle; if [ ! -d 'vundle' ]; then \
		git clone git://github.com/gmarik/vundle.git; \
		fi; popd;

tmp-dirs:
	mkdir -p tmp/{backup,swap,undo}

tarball:
	rm -f vimfiles.tar.gz
	tar zcf vimfiles.tar.gz --exclude='.git' --exclude='tmp/**/*' --exclude='tmp/*.*' *

dist-clean:
	rm -rf bundle/*

