install:
	git submodule init
	git submodule update
	rm ~/.vimrc
	ln -s `pwd`/vimrc ~/.vimrc

.PHONY: install
