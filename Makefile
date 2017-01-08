CMDT_PATH="plugged/command-t/ruby/command-t"

all: scripts

.PHONY: all

command-t:
	cd $(CMDT_PATH) && ruby extconf.rb && make clean && make

.PHONY: command-t

scripts:
	./update.sh

.PHONY: scripts

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

