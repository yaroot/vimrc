CMDT_PATH="bundle/Command-T/ruby/command-t/"

all: update vundle tmp_dir bundleinstall

install: update vundle tmp_dir

update:
	git pull --rebase

bundleinstall:
	vim +BundleInstall! +quitall

command-t:
	cd $(CMDT_PATH) && ruby extconf.rb
	$(MAKE) -C $(CMDT_PATH)

vundle:
	test -e 'bundle/vundle' || git clone git://github.com/gmarik/vundle.git bundle/vundle

tmp_dir:
	mkdir -p tmp/{backup,swap,undo}

tarball:
	rm -f vimfiles.tar.gz
	tar zcf vimfiles.tar.gz --exclude='.git' --exclude='tmp/**/*' --exclude='tmp/*.*' *

dist-clean:
	rm -rf bundle/*

gc:
	git gc
	for r in bundle/*; do \
		eval "pushd '$$r'"; \
		git gc; \
		popd > /dev/null; \
		done


.PHONY: all install update vundle tmp-dirs tarball dist-clean
