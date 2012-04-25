
all: update vundle tmp_dirs

update:
	git pull --rebase
	echo "Enter vim and run ':BundleInstall!' to install all submodules"

vundle:
	pushd bundle; if [ ! -d 'vundle' ]; then \
		git clone git://github.com/gmarik/vundle.git \
		popd

tmp_dirs:
	mkdir -p tmp/{backup,swap,undo}

tarball:
	tar zcf vimfiles.tar.gz --exclude='.git' --exclude='tmp/**/*' *

