# https://lottalinuxlinks.com/how-to-build-and-install-i3-gaps-on-debian/

sudo apt purge i3 -y
sudo apt install meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev
sudo apt install libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev
# https://github.com/Airblader/i3/wiki/Building-from-source/_compare/4e6fae65eac8aeda01efd8f7126cfecf16f0ac9f...cb4fa42f3a77e0470f699d9185ff5762d555cabb
git clone https://github.com/resloved/i3 i3-shape
cd i3-shape
mkdir -p build

autoreconf --force --install
cd build
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install

sudo apt install -t bullseye-backports feh i3blocks i3lock i3status suckless-tools xorg -y
sudo apt install neofetch hsetroot flameshot lolcat mesa-utils -y
# mesa-utils for opengl glxinfo