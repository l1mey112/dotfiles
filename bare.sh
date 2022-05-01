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

sudo apt install -t bullseye-backports feh i3blocks i3lock i3status sakura suckless-tools xorg -y
sudo apt install neofetch hsetroot flameshot -y

ln -s ~/.config/local/.xinitrc ~/