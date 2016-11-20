CMDT_PATH="dein/repos/github.com/wincent/command-t/ruby/command-t"
VIMPROC_PATH="bundle/vimproc.vim/"

all: update-bundle update-scripts

.PHONY: all

update-bundle:
	# git pull --rebase
	# test -e 'bundle/neobundle.vim' || git clone git://github.com/Shougo/neobundle.vim.git bundle/neobundle.vim
	mkdir -p dein/repos/github.com/Shougo
	test -e 'dein/repos/github.com/Shougo/dein.vim' || git clone https://github.com/Shougo/dein.vim dein/repos/github.com/Shougo/dein.vim
	mkdir -p tmp/{backup,swap,undo}

.PHONY: update-bundle

command-t:
	cd $(CMDT_PATH) && ruby extconf.rb
	$(MAKE) -C $(CMDT_PATH) clean
	$(MAKE) -C $(CMDT_PATH)

.PHONY: command-t

vimproc:
	$(MAKE) -C $(VIMPROC_PATH)

.PHONY: vimproc

update-scripts:
	./update.sh

.PHONY: update-scripts

tarball:
	rm -f vimfiles.tar.gz
	tar zcf vimfiles.tar.gz --exclude='.git' --exclude='tmp/**/*' --exclude='tmp/*.*' *

.PHONY: tarball

gc:
	git gc
	for r in bundle/*; do \
		eval "pushd '$$r'"; \
		git gc --auto; \
		git clean -xdf; \
		popd > /dev/null; \
		done

.PHONY: gc

