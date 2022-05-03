##https://github.com/barnumbirr/i3-gaps-debian/releases/tag/v4.20.1-1
#
#wget -nc https://github.com/barnumbirr/i3-gaps-debian/releases/download/v4.20.1-1/i3-gaps_4.20.1-1_amd64_bullseye.deb -O i3-gaps.deb
##  -nc, --no-clobber: skip downloads that would download to existing files.
#sudo gdebi i3-gaps.deb
#
#sudo apt install -t bullseye-backports feh i3blocks i3lock i3status suckless-tools xorg -y
#sudo apt install neofetch hsetroot flameshot lolcat mesa-utils -y
## mesa-utils for opengl glxinfo
#
## ln -s ~/.config/local/* ~/
#
## ? alacritty
## https://github.com/barnumbirr/alacritty-debian
#wget -nc -L -O alacritty.deb https://github.com/barnumbirr/alacritty-debian/releases/download/v0.9.0-1/alacritty_0.9.0-1_amd64_debian_buster.deb
#
#sudo apt install gdebi
#sudo gdebi alacritty.deb
#
## 4.19.1-non-git

sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson

git clone https://github.com/jonaburg/picom picom-fork
cd picom-fork
meson --prefix /usr/local --buildtype=release . build
cd build
ninja
sudo ninja -C build install