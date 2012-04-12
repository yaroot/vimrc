
all: update submodule-update

update:
	git pull --rebase

submodule-update:
	git submodule sync
	git submodule update --init

bundle-update:
	git submodule foreach 'git checkout master; git pull --ff-only'

bundle-prune:
	git submodule foreach 'git prune; git remote prune origin'

bundle-clean:
	git submodule foreach 'git clean -f'

