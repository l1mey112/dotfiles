cd $(dirname "$BASH_SOURCE")

mkdir -p ~/.config/
cp -r dotconfig/* ~/.config/ 

cp home/.xinitrc ~      # mv home/.xinitrc ~
cp home/.Xresources ~   # mv home/.Xresources ~
cp home/.xsettingsd ~   # mv home/.xsettingsd ~
cp home/.bash_aliases ~ # mv home/.bash_aliases ~

source ~/.bashrc

chmod +x bin/*
sudo cp bin/* /usr/local/bin/
