
download_plugins:
	git submodule update --init --recursive --jobs 8

install-command-t:
	cd pack/plugins/start/command-t && rake make

install-you-complete-me:
	cd pack/plugins/start/YouCompleteMe && python3 install.py --all

install: download_plugins install-command-t install-you-complete-me

