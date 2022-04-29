cd ~

mkdir tmp && cd tmp

sudo apt install i3 picom neofetch hsetroot rofi

# alacritty
sudo apt install cargo cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.bashrc
rustup update stable
cargo install alacritty

sudo apt install gdebi-core
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -O code.deb
sudo gdebi code.deb

sudo apt install firefox-esr

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

sudo apt-get install apt-file && sudo apt-file update
echo 'alias pkgfind="apt-file search"' >> ~/.bashrc
echo 'alias utar="tar -xvzf"' >> ~/.bashrc

git config --global user.email "liam12312390@gmail.com"
git config --global user.name "liaml"