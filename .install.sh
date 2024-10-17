#!/bin/bash

# Use whiptail to ask for confirmation
if whiptail --title "Confirmation" --yesno "☕ Are you sure you want to install M-VIM?" 10 60; then
	echo "Yes"

	echo "Installing M-VIM plug..."
	printf "\n"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	# Copy vimrc and clean up M-VIM
	cp sources/.vimrc ~
	cd ..
	rm -rf M-VIM

	echo "You can now run vim and enjoy M-VIM 🤠!"
else
	echo "No"
	exit 1
fi
