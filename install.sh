read -r -p "Are you sure? [y/N] " response
case "$response" in
[yY][eE][sS] | [yY])
	echo "Yes"
	;;
*)
	echo "No"
	exit 1
	;;
esac

echo "Installing VIM plug..."
printf "\n"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp sources/.vimrc ~
cd ..
rm -rf M-VIM
echo "You can now run vim and enjoy M-VIM 🤠!"
