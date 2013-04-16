CMDT_PATH="bundle/Command-T/ruby/command-t/"

all: update bundleinstall

.PHONY: all

update:
	git pull --rebase
	test -e 'bundle/vundle' || git clone git://github.com/gmarik/vundle.git bundle/vundle
	mkdir -p tmp/{backup,swap,undo}

.PHONY: vundle

bundleinstall:
	vim +BundleInstall! +quitall

.PHONY: bundleinstall

command-t:
	cd $(CMDT_PATH) && ruby extconf.rb
	$(MAKE) -C $(CMDT_PATH) clean
	$(MAKE) -C $(CMDT_PATH)

.PHONY: command-t

script:
	./update.sh

tarball:
	rm -f vimfiles.tar.gz
	tar zcf vimfiles.tar.gz --exclude='.git' --exclude='tmp/**/*' --exclude='tmp/*.*' *

.PHONY: tarball

dist-clean:
	rm -rf bundle/*

.PHONY: dist-clean

gc:
	git gc
	for r in bundle/*; do \
		eval "pushd '$$r'"; \
		git gc; \
		popd > /dev/null; \
		done

.PHONY: gc

