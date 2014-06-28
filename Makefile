install:
	git submodule init
	git submodule update
	rm -f ~/.vimrc
	ln -s `pwd`/vimrc ~/.vimrc

.PHONY: install
