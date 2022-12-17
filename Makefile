USERNAME=$(shell whoami)
PROJECT_ROOT=$(shell pwd)

INSTALLATION_PATH=/usr/local/

setup:
	-sudo ln -s $(PROJECT_ROOT)/profile.main.sh /etc/profile.d/mine.sh
	-ln -s $(PROJECT_ROOT)/.config/lazygit/ ~/.config/lazygit
	-ln -s $(PROJECT_ROOT)/.config/lvim/ ~/.config/lvim
	-ln -s $(PROJECT_ROOT)/.gitconfig ~/.gitconfig
	-ln -s $(PROJECT_ROOT)/.gitconfig.personal ~/.gitconfig.personal

update-nvim:
	curl -Lso nvim.tar.gz https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
	tar xzvf nvim.tar.gz 
	rm nvim.tar.gz
	sudo rm -rf ${INSTALLATION_PATH}nvim/
	sudo mkdir ${INSTALLATION_PATH}nvim/
	sudo mv ./nvim-linux64/* ${INSTALLATION_PATH}nvim/

