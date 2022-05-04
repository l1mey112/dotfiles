clear
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
cp -r dotconfig/* ~/.config/ 
echo -e "\e[0;35m### copying home dotfiles ###\e[0m"
cp home/.xinitrc ~      # mv home/.xinitrc ~
cp home/.Xresources ~   # mv home/.Xresources ~
cp home/.xsettingsd ~   # mv home/.xsettingsd ~
cp home/.bash_aliases ~ # mv home/.bash_aliases ~

echo -e "\e[0;35m### finalising ###\e[0m"
sudo apt update && sudo apt upgrade -y
sudo apt-file update
git config --global user.email "liam12312390@gmail.com"
git config --global user.name "liaml"
sudo apt autoremove -y
sudo mkdir -p /root/.config/rclone/ # for copying later

echo -e "\e[0;32m### FINISHED ###\e[0m\n"
echo welcome to the new world.
read
startx