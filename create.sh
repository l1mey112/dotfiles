cd ~

mkdir tmp && cd tmp

sudo apt install i3 picom neofetch hsetroot rofi -y

# alacritty
sudo apt purge rustc -y
sudo apt autoremove -y
# remove outdated existing versions of rust
sudo apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3  -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.bashrc
rustup update stable
cargo install alacritty

sudo apt install gdebi-core -y
wget -O code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo gdebi code.deb -y

sudo apt install firefox-esr  -y

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

sudo apt-get install apt-file -y && sudo apt-file update
echo 'alias pkgfind="apt-file search"' >> ~/.bashrc
echo 'alias utar="tar -xvzf"' >> ~/.bashrc

git config --global user.email "liam12312390@gmail.com"
git config --global user.name "liaml"

source ~/.bashrc

# sudo apt install task-lxqt-desktop -y
# sudo apt install task-gnome-desktop -y