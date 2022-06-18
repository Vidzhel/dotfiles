USERNAME=$(shell whoami)
PROJECT_ROOT=$(shell pwd)

setup:
	sudo ln -s $(PROJECT_ROOT)/profile.main.sh /etc/profile.d/mine.sh
	ln -s $(PROJECT_ROOT)/.config/lazygit/ ~/.config/lazygit
	ln -s $(PROJECT_ROOT)/.config/lvim/ ~/.config/lvim
