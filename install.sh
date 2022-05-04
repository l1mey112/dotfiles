cd $(dirname "$BASH_SOURCE")

echo -e "\e[0;32m### INSTALLING ALL ###\e[0m\n"

echo -e "\e[0;35m### installing applications ###\e[0m"
if [ "$1" = "laptop" ]; then
    bash pkgs/install-pkgs.sh laptop
else
    bash pkgs/install-pkgs.sh
fi

echo -e "\e[0;35m### copying binaries/scripts ###\e[0m"
chmod +x bin/*
sudo cp bin/* /usr/local/bin/
echo -e "\e[0;35m### copying dotfiles ###\e[0m"
mkdir -p ~/.config/
cp dotconfig/* ~/.config/
echo -e "\e[0;35m### copying home dotfiles ###\e[0m"
cp home/.xinitrc ~/.config
cp home/.Xresources ~/.config
cp home/.xsettingsd ~/.config
cp home/.bash_aliases ~/.config

echo -e "\e[0;35m### finalising ###\e[0m"
sudo apt update && sudo apt upgrade -y
sudo apt-file update -y

echo -e "\e[0;32m### FINISHED ###\e[0m\n"
echo welcome to the new world.