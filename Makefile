
download_plugins:
	git submodule update --init --recursive --jobs 8

install-fzf:
	brew install fzf

install-pynvim:
	pip3 install pynvim

install-ag:
	brew install the_silver_searcher

install: download_plugins install-pynvim install-fzf install-ag

