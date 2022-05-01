# https://lottalinuxlinks.com/how-to-build-and-install-i3-gaps-on-debian/

sudo apt purge i3 -y
sudo apt install meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev

git clone https://github.com/jbenden/i3-gaps-rounded.git

cd i3-gaps-rounded
mkdir -p build
cd build
read
# wait for checking
meson --prefix /usr/local
ninja
sudo ninja install

sudo apt install -t bullseye-backports feh i3blocks i3lock i3status suckless-tools xorg -y
sudo apt install neofetch hsetroot flameshot lolcat -y

ln -s ~/.config/local/.xinitrc ~/

# ? alacritty
# https://github.com/barnumbirr/alacritty-debian
wget -L -O alacritty.deb https://github.com/barnumbirr/alacritty-debian/releases/download/v0.9.0-1/alacritty_0.9.0-1_amd64_debian_buster.deb
sudo apt install gdebi
sudo gdebi alacritty.deb