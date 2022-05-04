cd $(dirname "$BASH_SOURCE")

echo -e "\e[0;31m### github cli ###\e[0m"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

echo -e "\e[0;31m### i3-gaps ###\e[0m"
sudo apt install -t bullseye-backports i3blocks i3lock i3status suckless-tools -y
#https://github.com/barnumbirr/i3-gaps-debian
wget -L -nc https://github.com/barnumbirr/i3-gaps-debian/releases/download/v4.20.1-1/i3-gaps_4.20.1-1_amd64_bullseye.deb \
    -O /tmp/i3-gaps.deb ;
sudo gdebi /tmp/i3-gaps.deb

echo -e "\e[0;31m### alacritty ###\e[0m"
wget -nc -L https://github.com/barnumbirr/alacritty-debian/releases/download/v0.9.0-1/alacritty_0.9.0-1_amd64_debian_buster.deb \
    -O /tmp/alacritty.deb ;
sudo gdebi /tmp/alacritty.deb

echo -e "\e[0;31m### picom build ###\e[0m"
sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev meson
cd /tmp/
git clone https://github.com/jonaburg/picom picom-fork
cd picom-fork
meson --prefix /usr/local --buildtype=release . build
cd build
ninja
sudo ninja install