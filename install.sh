read -r -p "☕ Are you sure? [y/N] " response
case "$response" in
[yY][eE][sS] | [yY])
	echo "Yes"
	;;
*)
	echo "No"
	exit 1
	;;
esac

echo "Installing M-VIM plug..."
printf "\n"

cp sources/.vimrc ~
cd ..
rm -rf M-VIM
echo "You can now run vim and enjoy M-VIM 🤠!"
