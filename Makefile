CMDT_PATH="bundle/Command-T/ruby/command-t/"

all: update

.PHONY: all

update:
	# git pull --rebase
	test -e 'bundle/neobundle.vim' || git clone git://github.com/Shougo/neobundle.vim.git bundle/neobundle.vim
	mkdir -p tmp/{backup,swap,undo}

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

